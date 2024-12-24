from flask import Flask, Response, jsonify, request
from flask_sqlalchemy import SQLAlchemy
from flask_restful import Resource, Api, reqparse, fields, marshal_with, abort
from sqlalchemy import PrimaryKeyConstraint, and_, or_, case, func
from sqlalchemy.sql import expression
from flask_cors import CORS, cross_origin
from flask_jwt_extended import JWTManager, create_access_token, create_refresh_token, jwt_required, get_jwt_identity
from datetime import datetime, timedelta, timezone
from dotenv import load_dotenv
import os
import requests

load_dotenv()
db_password = os.getenv("DB_PASSWORD")
jwt_key = os.getenv("JWT_KEY")

app = Flask(__name__)
app.config["JWT_SECRET_KEY"] = jwt_key
jwt = JWTManager(app)
CORS(app)
app.config['SQLALCHEMY_DATABASE_URI'] = f'postgresql://postgres:{db_password}@localhost:5432/infinity_nikki_items'
db = SQLAlchemy(app)
api = Api(app)

class ItemDetails(db.Model):
    __tablename__ = 'item_details'
    Name = db.Column(db.String(255), primary_key=True)
    Rarity = db.Column(db.Integer, nullable=True)
    Slot = db.Column(db.String(255), nullable=True)
    Outfit = db.Column(db.String(255), nullable=True)
    Labels = db.Column(db.String(255), nullable=True)
    Source = db.Column(db.String(255), nullable=True)
    Style = db.Column(db.String(255), nullable=True)
    Banner = db.Column(db.String(255), nullable=True)

    levels = db.relationship('LevelDetails', backref='item', lazy=True)

class LevelDetails(db.Model):
    __tablename__ = 'level_details'
    Name = db.Column(db.String(255), db.ForeignKey('item_details.Name'), nullable=False)
    Level = db.Column(db.Integer, nullable=False)
    Rarity = db.Column(db.Integer, nullable=True)
    Slot = db.Column(db.String(255), nullable=True)
    Elegant = db.Column(db.Integer, nullable=True)
    Fresh = db.Column(db.Integer, nullable=True)
    Sweet = db.Column(db.Integer, nullable=True)
    Sexy = db.Column(db.Integer, nullable=True)
    Cool = db.Column(db.Integer, nullable=True)
    Blings = db.Column(db.Integer, nullable=True)
    Threads = db.Column(db.Integer, nullable=True)
    Bubbles = db.Column(db.Integer, nullable=True)
    Style = db.Column(db.String(255), nullable=True)

    __table_args__ = (
        PrimaryKeyConstraint('Name', 'Level'),
    )

class UserDetails(db.Model):
    __tablename__ = 'users'
    id = db.Column(db.String(255), primary_key=True)
    username = db.Column(db.String(255), nullable=False)
    access_token = db.Column(db.String(255), nullable=False)
    refresh_token = db.Column(db.String(255), nullable=False)
    expires_at = db.Column(db.DateTime(timezone=True), nullable=False)
    avatar = db.Column(db.String(255), nullable=False)

itemFields = {
    "Name": fields.String,
    "Rarity": fields.Integer,
    "Slot": fields.String,
    "Outfit": fields.String,
    "Labels": fields.String,
    "Source": fields.String,
    "Style": fields.String,
    "Banner": fields.String,
}

lvlFields = {
    "Name": fields.String,
    "Level": fields.Integer,
    "Rarity": fields.Integer,
    "Slot": fields.String,
    "Elegant": fields.Integer,
    "Fresh": fields.Integer,
    "Sweet": fields.Integer,
    "Sexy": fields.Integer,
    "Cool": fields.Integer,
    "Blings": fields.Integer,
    "Threads": fields.Integer,
    "Bubbles": fields.Integer,
    "Style": fields.String,
}

userFields = {
    "id": fields.String,
    "username": fields.String,
    "access_token": fields.String,
    "refresh_token": fields.String,
    "expires_at": fields.DateTime,
    "avatar": fields.String
}

class Items(Resource):
    @marshal_with(itemFields)
    def get(self):
        rarity = request.args.getlist('rarity')
        slot = request.args.getlist('slot')
        label = request.args.getlist('label')
        style = request.args.getlist('style')
        source = request.args.getlist('source')
        styleSort = request.args.get('style-sort')
        sortOrder = request.args.get('sort-order')

        query = ItemDetails.query

        always_avail = {"designer": "A unique creation made by an independent designer.",
                        "boutique": "A classic clothing piece from Marques Boutique.",
                        "dew": "A gift from the Cadenceborn to those who offer the Dew of Inspiration.",
                        "heart": "Insights of the Heart of Infinity.",
                        "treasure": "Rare treasures scattered in chests found all around the world.",
                        "esseling_treasure": "Treasure guarded by Esselings.",
                        "main": "A reward from an adventure.",
                        "quest": "World travel mementos.",
                        "journey_anecdote": "A piece of journey anecdote.",
                        "styling_challenge": "Proof of styling prowess.",
                        "rng": "An unexpected surprise from the Surprise-O-Matic.",
                        "starting": "One of the initial items acquired upon arrival in Miraland.",
                        "pre_reg": "Pre-Reg Milestone Outfit"}
        always_avail_vals = list(always_avail.values())
        limited_time = ["Croaker's Whisper", "Bubbling Affections", "Distant Sea", "In Shop"]
        lim_reso = "Limited-Time Resonance"
        premium = "Pear-Pal premium item highly recommended by the Stylist's Guild."
        
        source_map = {
            'Independent Designer Store': [ItemDetails.Source == always_avail["designer"]],
            'Marques Boutique': [ItemDetails.Source == always_avail["boutique"]],
            'Dews of Inspiration': [ItemDetails.Source == always_avail["dew"]],
            'Heart of Infinity': [ItemDetails.Source == always_avail["heart"]],
            'Treasure Chest': [ItemDetails.Source == always_avail["treasure"]],
            'Main Quest': [
                ItemDetails.Source == always_avail["main"],
                ItemDetails.Source == always_avail["starting"],
                ItemDetails.Source == always_avail["pre_reg"],
                ItemDetails.Source == always_avail["esseling_treasure"],
            ],
            'World Quest': [ItemDetails.Source == always_avail["quest"]],
            'Story Quest': [ItemDetails.Source == always_avail["journey_anecdote"]],
            'Styling Challenge': [ItemDetails.Source == always_avail["styling_challenge"]],
            'Surprise-O-Matic': [ItemDetails.Source == always_avail["rng"]],
            "Resonance: Croaker's Whisper": [ItemDetails.Banner.contains("Croaker's Whisper")],
            'Resonance: Bubbling Affections': [ItemDetails.Banner.contains('Bubbling Affections')],
            'Resonance: Distant Sea': [ItemDetails.Banner.contains('Distant Sea')],
            'Premium Items': [ItemDetails.Source == premium],
            'Limited-Time Resonance': [ItemDetails.Source == lim_reso],
            'Event Items': [ItemDetails.Source.contains("event")],
            'Currently Unobtainable': [
                and_(
                    ItemDetails.Source.notin_(always_avail_vals),
                    ItemDetails.Banner.is_(None)
                ),
                ~or_(*[ItemDetails.Banner.like(f"%{banner}%") for banner in limited_time])
            ],
            'Currently Unobtainable2': [
                ~and_(ItemDetails.Source.notin_(always_avail_vals),
                ~or_(*[ItemDetails.Banner.like(f"%{banner}%") for banner in limited_time]))
            ],
            'Recolor': [
                or_(
                ~ItemDetails.Outfit.contains(":"),
                ItemDetails.Outfit == None)
            ]
        }

        if rarity:
            query = query.filter(ItemDetails.Rarity.in_(rarity))
        if slot:
            query = query.filter(ItemDetails.Slot.in_(slot))
        if label:
            label_conditions = [ItemDetails.Labels.contains(lbl) for lbl in label]
            query = query.filter(or_(*label_conditions))
        if style:
            query = query.filter(ItemDetails.Style.in_(style))
        
        matched_conditions = set()
        for s in source:
            if s in source_map and s != "Currently Unobtainable2" and s != "Recolor":
                matched_conditions.update(source_map[s])

        conditions = []
        q = expression.true()
        if matched_conditions:
            conditions.extend(matched_conditions)
            q = or_(*conditions)
        if "Currently Unobtainable2" in source and "Currently Unobtainable" not in source:
            q = and_(q, *source_map["Currently Unobtainable2"])
        if "Recolor" in source:
            q = and_(q, *source_map["Recolor"])

        query = query.filter(q)
        filtered_items = query.all()
        if not filtered_items:
            return [], 200
        if not styleSort:
            return filtered_items
        
        filtered_item_names = [item.Name for item in filtered_items]
        allowed_styles = ["Elegant", "Fresh", "Sweet", "Sexy", "Cool"]
        if styleSort not in allowed_styles:
            return {"message": f"Invalid styleSort: {styleSort}"}, 400
        
        style_query = LevelDetails.query.filter(
            LevelDetails.Name.in_(filtered_item_names),
            LevelDetails.Level == 10
        )
        sorted_styles = style_query.all()
        
        def score(item, styleSort):
            selected_style_value = getattr(item, styleSort) * 3.7
            score = selected_style_value
            
            for style in allowed_styles:
                if style != styleSort:
                    score += getattr(item, style) * 0.336
            return score
        
        sortOrder = sortOrder == 'true'
        sorted_items = sorted(
            sorted_styles,
            key=lambda item: score(item, styleSort),
            reverse=sortOrder
        )
        
        sorted_item_names = [item.Name for item in sorted_items]
        sorted_items = sorted(
            filtered_items,
            key=lambda item: sorted_item_names.index(item.Name) if item.Name in sorted_item_names else float('inf')
        )
        return sorted_items

    @app.route('/api/items/', methods=['OPTIONS'])
    def options():
        response = Response()
        response.headers['Access-Control-Allow-Origin'] = '*'
        response.headers['Access-Control-Allow-Methods'] = 'GET, POST, OPTIONS'
        response.headers['Access-Control-Allow-Headers'] = 'Content-Type, Authorization, style-sort'
        return response, 200

class Levels(Resource):
    @marshal_with(lvlFields)
    def get(self, name):
        item_lvls = LevelDetails.query.filter_by(Name=name).all()
        if not item_lvls:
            abort(404, f"No levels found for {name}")
        return item_lvls

class ItemInfo(Resource):
    @marshal_with(itemFields)
    def get(self, name):
        info = ItemDetails.query.filter_by(Name=name).all()
        if not info:
            abort(404, f"No info found for {name}")
        return info

api.add_resource(Items, '/api/items/')
api.add_resource(Levels, '/api/items/<string:name>')
api.add_resource(ItemInfo, '/api/items/<string:name>/info')

@app.route('/api')
def index():
    return '<h1>Infinity Nikki Flask REST API</h1>'

@app.route('/login', methods=['POST'])
def login():
    data = request.get_json()
    discord_access_token = data.get('access_token')
    token_type = data.get('token_type', 'Bearer')

    discord_response = requests.get('https://discord.com/api/users/@me', headers={
        'Authorization': f'{token_type} {discord_access_token}',
    })

    if discord_response.status_code != 200:
        return jsonify({"error": "Invalid Discord access token"}), 401

    user_data = discord_response.json()
    user_id = user_data.get('id')
    username = user_data.get('username')
    avatar = user_data.get('avatar')

    expires_in = data.get('expires_in', 3600)
    expires_at = datetime.now(timezone.utc)+ timedelta(seconds=expires_in)
    with db.session.begin():
        user = db.session.get(UserDetails, user_id) 

        if user:
            user.username = username
            user.access_token = discord_access_token
            user.expires_at = expires_at
            user.avatar = avatar
        else:
            user = UserDetails(
                id=user_id,
                username=username,
                access_token=discord_access_token,
                refresh_token='placeholder_refresh_token',
                expires_at=expires_at,
                avatar=avatar,
            )
            db.session.add(user)

        try:
            db.session.commit()
        except Exception as e:
            db.session.rollback()
            return jsonify({"error": f"Database error: {str(e)}"}), 500

    access_jwt_token = create_access_token(identity=user_id)
    refresh_jwt_token = create_refresh_token(identity=user_id)

    return jsonify({
        "access_token": access_jwt_token,
        "refresh_token": refresh_jwt_token,
    })

@app.route('/refresh', methods=['POST'])
@jwt_required(refresh=True)
def refresh():
    current_user = get_jwt_identity()
    new_access_token = create_access_token(identity=current_user)
    return jsonify({'access_token': new_access_token})

if __name__ == '__main__':
    from waitress import serve
    #serve(app, host='0.0.0.0', port=5000)
    app.run(debug=True)
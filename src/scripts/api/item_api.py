from flask import Flask, Response, jsonify, request
from flask_sqlalchemy import SQLAlchemy
from flask_restful import Resource, Api, reqparse, fields, marshal_with, abort
from sqlalchemy import PrimaryKeyConstraint, and_, or_, case, func
from sqlalchemy.sql import expression
from flask_cors import CORS, cross_origin
from flask_jwt_extended import JWTManager, create_access_token, create_refresh_token, jwt_required, get_jwt_identity, decode_token
from jwt.exceptions import ExpiredSignatureError, DecodeError
from datetime import datetime, timedelta, timezone
from dotenv import load_dotenv
import os
import requests

load_dotenv()
db_password = os.getenv("DB_PASSWORD")
jwt_key = os.getenv("JWT_KEY")

app = Flask(__name__)
app.config["JWT_SECRET_KEY"] = jwt_key
app.config['JWT_ACCESS_TOKEN_EXPIRES'] = timedelta(minutes=5)
app.config['JWT_REFRESH_TOKEN_EXPIRES'] = timedelta(days=7)
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
    id = db.Column(db.BigInteger, primary_key=True)
    username = db.Column(db.String(255), nullable=False)
    access_token = db.Column(db.String(255), nullable=False)
    refresh_token = db.Column(db.String(255), nullable=False)
    expires_at = db.Column(db.DateTime(timezone=True), nullable=False)
    avatar = db.Column(db.String(255), nullable=False)
    source = db.Column(db.String(255), nullable=False)

class OwnedItems(db.Model):
    __tablename__ = 'owned_items'
    user_id = db.Column(db.BigInteger, db.ForeignKey('users.id'), primary_key=True, nullable=False)
    item_name = db.Column(db.String(255), db.ForeignKey('item_details.Name'), primary_key=True, nullable=False)
    level = db.Column(db.SmallInteger)

class WishlistedItems(db.Model):
    __tablename__ = 'wishlisted_items'
    user_id = db.Column(db.BigInteger, db.ForeignKey('users.id'), primary_key=True, nullable=False)
    item_name = db.Column(db.String(255), db.ForeignKey('item_details.Name'), primary_key=True, nullable=False)

class FavoritedItems(db.Model):
    __tablename__ = 'favorited_items'
    user_id = db.Column(db.BigInteger, db.ForeignKey('users.id'), primary_key=True, nullable=False)
    item_name = db.Column(db.String(255), db.ForeignKey('item_details.Name'), primary_key=True, nullable=False)

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
    "avatar": fields.String,
    "source": fields.String
}


class Items(Resource):
    @marshal_with(itemFields)
    def get(self):
        rarity = request.args.getlist('rarity')
        slot = request.args.getlist('slot')
        label = request.args.getlist('label')
        style = request.args.getlist('style')
        source = request.args.getlist('source')
        status = request.args.getlist('status')
        uid = request.args.get('uid')
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
        limited_time = ["Skyward Bouquets", "Fireworks Prelude", "Event: Strings of Time", "Distant Sea", "In Shop"]
        lim_reso = "Limited-Time Resonance"
        premium = "An item in Pear-Pal's Store endorsed by the Stylist's Guild."
        
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
            "Resonance: Skyward Bouquets": [ItemDetails.Banner.contains("Skyward Bouquets")],
            'Resonance: Fireworks Prelude': [ItemDetails.Banner.contains('Fireworks Prelude')],
            'Resonance: Distant Sea': [ItemDetails.Banner.contains('Distant Sea')],
            "Pear-Pal's Store": [
                or_(
                    ItemDetails.Source == premium,
                    ItemDetails.Source.contains('Heartfelt Gifts')
                )
            ],
            'Limited-Time Resonance': [ItemDetails.Source == lim_reso],
            'Event: Strings of Time': [ItemDetails.Source.contains('Strings of Time')],
            'Event Items': [
                or_(
                    ItemDetails.Source.contains("event"),
                    ItemDetails.Source.contains("mail")
                )
            ],
            'Currently Unobtainable': [
                and_(
                    ItemDetails.Source.notin_(always_avail_vals),
                    ItemDetails.Banner.is_(None)
                ),
                ~or_(*[ItemDetails.Banner.like(f"%{banner}%") for banner in limited_time],
                     ItemDetails.Source.contains('Into a Starry Night'))
            ],
            'Currently Unobtainable2': [
                ~and_(ItemDetails.Source.notin_(always_avail_vals),
                ~or_(*[ItemDetails.Banner.like(f"%{banner}%") for banner in limited_time]))
            ],
            'Recolor': [
                or_(
                ~ItemDetails.Outfit.contains(":"),
                ItemDetails.Outfit == None)
            ],
            'New Only': [ItemDetails.Banner.contains('New')]
        }

        statusConditions = []
        
        if 'Owned' in status and uid:
            owned_items_query = db.session.query(OwnedItems.item_name).filter(OwnedItems.user_id == uid)
            owned_item_names = owned_items_query.all()
            owned_item_names = [item[0] for item in owned_item_names]
            statusConditions.append(ItemDetails.Name.in_(owned_item_names))
        if 'Wishlisted' in status and uid:
            wishlisted_items_query = db.session.query(WishlistedItems.item_name).filter(WishlistedItems.user_id == uid)
            wishlisted_item_names = wishlisted_items_query.all()
            wishlisted_item_names = [item[0] for item in wishlisted_item_names]
            statusConditions.append(ItemDetails.Name.in_(wishlisted_item_names))
        if 'Not Owned' in status and uid:
            not_owned_items_query = db.session.query(OwnedItems.item_name).filter(OwnedItems.user_id == uid)
            not_owned_item_names = not_owned_items_query.all()
            not_owned_item_names = [item[0] for item in not_owned_item_names]
            statusConditions.append(~ItemDetails.Name.in_(not_owned_item_names))
        
        if statusConditions:
            query = query.filter(or_(*statusConditions))

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
            if s in source_map and s != "Currently Unobtainable2" and s != "Recolor" and s != "New Only":
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
        if "New Only" in source:
            q = and_(q, ItemDetails.Banner.contains('New'))
        if "Fav Only" in source:
            fav_items_query = db.session.query(FavoritedItems.item_name).filter(FavoritedItems.user_id == uid)
            fav_item_names = fav_items_query.all()
            fav_item_names = [item[0] for item in fav_item_names]
            q = and_(q, ItemDetails.Name.in_(fav_item_names))

        query = query.filter(q)
        
        query = query.order_by(
            case(
                (ItemDetails.Banner.like('%New!%'), 0),
                else_=1
            ).asc(),
            ItemDetails.Rarity.desc(),
            case(
                (ItemDetails.Slot == 'Hair', 1),
                (ItemDetails.Slot == 'Dress', 2),
                (ItemDetails.Slot == 'Outerwear', 3),
                (ItemDetails.Slot == 'Top', 4),
                (ItemDetails.Slot == 'Bottom', 5),
                (ItemDetails.Slot == 'Socks', 6),
                (ItemDetails.Slot == 'Shoes', 7),
                (ItemDetails.Slot == 'Hair Accessory', 8),
                (ItemDetails.Slot == 'Headwear', 9),
                (ItemDetails.Slot == 'Earrings', 10),
                (ItemDetails.Slot == 'Neckwear', 11),
                (ItemDetails.Slot == 'Bracelet', 12),
                (ItemDetails.Slot == 'Choker', 13),
                (ItemDetails.Slot == 'Gloves', 14),
                (ItemDetails.Slot == 'Face Decoration', 15),
                (ItemDetails.Slot == 'Chest Accessory', 16),
                (ItemDetails.Slot == 'Pendant', 17),
                (ItemDetails.Slot == 'Backpiece', 18),
                (ItemDetails.Slot == 'Ring', 19),
                (ItemDetails.Slot == 'Arm Decoration', 20),
                (ItemDetails.Slot == 'Handheld', 21),
                (ItemDetails.Slot == 'Base Makeup', 22),
                (ItemDetails.Slot == 'Eyebrows', 23),
                (ItemDetails.Slot == 'Eyelashes', 24),
                (ItemDetails.Slot == 'Contact Lenses', 25),
                (ItemDetails.Slot == 'Lips', 26),
                else_=27
            ).asc(),
            ItemDetails.Outfit.asc()
        )

        
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
            LevelDetails.Level == 11
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

@app.route('/api/login', methods=['POST'])
def login():
    data = request.get_json()
    code = data.get('code')
    if not code:
        return jsonify({'error': 'Missing authorization code'}), 400

    token_url = 'https://discord.com/api/oauth2/token'
    payload = {
        'client_id': os.getenv("DISCORD_CLIENT_ID"),
        'client_secret': os.getenv("DISCORD_CLIENT_SECRET"),
        'code': code,
        'grant_type': 'authorization_code',
        'redirect_uri': os.getenv("REDIRECT_URI"),
        'scope': 'identify',
    }

    headers = {'Content-Type': 'application/x-www-form-urlencoded'}
    response = requests.post(token_url, data=payload, headers=headers)
    tokens = response.json()

    access_token = tokens.get('access_token')
    refresh_token = tokens.get('refresh_token')
    expires_in = tokens.get('expires_in', 604800)
    expires_at = datetime.now(timezone.utc) + timedelta(seconds=expires_in)

    if not access_token or not refresh_token:
        return jsonify({'error': 'Failed to get tokens'}), 500

    discord_api_url = 'https://discord.com/api/users/@me'
    discord_response = requests.get(discord_api_url, headers={
        'Authorization': f'Bearer {access_token}',
    })

    if discord_response.status_code != 200:
        return jsonify({"error": "Failed to fetch user data from Discord"}), 500

    user_data = discord_response.json()
    user_id = user_data.get('id')
    username = user_data.get('username')
    avatar = user_data.get('avatar')

    try:
        user = db.session.query(UserDetails).filter_by(id=user_id).first()
        if user:
            user.username = username
            user.access_token = access_token
            user.refresh_token = refresh_token
            user.expires_at = expires_at
            user.avatar = avatar
            user.source = "discord"
        else:
            user = UserDetails(
                id=user_id,
                username=username,
                access_token=access_token,
                refresh_token=refresh_token,
                expires_at=expires_at,
                avatar=avatar,
                source="discord"
            )
            db.session.add(user)

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

@app.route('/api/refresh_jwt', methods=['GET'])
@jwt_required(refresh=True)
def refresh_jwt():
    current_user = get_jwt_identity()
    new_access_token = create_access_token(identity=current_user)
    new_refresh_token = create_refresh_token(identity=current_user)
    return jsonify({
        'access_token': new_access_token,
        'refresh_token': new_refresh_token,
    })

@app.route('/api/refresh-discord', methods=['POST'])
def refresh_discord():
    data = request.get_json()
    user_id = data.get('user_id')

    if not user_id:
        return jsonify({"error": "User ID is required"}), 400
    
    user = db.session.query(UserDetails).filter_by(id=user_id).first()
    if not user:
        return jsonify({"error": "Invalid user"}), 401
    
    token_url = 'https://discord.com/api/oauth2/token'
    client_id = os.getenv("DISCORD_CLIENT_ID")
    client_secret = os.getenv("DISCORD_CLIENT_SECRET")
    
    payload = {
        'client_id': client_id,
        'client_secret': client_secret,
        'grant_type': 'refresh_token',
        'refresh_token': user.refresh_token,
    }

    headers = {'Content-Type': 'application/x-www-form-urlencoded'}

    discord_response = requests.post(token_url, data=payload, headers=headers)

    if discord_response.status_code != 200:
        error_response = discord_response.json()
        
        if error_response.get('error') == 'invalid_grant':
            return jsonify({
                "error": "Refresh token is expired or invalid. Please log in again."
            }), 401
        
        return jsonify({"error": "Failed to refresh token from Discord", "response": error_response}), 401

    refreshed_tokens = discord_response.json()
    new_access_token = refreshed_tokens.get('access_token')
    new_refresh_token = refreshed_tokens.get('refresh_token')
    expires_in = refreshed_tokens.get('expires_in', 604800)

    if not new_access_token or not new_refresh_token:
        return jsonify({"error": "Discord did not return new tokens"}), 500

    try:
        user.access_token = new_access_token
        user.refresh_token = new_refresh_token
        user.expires_at = datetime.now(timezone.utc) + timedelta(seconds=expires_in)
        db.session.commit()
    except Exception as e:
        db.session.rollback()
        return jsonify({"error": f"Database error: {str(e)}"}), 500
    return jsonify({"message": "Discord token refreshed successfully."})

@app.route('/api/get-expiration', methods=['GET'])
def get_expiration():
    refresh_token = request.args.get('refresh_token')

    if not refresh_token:
        return jsonify({'error': 'Missing refresh token'}), 400

    try:
        decoded_token = decode_token(refresh_token)
        user_id = decoded_token['sub'] 
        user = UserDetails.query.filter_by(id=user_id).first()
        
        if user:
            return jsonify(
                {'expires_at': user.expires_at.isoformat(),
                 'user_id': user_id}
            )
        else:
            return jsonify({'error': 'User not found'}), 404
    except Exception as e:
        return jsonify({'error': 'Invalid or expired refresh token'}), 401

@app.route('/api/owned', methods=['POST'])
def owned():
    data = request.get_json()
    name = data.get('name')
    uid = data.get('uid')
    owned = data.get('isChecked')
    
    exists = db.session.query(
        db.session.query(OwnedItems)
        .filter(OwnedItems.user_id == uid, OwnedItems.item_name == name)
        .exists()
    ).scalar()
    if not exists and owned:
        try:
            new_item = OwnedItems(user_id=uid, item_name=name, level=0)
            db.session.add(new_item)
            db.session.commit()
            return jsonify({'message': 'Item added successfully'}), 201

        except Exception as e:
            db.session.rollback()
            print(f"Error occurred: {e}")
            return jsonify({'error': 'An error occurred while adding the item'}), 500
    elif exists and not owned:
        try:
            item_to_delete = db.session.query(OwnedItems).filter_by(user_id=uid, item_name=name).first()
            if not item_to_delete:
                return jsonify({'error': 'Item not found'}), 404
            db.session.delete(item_to_delete)
            db.session.commit()
            return jsonify({'message': 'Item removed successfully'}), 200

        except Exception as e:
            db.session.rollback()
            print(f"Error occurred: {e}")
            return jsonify({'error': 'An error occurred while removing the item'}), 500
    return jsonify({'message': 'No changes to database needed'}), 200

@app.route('/api/wishlist', methods=['POST'])
def wishlist():
    data = request.get_json()
    name = data.get('name')
    uid = data.get('uid')
    checked = data.get('isChecked')
    
    exists = db.session.query(
        db.session.query(WishlistedItems)
        .filter(WishlistedItems.user_id == uid, WishlistedItems.item_name == name)
        .exists()
    ).scalar()
    if not exists and checked:
        try:
            new_item = WishlistedItems(user_id=uid, item_name=name)
            db.session.add(new_item)
            db.session.commit()
            return jsonify({'message': 'Item added successfully'}), 201

        except Exception as e:
            db.session.rollback()
            print(f"Error occurred: {e}")
            return jsonify({'error': 'An error occurred while adding the item'}), 500
    elif exists and not checked:
        try:
            item_to_delete = db.session.query(WishlistedItems).filter_by(user_id=uid, item_name=name).first()
            if not item_to_delete:
                return jsonify({'error': 'Item not found'}), 404
            db.session.delete(item_to_delete)
            db.session.commit()
            return jsonify({'message': 'Item removed successfully'}), 200

        except Exception as e:
            db.session.rollback()
            print(f"Error occurred: {e}")
            return jsonify({'error': 'An error occurred while removing the item'}), 500
    return jsonify({'message': 'No changes to database needed'}), 200

@app.route('/api/favorite', methods=['POST'])
def favorite():
    data = request.get_json()
    name = data.get('name')
    uid = data.get('uid')
    checked = data.get('isChecked')
    
    exists = db.session.query(
        db.session.query(FavoritedItems)
        .filter(FavoritedItems.user_id == uid, FavoritedItems.item_name == name)
        .exists()
    ).scalar()
    if not exists and checked:
        try:
            new_item = FavoritedItems(user_id=uid, item_name=name)
            db.session.add(new_item)
            db.session.commit()
            return jsonify({'message': 'Item added successfully'}), 201

        except Exception as e:
            db.session.rollback()
            print(f"Error occurred: {e}")
            return jsonify({'error': 'An error occurred while adding the item'}), 500
    elif exists and not checked:
        try:
            item_to_delete = db.session.query(FavoritedItems).filter_by(user_id=uid, item_name=name).first()
            if not item_to_delete:
                return jsonify({'error': 'Item not found'}), 404
            db.session.delete(item_to_delete)
            db.session.commit()
            return jsonify({'message': 'Item removed successfully'}), 200

        except Exception as e:
            db.session.rollback()
            print(f"Error occurred: {e}")
            return jsonify({'error': 'An error occurred while removing the item'}), 500
    return jsonify({'message': 'No changes to database needed'}), 200

@app.route('/api/check-item-status', methods=['POST'])
def checkItemStatus():
    data = request.get_json()
    name = data.get('name')
    uid = data.get('uid')
    
    ownedExists = db.session.query(
        db.session.query(OwnedItems)
        .filter(OwnedItems.user_id == uid, OwnedItems.item_name == name)
        .exists()
    ).scalar()
    
    wishlistExists = db.session.query(
        db.session.query(WishlistedItems)
        .filter(WishlistedItems.user_id == uid, WishlistedItems.item_name == name)
        .exists()
    ).scalar()
    
    favoriteExists = db.session.query(
        db.session.query(FavoritedItems)
        .filter(FavoritedItems.user_id == uid, FavoritedItems.item_name == name)
        .exists()
    ).scalar()
    
    owned_item = db.session.query(OwnedItems.level).filter(
        OwnedItems.user_id == uid,
        OwnedItems.item_name == name
    ).first()
    
    level = -1
    if owned_item:
        level = owned_item.level
    
    return jsonify({
        'owned': ownedExists,
        'wishlisted': wishlistExists,
        'favorited': favoriteExists,
        'level': level
    }), 200

@app.route('/api/update-item-level', methods=['POST'])
def updateItemLevel():
    data = request.get_json()
    name = data.get('name')
    uid = data.get('uid')
    level = int(data.get('level'))
    
    exists = db.session.query(
        db.session.query(OwnedItems)
        .filter(OwnedItems.user_id == uid, OwnedItems.item_name == name)
        .exists()
    ).scalar()
    if exists and level >= 0:
        try: 
            existing_item = OwnedItems.query.filter_by(user_id=uid, item_name=name).first()
            if not existing_item:
                return jsonify({'error': 'Item not found'}), 404
            existing_item.level = level
            db.session.commit()
            return jsonify({'message': 'Item updated successfully'}), 200
        except Exception as e:
            db.session.rollback()
            print(f"Error occurred: {e}")
            return jsonify({'error': 'An error occurred while updating the item'}), 500
    elif not exists and level >= 0:
        try:
            new_item = OwnedItems(user_id=uid, item_name=name, level=level)
            db.session.add(new_item)
            db.session.commit()
            return jsonify({'message': 'Item added successfully'}), 201

        except Exception as e:
            db.session.rollback()
            print(f"Error occurred: {e}")
            return jsonify({'error': 'An error occurred while adding the item'}), 500
    elif exists and level < 0:
        try:
            item_to_delete = db.session.query(OwnedItems).filter_by(user_id=uid, item_name=name).first()
            if not item_to_delete:
                return jsonify({'error': 'Item not found'}), 404
            db.session.delete(item_to_delete)
            db.session.commit()
            return jsonify({'message': 'Item removed successfully'}), 200

        except Exception as e:
            db.session.rollback()
            print(f"Error occurred: {e}")
            return jsonify({'error': 'An error occurred while removing the item'}), 500
    return jsonify({'message': 'No changes to database needed'}), 200

if __name__ == '__main__':
    from waitress import serve
    serve(app, host='0.0.0.0', port=5000)
    #app.run(debug=True)
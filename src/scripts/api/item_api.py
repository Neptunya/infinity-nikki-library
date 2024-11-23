from flask import Flask, request
from flask_sqlalchemy import SQLAlchemy
from flask_restful import Resource, Api, reqparse, fields, marshal_with, abort
from sqlalchemy import PrimaryKeyConstraint, and_, or_
from flask_cors import CORS

app = Flask(__name__)
CORS(app)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://postgres:password@localhost:1234/infinity_nikki_items'
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

class Items(Resource):
    @marshal_with(itemFields)
    def get(self):
         # Extract query parameters
        rarity = request.args.getlist('rarity')
        slot = request.args.getlist('slot')
        label = request.args.getlist('label')
        style = request.args.getlist('style')
        source = request.args.getlist('source')

        query = ItemDetails.query
        
        if rarity:
            query = query.filter(ItemDetails.Rarity.in_(rarity))
        if slot:
            query = query.filter(ItemDetails.Slot.in_(slot))
        if label:
            query = query.filter(ItemDetails.Labels.in_(label))
        if style:
            query = query.filter(ItemDetails.Style.in_(style))
        
        if source:
            designer = 'A unique creation made by an independent designer.'
            boutique = 'A classic clothing piece from Marques Boutique.'
            dew = 'A gift from the Cadenceborn to those who offer the Dew of Inspiration.'
            heart = 'Insights of the Heart of Infinity.'
            treasure = 'Rare treasures scattered in chests found all around the world.'
            esseling_treasure = 'Treasure guarded by Esselings.'
            main = 'A reward from an adventure.'
            quest = 'World travel mementos.'
            journey_anecdote = 'A piece of journey anecdote.'
            styling_challenge = 'Proof of styling prowess.'
            rng= 'An unexpected surprise from the Surprise-O-Matic.'
            reso = 'Resonance from the Distant Sea'
            
            conditions = []
            for s in source:
                if s == 'Independent Designer Store':
                    conditions.append(ItemDetails.Source == designer)
                if s == 'Marques Boutique':
                    conditions.append(ItemDetails.Source == boutique)
                if s == 'Dews of Inspiration':
                    conditions.append(ItemDetails.Source == dew)
                if s == 'Heart of Infinity':
                    conditions.append(ItemDetails.Source == heart)
                if s == 'Treasure Chest':
                    conditions.append(ItemDetails.Source == treasure)
                    conditions.append(ItemDetails.Source == esseling_treasure)
                if s == 'Main Quest':
                    conditions.append(ItemDetails.Source == main)
                if s == 'World Quest':
                    conditions.append(ItemDetails.Source == quest)
                if s == 'Story Quest':
                    conditions.append(ItemDetails.Source == journey_anecdote)
                if s == 'Styling Challenge':
                    conditions.append(ItemDetails.Source == styling_challenge)
                if s == 'Surprise-O-Matic':
                    conditions.append(ItemDetails.Source == rng)
                if s == 'Distant Sea':
                    conditions.append(ItemDetails.Banner == 'Distant Sea')
                if s == 'Butterfly Dream':
                    conditions.append(ItemDetails.Banner == 'Butterfly Dream')
                if s == 'Currently Unobtainable':
                    conditions.append(and_(
                        ItemDetails.Source == reso,
                        ItemDetails.Banner.is_(None)  # Checks for NULL
                    ))
            if conditions:
                query = query.filter(or_(*conditions))
                    
            query = query
        
        items = query.all()
        if not items:
            return [], 200
        return items

class Levels(Resource):
    @marshal_with(lvlFields)
    def get(self, name):
        item_lvls = LevelDetails.query.filter_by(Name=name).all()
        if not item_lvls:
            abort(404, f"No levels found for {name}")
        return item_lvls

api.add_resource(Items, '/api/items/')
api.add_resource(Levels, '/api/items/<string:name>')

@app.route('/')
def index():
    return '<h1>Infinity Nikki Flask REST API</h1>'

if __name__ == '__main__':
    app.run(debug=True)
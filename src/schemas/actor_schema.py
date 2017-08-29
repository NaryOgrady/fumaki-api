from marshmallow_sqlalchemy import ModelSchema
from models.actor import Actor

class ActorSchema(ModelSchema):
    class Meta: 
        model = Actor
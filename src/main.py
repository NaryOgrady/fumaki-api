from flask import Flask, jsonify

from models.actor import Actor
from service import actor_service as service
from schemas.actor_schema import ActorSchema

app = Flask(__name__)

@app.route("/")
def hello_world():
    data = service.get_random_actors(3)
    schema = ActorSchema()
    actors = []
    
    for actor in data:
        result = schema.dump(actor).data
        actors.append(result)

    return jsonify({'actors': actors})
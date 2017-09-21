from flask import Flask, jsonify

from routes import *
from service import actor_service as service
from helpers import json_helper as json
from schemas.actor_schema import ActorSchema
from flask_cors import cross_origin

app = Flask(__name__)

@app.route(RANDOM_ACTORS)
@cross_origin()
def get_random_actors(quantity):
    actors_data = service.get_random_actors(quantity)
    schema = ActorSchema()
    json_data = json.serialize_query_list(actors_data, schema)

    return jsonify({'actors': json_data})
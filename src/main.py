from flask import Flask

from models.actor import Actor
from service import actor_service as service

app = Flask(__name__)

@app.route("/")
def hello_world():
    data = service.get_random_actors(3)
    return ', '.join(actor.name for actor in data)
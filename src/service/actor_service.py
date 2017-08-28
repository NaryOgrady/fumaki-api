from sqlalchemy.sql.expression import func

from models.actor import Actor
from helpers import database_helper as db

def get_random_actors(quantity):
    session = db.get_db_session()
    return session.query(Actor).order_by(func.random()).limit(quantity)
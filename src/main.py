from flask import Flask
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import sessionmaker

import os

app = Flask(__name__)

engine = create_engine('sqlite:///data/fumaki.db')
Base = declarative_base()

Session = sessionmaker(bind=engine)
session = Session()

class Actor(Base):
    __tablename__ = 'actors'
    id = Column(Integer, primary_key=True)
    name = Column(String)
    url = Column(String)
    image = Column(String)


@app.route("/")
def hello_world():
    return session.query(Actor).get(1).image

from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

def get_db_session ():
    engine = create_engine('sqlite:///data/fumaki.db')
    Session = sessionmaker(bind=engine)

    return Session()
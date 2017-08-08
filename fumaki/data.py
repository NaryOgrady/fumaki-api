import sqlite3
import json

DB_NAME = 'fumaki/fumaki.db'


def dict_factory(cursor, row):
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d


def get_actors(quantity):
    query = 'SELECT * FROM actors ORDER BY RANDOM() LIMIT %s' % quantity
    db = sqlite3.connect(DB_NAME)
    db.row_factory = dict_factory
    cursor = db.cursor()
    cursor.execute(query)
    data = cursor.fetchall()
    db.close()
    return {"actors": json.dumps(data)}

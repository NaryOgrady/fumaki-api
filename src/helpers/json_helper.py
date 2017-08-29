def serialize_query_list(query_list, schema):
    data = []
    for element in query_list:
        result = schema.dump(element).data
        data.append(result)

    return data

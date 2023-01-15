from google.cloud import firestore
from flask import request, jsonify
def insight(_):
    """HTTP Cloud Function.
    Args:
        request (flask.Request): The request object.
        <https://flask.palletsprojects.com/en/1.1.x/api/#incoming-request-data>
    Returns:
        The response text, or any set of values that can be turned into a
        Response object using `make_response`
        <https://flask.palletsprojects.com/en/1.1.x/api/#flask.make_response>.
    """
    request_json = request.get_json(silent=True)
    feedback = None
    if request_json and 'feedback' in request_json:
        feedback = request_json['feedback']
    if not feedback:
        return
    db = firestore.Client()
    doc_ref = db.collection(u'feedbacks')
    doc_ref.add({
        u'feedback': feedback,
        u'created_at': firestore.SERVER_TIMESTAMP,
    })
    return 'Hello {}!'.format(feedback)


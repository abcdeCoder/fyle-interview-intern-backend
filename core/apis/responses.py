from flask import Response, jsonify, make_response


class APIResponse(Response):
    @classmethod
    # this will handle the testcase of the status code 200
    def respond(cls, data, status=200):
        return make_response(jsonify(data=data), status)

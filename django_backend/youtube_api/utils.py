import datetime
import jwt
from django.conf import settings


def generate_access_token(user):

    access_token_payload = {
        'user_name': user.username,
        'exp': datetime.datetime.utcnow() + datetime.timedelta(
            days=1, minutes=5),
        'iat': datetime.datetime.utcnow(),
    }

    access_token = jwt.encode(access_token_payload,
                              settings.SECRET_KEY, algorithm='HS256')
    return access_token


def generate_refresh_token(user):
    refresh_token_payload = {
        'user_name': user.username,
        'exp': datetime.datetime.utcnow() + datetime.timedelta(days=7),
        'iat': datetime.datetime.utcnow()
    }
    refresh_token = jwt.encode(
        refresh_token_payload, settings.SECRET_KEY, algorithm='HS256')

    return refresh_token


def token_decoder(token):
    # Removing Bearer flag from token
    access_token = token.split(' ')[1]
    # Decoding token
    payload = jwt.decode(
        access_token,
        settings.SECRET_KEY,
        algorithms=["HS256"]
    )
    return payload


# Extract username from JWT
def get_username(request):
    # Getting token from request object
    authorization_header = request.headers.get('Authorization')
    # Decoding token
    decoded_token = token_decoder(authorization_header)
    # Extracting username from token
    username = decoded_token['user_name']

    return username

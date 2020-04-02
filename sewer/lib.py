import base64
from typing import Union


def safe_base64(un_encoded_data: Union[str, bytes]) -> str:
    "return ACME-safe base64 encoding of un_encoded_data"

    if isinstance(un_encoded_data, str):
        un_encoded_data = un_encoded_data.encode("utf8")
    r = base64.urlsafe_b64encode(un_encoded_data).rstrip(b"=")
    return r.decode("utf8")

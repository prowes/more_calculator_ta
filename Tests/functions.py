import requests

def get_ip():
    r = requests.get('http://checkip.amazonaws.com')
    public_url = r.text.strip()
    return f"http://{public_url}:8081/"

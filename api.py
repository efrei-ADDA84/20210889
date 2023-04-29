from flask import Flask, request
import requests
import os
import sys

app = Flask(__name__)

@app.route("/", methods=["GET"])
def result():
    lat = request.args.get('lat')
    lon = request.args.get('lon')
#    api_key = sys.argv[1]
    api_key = os.environ.get("API_KEY")
#    api_key = "a1e0149e963250ea84c1f39140dcc205"
    print("test 1:", lat)
    print("test 2:", lon)
    print("test 3:", api_key)
    url = f'http://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={api_key}&units=metric'
    response = requests.get(url)
    return response.json()
     
if __name__ == "__main__":
    print("test")
    app.run(debug=True, port=8081)
    

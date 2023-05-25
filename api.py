from flask import Flask, request
import requests
import os
import sys

app = Flask(__name__)

# On definit une requete GET avec un URL par defaut a "/"
@app.route("/", methods=["GET"])
def result():
    # On recupere les parametres "lat" et "lon" de l'API avec la methode "request.args.get"
    lat = request.args.get('lat')
    lon = request.args.get('lon')
    # On recupere la variable d'environnement "API_KEY_ definie dans le Dockerfile
    api_key = os.environ.get("API_KEY")
    url = f'http://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={api_key}&units=metric'
    response = requests.get(url)
    return response.json()
     
if __name__ == "__main__":
    # Le port par defaut est 8081
    app.run(debug=True, port=8081)
    

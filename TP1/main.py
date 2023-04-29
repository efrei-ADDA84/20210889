import requests
import os

# On recupere les variables d'environnement
api_key, lat, lon = os.environ.get("API_KEY"), os.environ.get("LAT"), os.environ.get("LONG")

# On donne les variables precedentes dans l'url pour effectuer la requete
url = f'http://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={api_key}&units=metric'

response = requests.get(url)
data = response.json()

# On affiche les informations liees a ces coordonnees
print(data)

FROM python:3.11.3

WORKDIR /app

# On installe les librairies necessaires dans notre environnement
RUN pip install --no-cache-dir requests==2.29.0 flask==2.3.0

# On definit les vairables environnements
ARG LAT
ARG LONG
ARG API_KEY

# On ajoute tous les fichers du repertoire courant dans le docker image
COPY api.py .

CMD ["python3", "api.py"]

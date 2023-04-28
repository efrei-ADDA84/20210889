FROM python:3.11.3

WORKDIR /app

# On installe les librairies necessaires dans notre environnement
RUN pip install --no-cache-dir requests==2.29.0

# On definit les vairables environnements
ARG LAT
ARG LONG
ARG API_KEY

# On ajoute le ficher main.py dans le docker image
COPY main.py .

CMD ["python3", "main.py"]

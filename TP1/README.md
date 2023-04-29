Créer un repository Github avec pour nom votre identifiant EFREI
DONE

Créer un wrapper qui retourne la météo d'un lieu donné avec sa latitude et sa longitude (passées en variable d'environnement) en utilisant openweather API dans le langage de programmation de votre choix (bash, python, go, nodejs, etc)
Pour cette etape, j'ai cree : 
	- un fichier python main.py dans lequel j'ai defini des variables permettant de recuperer les variables d'environnement, pour ensuite les introduire dans l'URL qui est utilisee pour effectuer la requete API.
	- un fichier Dockerfile, dans lequel je definis mon environnement, avec la version de l'image python a utiliser pour creer mon image, les packages a installer, les variables d'environnement, les fichiers a ajouter dans l'image et le fichier python a executer


Packager son code dans une image Docker
Sur un terminal :
	- sudo docker build . -t docker101:0.3.2 => construit une nouvelle image Docker en utilisant le Dockerfile present dans le repertoire courant ("."). Le parametre "-t" permet de donner un tag a l'image. Dans ce cas, l'image est nommee "docker101" et sa version est "0.3.2"
	- sudo docker tag docker101:0.3.2 madkash/tp1:0.3.2 => donne un nouveau nom et une nouvelle etiquette à l'image creee precedement. L'image "docker101:0.3.2" est renommee en "madkash/tp1:0.3.2"

Mettre à disposition son image sur DockerHub
	- on cree un compte docker hub
	- on cree un nouveau repositoire que j'ai appele "tp1" en mettant la visibilite en publique
	- dans un terminal, on lance : sudo docker push madkash/tp1:0.3.2 => pousse l'image renommee precedement vers un registre Docker. L'image "madkash/tp1:0.3.2" est poussée vers un registre Docker

Mettre à disposition son code dans un repository Github
	

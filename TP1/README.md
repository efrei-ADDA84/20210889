J'ai realise ce TP sur une VM Ubuntu pour que ca soit plus facile de lancer les commandes bash. Des commentaires de code sont egalement presents dans les fichiers.

Créer un repository Github avec pour nom votre identifiant EFREI :
Il suffit de creer un nouveau projet git.

Créer un wrapper qui retourne la météo d'un lieu donné avec sa latitude et sa longitude (passées en variable d'environnement) en utilisant openweather API dans le langage de programmation de votre choix (bash, python, go, nodejs, etc) :
Pour cette etape, j'ai cree : 
	- un fichier python main.py dans lequel j'ai defini des variables permettant de recuperer les variables d'environnement, pour ensuite les introduire dans l'URL qui est utilisee pour effectuer la requete API.
	- un fichier Dockerfile, dans lequel je definis mon environnement, avec la version de l'image python a utiliser pour creer mon image, les packages a installer, les variables d'environnement, les fichiers a ajouter dans l'image et le fichier python a executer

Packager son code dans une image Docker :
Sur un terminal, il faut lancer les commandes :
	- sudo docker build . -t docker101:0.3.2 => construit une nouvelle image Docker en utilisant le Dockerfile present dans le repertoire courant ("."). Le parametre "-t" permet de donner un tag a l'image. Dans ce cas, l'image est nommee "docker101" et sa version est "0.3.2"
	- sudo docker tag docker101:0.3.2 madkash/tp1:0.3.2 => donne un nouveau nom et une nouvelle etiquette à l'image creee precedement. L'image "docker101:0.3.2" est renommee en "madkash/tp1:0.3.2"

Mettre à disposition son image sur DockerHub :
	- on cree un compte docker hub
	- on cree un nouveau depot que j'ai appele "tp1" en mettant la visibilite en publique
	- dans un terminal, on lance : sudo docker push madkash/tp1:0.3.2 => pousse l'image renommee precedement vers un registre Docker.

Mettre à disposition son code dans un repository Github :
Apres avoir creer un projet sur Github, il faut lancer dans un terminal les commandes :
	- git clone https://github.com/efrei-ADDA84/20210889.git -> permet d'importer en local le projet
	- git add -A -> ajoute toute modification ou ajout
	- git commit -m "message du commit" -> enregistre ces ajouts
	- git push -> envoie cet enregistrement sur le depot git
	
BONUS

0 lint errors on Dockerfile (hadolint) :
Pour cela, j'ai lance la commande donnee dans le TP, et j'ai eu 3 warnings. Pour les regler, il suffisait juste de specifier les versions des packages a utiliser et la version de l'image sur laquelle on se base pour construire la notre.

0 CVE (trivy) :
Je n'ai pas pu completer cette etape, car j'avais plus de 1000 vulnerabilites. Cependant, j'ai fais mes recherches et on peut regler ces vulnerabiilites en installer des versions stables des packages et aussi de l'image.

Aucune données sensibles stockées dans l'image (i.e: openweather API key) :
J'ai utilise des variables d'environnement (avec l'option ARG) dans le Dockerfile pour eviter de stocker en dur les informations importantes comme la cle API. On peut donc avec ca donner ces memes informations dans la commande a lancer.


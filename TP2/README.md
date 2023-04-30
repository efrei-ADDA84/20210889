J'ai realise ce TP sur une VM Ubuntu pour que ca soit plus facile de lancer les commandes bash. Des commentaires de code sont egalement presents dans les fichiers.

Configurer un workflow Github Action :
Pour creer mon workflow, dans la section "Actions" de mon repositoire Github, je clicke sur "Configure" de "Docker Image" pour creer mon workflow. Puis, je donne un nom au fichier yml et complete le code. Ensuite, je commit et regarde les logs du build dans "Actions".

Transformer un wrapper en API :
Pour transformer mon wrapper en API, je creer un fichier Python dans laquelle j'implemente une application Flask. J'avais vu en cherchant sur Internet qu'on pouvait utiliser differentes technologies pour implementer notre propre API comme FastAPI, mais comme en entreprise on utilisait Flask, je suis donc parti sur ca.

Publier automatiquement a chaque push sur Docker Hub :
Dans le fichier yml du workflow, dans la couche "Build and Push" -> "with", on a l'option "push" egal a True, permettant de pousser l'image docker a chaque push dans Git.

Mettre à disposition son image (format API) sur DockerHub :
En pushant le code sur Git, cela va automatiquement pusher l'image dans DockerHub.

Mettre à disposition son code dans un repository Github :
Apres avoir creer un projet sur Github, il faut lancer dans un terminal les commandes :
	- git clone https://github.com/efrei-ADDA84/20210889.git
	- git add -A 
	- git commit -m "message du commit"
	- git push
	
BONUS :
Add hadolint to Github workflow before build+push and failed on errors :
J'ai ajoute une section "Hadolint" dans le fichier yml du workflow.

Aucune données sensibles stockées dans l'image ou le code source (i.e: openweather API key, Docker hub credentials) :
Comme pour le TP1, j'ai defini une variable d'environnement pour la cle API, et egalement des variables secretes dans Github pour me connecter au DockerHub.

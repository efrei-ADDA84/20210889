Pour réaliser ce TP, il a fallu configurer un Github workflow.

Pour cela, j'ai pu m'aider de la documentation fourni dans l'énoncé, qui explique comment build et push une image à chaque nouveau commit sur un ACR, et deployer sur un Azure Container Instance (ACI).

Les principaux problèmes rencontrés était la configuration du workflow, avec le choix du port, l'utilisation d'une variable secrète pour la clé API et la syntaxe en général.
Mon plus gros problème rencontré était que mon curl ne fonctionnait pas, et cela était dû à mon code Python où il manquait apparement un champ "host" lorsque je faisais tourner mon application Flask.

L'avantage d'un Github Action est l'automatisation : on n'a plus besoin de se connecter à une interface graphique ou à une CLI pour déployer, tout se fait désormais en background.
On peut également ajouter d'autres fonctionnalités au workflow, comme une couche sécurité avec Hadolint et bien d'autres.

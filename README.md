Pour pouvoir creer une machine virtuelle dans azure en utilisant Terraform, il a fallu configurer un fichier .tf dans lequel on specifie les ressources necessaires pour la creation.

Parfois, il n'etait pas necessaires de creer ces ressources car elles existaient deja, comme le resource group. On les stocke alors dans des variables qu'on peut utiliser depuis le fichier variables.tf

Il y a encore des donnees comme le subscription ID et le network, qu'on a defini dans data.tf.

On a egalement les valeursin sorties qu'on definit dans outputs.tf, des elements auxquels on souhaite avoir acces apres la configuration Terraform.

Pour les ressources, il faut faire attention a changer les noms pour qu'il n'y ait pas de concurrence avec les autres elements du resource group.

Ensuite, il suffit de lancer les commandes :
- terraform init -upgrade
- terraform plan
- terraform apply

Il faut egalement generer une cle privee a l'aide de la commande :
- terraform output -raw tls_private_key > id_rsa

Ensuite, pour se connecter a la vm, il faut lancer :
- ssh -i id_rsa devops@<public_ip_address>
Il faut changer <public_ip_address> par l'adresse IP correspondante a la vm. Cependant, pour mon cas, cela ne fonctionnait pas. Je recevais toujours le message "Connection Refused" sans information en plus.

Pour ce qui est du formatage du code terraform, il suffit de lancer la commande :
- terraform fmt

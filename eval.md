#EVAL

### A Savoir:

* Qu'est ce qu'une **VM**? Comment ca marche? A quoi ca sert?
* Pourquoi **Debian**? Differences avec **CentOS**
* Differences entre **APTITUDE** et **APT**
* Qu'est ce que **AppArmor**? Comment on voit si c'est actif?
* Qu'est ce que **LVM** et a quoi ca sert ?
* A quoi sert **sudo**?
* Qu'est ce que **UFW** et pourquoi l'utiliser ?
* Qu'est ce que **SSH** et pourquoi l'utiliser ?
* Qu'est ce que **cron** ?
-----------------------------------------------------------
### Verifier :
* Le script *monitoring.sh* se lance bien toutes les 10 minutes ?
* On demande un mdp au demarrage (avant le login) ?
* Les mdp suivent ils les regles ?
-----------------------------------------------------------
### A Savoir Faire:
* Verifier si **UFW** est lance
* Verifier si **SSH** est lance
* Verifier le systeme d'exploitation
* Verifier que l'utilisateur ***stelie*** est bien dans les groupes ***sudo*** et ***user42***
 * Verifier les regles de mot de passe:
	 * Le mot de passe expire apres 30j et minimum 2j pour changer
	 * Il fait une taille mini de 10
	 * Mini 7 caracteres differents de l'ancien mdp
	 * Mini 1chiffre et 1majuscule
	 * Maxi 3 memes caracteres consecutifs
	 * Ne peut contenir le nom de l'utilisateur
	 * max 3 tentatives echouees quand on change de mdp
	 * root aussi est concerne par la politique de mdp
* Creer un nouvel utilisateur verifier que le mdp respecte les regles ci-dessus
* creer un groupe ***evaluating*** et y inclure l'utiliateur cree
* Verifier si il fait partie de ce groupe
* Expliquer les avantages et inconvenients de ces regles strictes de mdp
* Verifier que le nom de la machine est ***stelie42***
* Modifier le nom de la machine et redemarrer pour confirmer que ca a pris effet
* Remettre le nom d'origine
* Regarder les partitions et voir si ca correspond a ce qui est demande dans le sujet
* Verifier que ***sudo*** est bien installe
* Verifier l'implementation des regles de ***sudo***
* Verifier l'existence du dossier de logs sudo ( ***/var/log/sudo*** ) et qu'il y a bien des logs dedans
* Lancer une commande en ***sudo*** et verifier si les logs se sont mis a jour
* Verifier que ***UFW***est bien installe et qu'il fonctionne
* Ajouter une nouvelle regles pour autoriser le port 8080
* Supprimer cette derniere regle
* Verifier que le service ***SSH*** utilise uniquement le port 4242
* Se loguer via le service ***ssh*** sur la machine hote
* Verifier que l'on ne peut pas se log en ***root***
*  Expliquer le script monitoring.sh
* Regler l'execution du script toutes les 1min au lieu de 10min
* Empecher le fonctionnement de ce script SANS modifier le script en lui meme

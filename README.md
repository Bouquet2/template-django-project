# template-django-project
Template for Django project running in vagrant.

Nous utilisons vagrant pour installer les dépendances dans une machine virtuelle, 
vous pouvez l'obtenir ici : [Télécharger vagrant](https://www.vagrantup.com/downloads.html)

### Installation 
```
git clone https://github.com/Bouquet2/template-django-project.git
cd template-django-project
vagrant up
```

### Développer avec Pycharm

1. [Télécharger pycharm](https://www.jetbrains.com/pycharm/download) si ce n'est pas déjà fait

2. Lancez pycharm et sélectionnez le chemin du dossier 'template-django-project' que vous venez de télécharger

3. Accédez au paramètres depuis les onglets ou avec le raccourcis "CTRL + ALT + S". Sélectionnez "Project: template-django-project" puis sélectionnez "Project Interpreter"

![Etape 3](https://github.com/Bouquet2/template-django-project/blob/master/images/ressources_readme/pycharm1.png)

4. Sélectionner la petite icone rouage en haut à droite et cliquez sur "add remote"

![Etape 4](https://github.com/Bouquet2/template-django-project/blob/master/images/ressources_readme/pycharm2.png)

5. Cliquez sur vagrant en haut à gauche de la nouvelle fenêtre et sélectionnez le répertoire courant du dossier de votre projet "template-django-project". Ensuite ajoutez spécifiez dans le champs "python interpreter path" la version "/usr/bin/python3.5" puis attendez le temps que Pycharm mette à jour les ressources.

![Etape 5](https://github.com/Bouquet2/template-django-project/blob/master/images/ressources_readme/pycharm3.png)

6. Ensuite retournez à l'éditeur, et cliquez sur "template-django-project" pour changer et editer la configuration

![Etape 6](https://github.com/Bouquet2/template-django-project/blob/master/images/ressources_readme/pycharm4.png)

7. Maintenant éditez la configuration, pour cela il faut modifier le champs 'host: 0.0.0.0' et vérifier que le port est bien '8000'. Ensuite allez sur le champs 'python interpreter' et sélectionnez 'Project default'.

![Etape 7](https://github.com/Bouquet2/template-django-project/blob/master/images/ressources_readme/pycharm5.png)

8. Voila, vous pouvez maintenant lancer votre première application en cliquant sur le bouton run en haut à droite (le triangle vert) et vous rendre sur l'url localhost:8000 depuis votre navigateur

![Etape 8](https://github.com/Bouquet2/template-django-project/blob/master/images/ressources_readme/pycharm6.png)





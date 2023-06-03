## Orange County Lettings

Ce projet utilise Python 3.11

## Description

Orange County Lettings est une start-up dans le secteur de la location de biens immobiliers.

Site d'OC Lettings déployer sur heroku : https://lettings-theophile.herokuapp.com/
Pipeline du projet : https://app.circleci.com/pipelines/github/Theosers/P13
Surveillance faite à l'aide de Sentry.io

La base de donnée actuellement utilisée est SQLite. Aucune configuration n'est donc requise (veillez seulement à avoir votre fichier db à la racine du projet).

## Prérequis
 
 - Télécharger le project
- Installer le fichier requirements.txt :
```python 
python3 -m pip install -r requirements.txt
```


## Serveur local 

-Lancez le serveur :
```python 
python3 manage.py runserver
flask run
```

## Recupération du container via DockerHub

- Dans un terminal écrire le code suivant :
```python
docker run -p 8000:8000 theophilesers/p13:circleci python manage.py runserver 0.0.0.0:8000
```
-Rendez-vous sur votre l'adresse web correspondant à votre ip local sur le port adéquat : 0.0.0.0:8000


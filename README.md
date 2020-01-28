# Projet | Un calendrier très très PÔÔ
**thp séance 11**\
**Semaine 3, jour 1**\
**Projet 01**

## 1. Introduction
Coder une application pour créer des événements avec une date de début, une durée, et un nom. Leur rattacher un lieu, des utilisateurs (qui y assisteront), et on affichera la liste totale des rendez-vous.\
L'avantage de penser "objet" pour ce genre d'application devrait assez vite sauter aux yeux : sa décomposition sera extrêmement simple.

## 2. Le projet
Le programme sera simple : nous allons faire une classe Event qui aura plusieurs variables d'instance : une date de début, une durée, un titre, ainsi que des participants. À partir de la date de début et de la durée, nous pourrons calculer (via des méthodes d'instance) si l’événement est passé ou s'il est prévu pour bientôt. Finalement, nous coderons une fa�on d'afficher l’événement de manière stylée.

### Structure
```
mon_projet
|- lib
|  |- event.rb
|  |- user.rb
|- app.rb
|- README.md
|- Gemfile
|- Gemfile.lock
|- Autres fichiers (.env, .gitignore)
```
Le fichier app.rb va appeler les fichiers lib/event.rb et lib/user.rb.

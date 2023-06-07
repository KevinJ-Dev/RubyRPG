# Configuration de la base de données

* Ouvrire le fichier config/database.yml dans le projet Ruby on Rails
* Modifie les sections development, test, et production pour correspondre aux informations de la base de données SQL

development:
* adapter: sqlite3
* encoding: utf8
* database: nom_de_ta_base_de_donnees
* username: ton_nom_d_utilisateur
* password: ton_mot_de_passe
* host: localhost

**Installation des dépendances**

* Dans le fichier Gemfile vérifie qu'il soi à jour
  gem "sqlite3", "~> 1.4"

Ensuite, exécute la commande ' **bundle install** ' pour installer la gem.

**Création de la base de données**

Exécute la commande rails ' **db:create** ' pour créer la base de données spécifiée dans la configuration.

**Génération de la migration**

Utilise la commande ' **rails generate migration** ' pour générer une migration qui créera les tables de ta base de données,
par exemple: ' rails generate migration CreateQuests '

Cela va créer un fichier de migration dans le répertoire db/migrate que tu pourras éditer pour définir les colonnes de ta table.

**Exécution de la migration**

* Utiliser la commande ' **rails db:migrate** ' pour exécuter la migration et créer les tables dans la base de données.
* Exécuter la migration en utilisant la commande rails ' **db:migrate** ' pour créer la table quests dans la base de données.

# Créer un modèle

Crée un modèle Quest pour représenter les quêtes:

* Exécuter la commande ' **rails generate model Quest** ' pour générer le modèle Quest.
* Ouvrire le fichier de migration correspondant dans le répertoire **db/migrate** et définis les colonnes nécessaires pour représenter une quête. Par exemple, avoir des colonnes telles que title, description, reward, etc...
* Exécuter la migration en utilisant la commande ' **rails db:migrate** ' pour créer la table quests dans la base de données.

# Exemple génère les vues pour les actions du Maitre du jeu

* Crée un contrôleur Quests en utilisant la commande ' **rails generate controller Quests** '.
* Dans le contrôleur Quests, définis les actions nécessaires, telles que index, new, create, edit, update, destroy, etc...
* Pour chaque action, crée une vue correspondante dans le répertoire app/views/quests.
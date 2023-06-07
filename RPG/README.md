# Commande connection BDD SQL

**Configuration de la base de données**

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

Ensuite, exécute la commande ' bundle install ' pour installer la gem.

**Création de la base de données**

Exécute la commande rails db:create pour créer la base de données spécifiée dans la configuration.

**Génération de la migration**

Utilise la commande ' rails generate migration ' pour générer une migration qui créera les tables de ta base de données,
par exemple: ' rails generate migration CreateQuests '

Cela va créer un fichier de migration dans le répertoire db/migrate que tu pourras éditer pour définir les colonnes de ta table.

**Exécution de la migration**

Utilise la commande ' rails db:migrate ' pour exécuter la migration et créer les tables dans la base de données.
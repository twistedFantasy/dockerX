/* FIXME: use environment variables */

CREATE DATABASE IF NOT EXISTS matomo_database;
GRANT ALL PRIVILEGES ON matomo_database.* TO 'cms_user' identified by 'password';

CREATE DATABASE IF NOT EXISTS wordpress_database;
GRANT ALL PRIVILEGES ON wordpress_database.* TO 'cms_user' identified by 'password';

CREATE DATABASE IF NOT EXISTS joomla_database;
GRANT ALL PRIVILEGES ON joomla_database.* TO 'cms_user' identified by 'password';

CREATE DATABASE IF NOT EXISTS drupal_database;
GRANT ALL PRIVILEGES ON drupal_database.* TO 'cms_user' identified by 'password';

CREATE DATABASE IF NOT EXISTS typo3_database;
GRANT ALL PRIVILEGES ON typo3_database.* TO 'cms_user' identified by 'password';

Phpish Skeleton App
===================

Phpish is a non-OO, set of micro-libs for creating simple PHP web apps.

It requires/uses:

* PHP (>=5.3.0)
* MySQL
* Composer
* Git

This is a skeleton project which helps you boot-strap a web app easily.

To create a web app called demo in a directory Sites, do the following:

$ cd Sites/

$ curl https://raw.githubusercontent.com/nashjain/phpish-skeleton/master/installer.sh > phpish

$ chmod +x phpish

$ ./phpish create demo

This would give you the skeleton web app. After this:

* Create a database in MySQl and update the config params under the respective files in conf folder
* Add your database scripts un db/db.sql file and run it manually via mysql command line
* Update the project with your project specific files
* Update the remote server details under deploy.sh file. Then you can use the deploy.sh file to deploy to production.


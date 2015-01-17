#!/bin/bash
# check for bash commandline options
if [ "$1" == "create" ]; then

        # make sure git is installed
        if [ ! `which git` ]; then
            echo "For this installer to work you'll need to install Git."
            echo '        http://git-scm.com/'
        fi

        # clone the repository, and make sure the latest master is active
        git clone git@github.com:nashjain/phpish-skeleton.git "./$2"
        cd ./$2
        rm installer.sh
        rm -rf .git

        # run composer
        php composer.phar self-update
        php composer.phar update
        echo 'Congratulations! The skeleton project is all setup.'
else
        echo 'This is not a valid installation command. Usage:'
        echo './installer.sh create app_name'

fi

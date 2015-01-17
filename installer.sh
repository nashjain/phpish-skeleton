#!/bin/bash
if [ "$1" == "init" ]; then
        if [ ! `which git` ]; then
            echo "For this installer to work you'll need to install Git."
            echo '        http://git-scm.com/'
        fi

        git clone git@github.com:nashjain/phpish-skeleton.git "./$2"
        cd ./$2
        rm installer.sh
        rm -rf .git

        # run composer
        php composer.phar self-update
        php composer.phar update
        echo 'Congratulations! The skeleton project is all setup. Try visiting http://localhost/'./$2
else
        echo 'This is not a valid command. Usage:'
        echo './installer.sh init app_name'

fi

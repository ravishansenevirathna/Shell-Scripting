!#/bin/bash

package=htop

sudo apt install $package

if [ $? -eq 0 ]
then
        echo "The installation of $package was successful."
        echo "the new command is available here:"
        
################ select any package that you will need to install in your ubuntu system.###############
        which $package
else
        echo "the $package is failed to install"
fi

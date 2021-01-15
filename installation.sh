#!/bin/bash

sudo true
#test $? -eq 0 || exit 1 "You should have a Admin / Sudo priveledge to run this script"

echo "-> Checking for previous program installation"

# Linux users

case $OSTYPE in
    "linux-gnu")
        if ! command -v curl, wget, nodejs &> /dev/null
        then
            apt-get update
        
            if ! command curl &> /dev/null
            then
                apt-get install curl -y
            else
                echo "curl installed ... skipping installation"
            fi
        
            if ! command nodejs &> /dev/null
            then
                apt-get install nodejs -y
            else
                echo "curl installed ... skipping installation"
            fi
        
            if ! command wget &> /dev/null
            then
                apt-get install wget -y
            else
                echo "curl installed ... skipping installation"
            fi
        
        else
            echo "-> All three programs have been installed previous... Exiting now."
            exit 1
        fi
    ;;
    "darwin")
        if ! command -v curl, wget, nodejs &> /dev/null
        then
            if ! command curl &> /dev/null
            then
                brew install curl
            else
                echo "curl installed ... skipping installation"
            fi
            
            if ! command nodejs &> /dev/null
            then
                brew install nodejs
            else
                echo "curl installed ... skipping installation"
            fi
            
            if ! command wget &> /dev/null
            then
                brew  install wget
            else
                echo "curl installed ... skipping installation"
            fi
            
        else
            echo "-> All three programs have been installed previous... Exiting now."
            exit 1
        fi
    ;;
esac

# macOS users

#!/bin/bash
cd `dirname $0`

bash ln_conf.sh

if !(type fish > /dev/null 2>&1); then
    bash fish/install.sh
fi

if [ ! -d $HOME/.nvm ]; then
    bash nvm/install.sh
fi

if !(type vim > /dev/null 2>&1); then
    sudo apt install -y vim
fi

if !(type sensors > /dev/null 2>&1); then
    read -p "Do you need sensors? (y/n) :" YN
    if [ "$YN" = "y" ]; then
        sudo apt install -y lm-sensors
    fi
fi

if !(type rustup > /dev/null 2>&1); then
    read -p "Do you need rustup? (y/n) :" YN
    if [ "$YN" = "y" ]; then
        bash rust/install.sh
    fi
fi

if !(type go > /dev/null 2>&1); then
    read -p "Do you need go? (y/n) :" YN
    if [ "$YN" = "y" ]; then
        sudo apt install -y golang
    fi
fi

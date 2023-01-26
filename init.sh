#!/bin/bash                                                                                                                     
set -x #echo on                                                                                                                 
cp .zshrc .screenrc ~/
ssh-keygen -b 2048 -t rsa -q -N ""
curl https://pyenv.run | bash

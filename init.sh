#!/bin/bash                                                                                                                     
set -x #echo on    

#copy setting files                                                                                                            
cp .zshrc .screenrc ~/
#set ssh 
ssh-keygen -t rsa -N ""
touch ~/.ssh/authorized_keys 
chmod 600 ~/.ssh/authorized_keys  
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
#pyenv installation
curl https://pyenv.run | bash

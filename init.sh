#!/bin/bash                                                                                                                     
set -x #echo on    

#copy setting files                                                                                                            
cp -n .zshrc .screenrc ~/
#set ssh 
FILE=~/.ssh/id_rsa

if [ ! -e $FILE ]  ; then
  ssh-keygen -t rsa -N ""
  cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
  chmod 600 ~/.ssh/authorized_keys  
else
  echo $FILE already exists. ssh-keygen is skipped.
fi
#pyenv installation
curl https://pyenv.run | bash

#!/bin/zsh
# zsh config and dotfiles
setopt EXTENDED_GLOB
ln -s ~/dotfiles/.zprezto/ ~/
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    rm -f "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# start zsh ssh agent
exec ssh-agent zsh

# config for efficient git
echo -en "GIT user.name: "
read $GIT_USER_NAME
git config --global user.name "$GIT_USER_NAME"
echo -en "GIT user.email: "
read $GIT_USER_EMAIL
git config --global user.email "$GIT_USER_EMAIL"
ssh-keygen -t rsa -N "" -C "$GIT_USER_EMAIL" -f ~/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa
echo "You should copy the next line into a new ssh key on github  https://github.com/settings/ssh)."
cat ~/.ssh/id_rsa.pub
echo "Then you can run 'ssh -T git@github.com' to check that the connection is working."

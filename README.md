setup.git
=========
Download and run this on a new Digital Ocean droplet running Ubuntu 14.04 LTS to
configure both the machine and your individual development environment as
follows:

```sh
# to start, please ssh login as root with your key
wget -qO- https://github.com/martin-at-ipal/setup/raw/master/update_locales.sh | sh
exit
# please ssh login as root again
wget -qO- https://github.com/martin-at-ipal/setup/raw/master/create_user.sh | sh -s <your_username>
su <your_username>
cd
wget -qO- https://github.com/martin-at-ipal/setup/raw/master/setup.sh | sh -s <your_username>
zsh
wget -qO- https://github.com/martin-at-ipal/setup/raw/master/configure_zsh.sh | zsh -s "<your_git_user.name>" "<your_git_user.email>"
# you can now exit and reconnect as <your_username> with the same key

```
Download and install Menlo-Powerline font on your local machine (for correct prompt display in zsh): [Menlo-Powerline.otf](https://github.com/thlorenz/dotfiles/blob/master/fonts/Menlo-Powerline.otf?raw=true)

Run the following for ubismart only
```sh
wget -qO- https://github.com/martin-at-ipal/setup/raw/master/ubi_setup.sh | sh
```

###Notes: 
* You will probably need to exit and reconnect to apply the new shell profile.
* It may also be necessary to install flycheck from emacs package manager.

See also https://github.com/hamdi-aloulou/dotfiles and
[Startup Engineering Video Lectures 4a/4b](https://class.coursera.org/startup-001/lecture/index)
for more details.






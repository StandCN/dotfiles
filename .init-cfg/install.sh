# init dir $HOME/.cfg
mkdir -p $HOME/.cfg

git config --global init.defaultBranch main

git clone --bare https://github.com/StandCN/dotfiles.git  $HOME/.cfg

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc

cd $HOME
# checkout on focus
config checkout -f



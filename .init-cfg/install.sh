
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# oh-my-zsh plugins
echo "plugins=(git vi-mode rust golang fzf docker vscode scala tmux redis-cli vim-interaction node nvm npm pip python spring ssh-agent sudo ufw ubuntu)" >> $HOME/.zshrc

# node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

# init dir $HOME/.cfg
mkdir -p $HOME/.cfg

git clone --bare git@github.com:StandCN/dotfiles.git  $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
cd $HOME
# checkout on focus
config checkout -f



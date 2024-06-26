# dotfiles

更新配置文件方法
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/StandCN/dotfiles/main/.init-cfg/install.sh)"
```
若需要代理
```
sh -c "$(curl -x socks5://192.168.0.1:10808 -fsSL https://raw.githubusercontent.com/StandCN/dotfiles/main/.init-cfg/install.sh)"
```

ubuntu ustc mirror
```
sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list
```

## 软件
```
sudo apt install ripgrep fzf neofetch clang cmake llvm unzip ucf proxychains4 python3 git wget python-is-python3
```
rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
```
cargo install joshuto ucf
cargo install gitui --locked
```
pip
```
pip install -i https://mirrors.ustc.edu.cn/pypi/web/simple pip -U
pip config set global.index-url https://mirrors.ustc.edu.cn/pypi/web/simple
```

## proxy
```
export HTTP_PROXY=http://192.168.0.1:10809
export HTTPS_PROXY=https://192.168.0.1:10809

git config --global http.proxy 'socks5://192.168.0.1:10808'
git config --global --unset http.proxy
```


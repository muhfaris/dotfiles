## Requirement
- zsh
- python2
- python3 
- [rigrep](https://github.com/BurntSushi/ripgrep) 
- [fd-find](https://github.com/sharkdp/fd#installation)
- gopls
- go
- git
- node
- pynvim
- [prettier](https://prettier.io/)
- xclip
- ack-grep
- neovim latest
- yamllint (sudo apt-get install yamllint)
- [neomake](https://github.com/neomake/neomake)

## Optional
- brave-browser (for markdown preview)

## Installation
1. install zsh

  `sudo apt install zsh`

  `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`


2. install vim-plug
``` 
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

3. install all plugin \
  `:PlugInstall`

4. install pip for python2
    
    `curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py`
    `sudo python2 get-pip.py`
    `pip2 install pynvim`

5. install pip for python3

    `sudo apt install python3-pip`


6. install pynvim for python2 and python3

    `pip2 install pynvim`
    
    `pip3 install pynvim`

7. install node

    `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash`
`nvm install v16.14.2`

8. setup language
    - Go
    ```
    export GOROOT="$HOME/.opt/go"
    export GOPATH="$HOME/workspace"
    export GOBIN=$GOPATH/bin
    export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
    ```


## Language Support & Autocomplete
- Go
- Javascript
- PHP
- Python

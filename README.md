## Coding-In-Vim

Coding-in-vim, or CIM in short, is [Shiyue He](https://octhe.github.io/)'s project-oriented coding environment that integrates the workflow around VIM editor.
Here is the list of the target projects:
- C/C++
    - *Linux kernel*
    - *iw*
    - *xv6*
    - *GNURadio*
- Python
    - *leetcode_unit*
- VimScript/Lua
    - *CIM*
- Latex
    - *xelatex -> bibtex -> xelatex -> xelatex* (Thsis)
    - *pdflatex -> bibtex -> pdflatex -> pdflatex* (paper)
    - *xelatex*
- Markdown
    - *MoreWireless*
    - *README.md*
    - *jekyll*

The workflow contains reading, writing, compilation, and debug.

## Ubuntu

CIM provides the coding environment of Projects iw, xv6, and Linux kernel on Ubuntu.
All these projects are based on C/C++, and uses `make` as their compile tool.


## Prerequisite

To read the code, CIM uses Vim as the editor, zsh is the recommended shell.
The compilation toolchain is *make*.

They can be installed by

    sudo apt install git zsh vim make

After installing *git*, it is recommended to set a proxy to avoid some network issues.
We can set a sock5 proxy with the following command

    git config --global http.proxy 'socks5://127.0.0.1:8088' 
    git config --global https.proxy 'socks5://127.0.0.1:8088' 

To avoid the network problem, it is recommended to set a proxy for the terminal, similar to the proxy in git.
The proxy can be set with the following command in the `~/.zshrc` file (suppose the shell is `zsh`).

    export http_proxy="socks5://127.0.0.1:7890"
    export https_proxy="socks5://127.0.0.1:7890"

The *vim-plug* can be automatically installed to manage plugins when vim is firstly started.
All plugins can be installed by vim-plug with `:PlugInstall`
vimrc provides some customized configurations at final.

Then, CIM can be installed by git

    git clone https://github.com/OctHe/All-in-Vim ~/.vim/

### Reading

The following plugins are used to support the code reading:
- [NERDTree](https://github.com/preservim/nerdtree)
- [fzf](https://github.com/junegunn/fzf)
- [tagbar](https://github.com/preservim/tagbar)
- [vim-airline](https://github.com/vim-airline/vim-airline)


### Writing

Coding writing includes common edit functions and language-specific functions.

CIM support common plugins include
- [auto-pairs](https://github.com/LunarWatcher/auto-pairs)
- [vim-commentary](https://github.com/tpope/vim-commentary)
- [vim-surround](https://github.com/tpope/vim-surround)

Language-specific functions requires autocompletion, linter, goto, and snippet functions.
These functions have been integrated into the language protocol server (LSP).
Therefore, CIM uses two famous LSP for C/C++ and python projects: [clangd](https://clangd.llvm.org/) and [pyright](https://github.com/microsoft/pyright).
To install them, uses

    sudo apt install clangd
    sudo pip3 install pyright

As the client, CIM uses [ALE](https://github.com/dense-analysis/ale) plugin instead of [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe).

clangd requires [bear](https://github.com/rizsotto/Bear) to automatically generate `complie_commands.json` file for make-based projects.
To install it

    sudo apt install bear

### Compilation


## Deepin

Deepin is based on Ubuntu, so it has similar packet manager, while the applications are most outdated.
    sudo apt update
    sudo apt install git zsh cmake make vim

Therefore, Deepin is recommended to use SpaceVim as the configuration.

    curl -sLf https://spacevim.org/install.sh | bash

## OpenSUSE

OpenSUSE uses *zypper* as the packet manager

    sudo zypper update
    sudo zypper install git zsh cmake make vim

Similarily, We can set a sock5 proxy with the same commands, if needed.

Neovim has been used in OpenSUSE for Python projects.
The plugin manager is *packer*.
It provides pyright as the language server protocol (LSP).

pyright can be installed with

    pip3 install pyright


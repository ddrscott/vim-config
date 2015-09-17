vim-config
==========

This is how I run VIM. Saved here so it's easier to setup on other terminals.

Setup
=====

0. backup existing ~/.vim and ~/.vimrc
1. git clone https://github.com/ddrscott/vim-config.git ~/.vim
2. ln -s ~/.vim/vimrc.vim ~/.vimrc
3. git submodule init
4. git submodule update --init --recursive
5. setup ctags
    ```
    brew install ctags-exuberant
    mv /Library/Developer/CommandLineTools/usr/bin/ctags /Library/Developer/CommandLineTools/usr/bin/ctags.orig
    type ctags
    cd /path/to/project
    ctags -R --languages=ruby --exclude=.* --exclude=log . $(bundle list --paths)
    ```


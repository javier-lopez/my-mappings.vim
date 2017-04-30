[my-mappings.vim](https://github.com/chilicuil/my-mappings.vim) is a global plugin who set mappings according to they way I use [vim](http://vim.org). It sets highly opinionated settings. Probably not something you would like to use straight ahead. Some of the features are:

- `Ctrl-[hjkl]` to move between panes
- `,` as map leader
- `<backspace>` for deleting visual selections
- make `Y` consistent with `D` and `C`
- `SS` to use sudo on current file to force overwrite
- avoid common mistakes, Q,W,QW, wq, etc.
- etc.

Requirements
------------

* Vim 7.0+

Installation
------------

- [Vundle](https://github.com/gmarik/vundle) way (recommended), add the following to your $HOME/.vimrc file:

        Bundle 'chilicuil/my-mappings.vim'

    And run inside of vim:

        :BundleInstall

- [Pathogen](https://github.com/tpope/vim-pathogen) way:

        $ git clone https://github.com/chilicuil/my-mappings.vim.git ~/.vim/bundle/my-mappings.vim

- **Manual** (simplest if you've never heard of vundle or pathogen), download the zip file generated from github and extract it to $HOME/.vim

        mv my-mappings.vim*.zip $HOME/.vim
        cd $HOME/.vim && unzip my-mappings.vim*.zip

    Update the help tags from vim:

        :helpt ~/.vim/doc/

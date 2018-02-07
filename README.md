# PEP8 style check compiler configuration for vim

# Installation

Place `pep8.vim` in the `compiler` directory the vimfiles (usually `~/.vim/` on
unix systems, or `$HOME/vimfiles/` on windows).

Alternatively, if using [pathogen](https://github.com/tpope/vim-pathogen),
clone this repo into `~/.vim/bundle`.

Requires that pep8 is installed. Try

    pip install pep8

or

    pip install pycodestyle

# Notes

If pep8 is not in the path, try changing the `CompilerSet makeprg` line in
`pep8.vim` to

    CompilerSet makeprg=python\ -m\ pep8

In python 3, pep8 has been renamed `pycodestyle`; Use

    CompilerSet makeprg=pycodestyle

or

    CompilerSet makeprg=python\ -m\ pycodestyle

# Usage

Select the compiler from within vim with the command

    :compiler pep8

then run pep8 on the current file with

    :make %

See [`:help compiler`](http://vimdoc.sourceforge.net/htmldoc/quickfix.html) and
[`:help make`](http://vimdoc.sourceforge.net/htmldoc/quickfix.html).

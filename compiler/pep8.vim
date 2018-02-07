" Vim compiler file
" Compiler:	PEP8 for python
" Maintainer:	Stephen Cook <mc dot steven at gmail dot com>
" Last Change:	2018 Feb 07

if exists("current_compiler")
  finish
endif
let current_compiler = "pep8"

if exists(":CompilerSet") != 2 " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=pep8

CompilerSet errorformat=
      \%E\%f:%l:%c:\ %t%n\ %m,
      \%-C\ %#%m,
      \%-Z\ %#^,

let &cpo = s:cpo_save
unlet s:cpo_save

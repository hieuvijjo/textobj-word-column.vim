if (exists("g:loaded_textobj_word_column"))
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

call textobj#user#plugin('wordcolumn', {
            \ 'word' : {
            \   'select-i' : 'ij',
            \   'select-i-function' : 'textobj#word_column#select_iw',
            \   'select-a' : 'aj',
            \   'select-a-function' : 'textobj#word_column#select_aw',
            \   },
            \ 'WORD' : {
            \   'select-i' : 'iJ',
            \   'select-i-function' : 'textobj#word_column#select_iW',
            \   'select-a' : 'aJ',
            \   'select-a-function' : 'textobj#word_column#select_aW',
            \   },
            \ })

let g:loaded_textobj_word_column = 1

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et sw=2 ts=2:

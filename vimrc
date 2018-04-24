
"------------------------
"pathogen.vim
"
" 2018-04-22
" http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
"------------------------
  "call pathogen#runtime_append_all_bundles()
  call pathogen#infect()
  call pathogen#helptags()
  "execute pathogen#infect()
  "syntax on
  "filetype plugin indent on
"------------------------

"-------------------------------
" set
"-------------------------------
" {{{

" set ci
set smartindent
" filetyp indent on
set ai
set clipboard=unnamedplus
set nocompatible
"set tabstop=4
"set sw=4
set tabstop=2
set sw=2
set et
set ic
set incsearch
set nohlsearch
if !has('nvim')
    colorscheme torte
    set wildmenu
    "set wildmode=longest,list,full
else
    colorscheme CodeSchool3
    "colorscheme jellybeans
    "colorscheme torte
    set termguicolors
endif

autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif

set runtimepath+=/home/bongjoon/viml/mpc/
set laststatus=2
" set laststatus=0
" set statusline=
" set statusline+=\ %f
set hidden
" }}}
"-------------------------------<

"-------------------------------
" key mapping
"-------------------------------
" {{{
nnoremap g[. :cd %:p:h<CR>
nnoremap Q 0yt=A<C-r>=<C-r>"<CR><Esc>
"nnoremap g[= 0yt=A<C-r>=<C-r>"<CR><Esc>
" nnoremap \= 0yt=A<C-r>=<C-r>"<CR><Esc>

  nnoremap <C-S> :w<CR>
  inoremap <C-S> <Esc>:w<CR>
  inoremap <C-e> <Esc>A
  inoremap <C-a> <Esc>0i

" 2018-04-12
  " nnoremap <C-X> :bro ol<CR>
  nnoremap <C-F2> :bro ol<CR>
" inoremap jk <Esc>
  nnoremap <C-k> :bro ol<CR>
  inoremap kk <Esc>:bro ol<CR>
" 2018-04-17
  nnoremap <F5> "=strftime("%c")<CR>P
  inoremap <F5> <C-R>=strftime("%c")<CR>
" 2018-04-19
  nnoremap <c-n> :bn<cr>
" nnoremap <c-p> :bp<cr>
" nnoremap <c-m> :bp<cr>

nnoremap q; q:
" }}}
"-------------------------------<


"-------------------------------
" Learn Vim script the Hard Way
"-------------------------------
" {{{
  let mapleader = " "
  " nnoremap <leader>d dd
  " <c-u> : delete text to the origin of line
  "         --> to uppercase
  
  " inoremap <c-u> <esc>viwUA
  " nnoremap <c-u> viwU
  inoremap <c-u> <esc>viwUA
  nnoremap <c-u> viwU
  
  " nnoremap <leader>ev :vsplit $MYVIMRC<cr>
  nnoremap <leader>ev :e $MYVIMRC<cr>
  nnoremap <leader>sv :source $MYVIMRC<cr>
  " 2018-04-20
    nnoremap <leader>ed :e ~/dir.txt<cr>
    nnoremap <leader>nn :bn<cr>
    nnoremap <leader>pp :bp<cr>
  
  " 2018-04-19
    iabbrev adn and
    iabbrev waht what
    iabbrev tehn then
    iabbrev teh the
    iabbrev Teh The
    iabbrev ssig -- <cr>Bongjoon Choi<cr>choibongjoon@gmail.com
  
    nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
    inoremap jk <Esc>
    inoremap <esc> <nop>
    cnoremap <esc> <nop>

  " 2018-04-22
    augroup filetype_python
      autocmd!
      autocmd FileType python     :iabbrev <buffer> iff if:<left>
    augroup END

    augroup filetype_javascript
      autocmd!
      autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
    augroup END

    set statusline=%f     " Path to the file
    set statusline+=%=    " Switch to the right side
    set statusline+=%l    " Current line
    set statusline+=/     " Separator
    set statusline+=%L    " Total lines
" Vimscript file settings -------------------- {{{
    augroup filetype_vim
      autocmd!
      autocmd FileType vim setlocal foldmethod=marker
    augroup END
" }}}
" }}}

" function TextwidthIsTooWide()
"   if &l:textwidth ># 80
"     return 1
"   endif
" endfunction
"------------------------------->


"-------------------------------
" CtrlP
"-------------------------------
  " 2018-04-20 {{{
    set runtimepath^=~/.vim/bundle/ctrlp.vim
  " 2018-04-21
    nnoremap <leader>cb :CtrlPBuffer<cr>
    nnoremap <leader>cr :CtrlPMRU<cr>
" }}}
"------------------------------->

" Color scheme
" {{{
nnoremap <leader>ne :e.<cr>
nnoremap <leader>clc :colorscheme CodeSchool3<cr>
nnoremap <leader>cld :colorscheme dracula<cr>
nnoremap <leader>clt :colorscheme torte<cr>
" nnoremap <leader>clj :colorscheme jellybeans<cr>
" }}}
"------------------------------->

"-------------------------------
" typescript-vim
"-------------------------------
" {{{
  let g:typescript_compiler_options = '--target es6'
" let g:typescript_compiler_options = ''
  autocmd QuickFixCmdPost [^l]* nested cwindow
  autocmd QuickFixCmdPost    l* nested lwindow
" }}}
"------------------------------->

"-------------------------------
" tsuquyomi
"-------------------------------

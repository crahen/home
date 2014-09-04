" vim mode
set nocompatible

" spaces
set expandtab
set shiftwidth=4
set tabstop=4
autocmd FileType make setlocal noexpandtab

" colors
syntax enable
set t_Co=256
set background=light
"colorscheme darkblue
colorscheme jellybeans

" backups
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.

" change buffer without saving
set hidden

" change directory to current file
autocmd BufEnter * silent! lcd %:p:h

" statusline
set ruler
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'jellybeans',
    \ 'component': {
    \   'lineinfo': ' %3l:%-2v',
    \ },
    \ 'component_function': {
    \   'readonly': 'MyReadonly',
    \   'fugitive': 'MyFugitive'
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
    \ }
"let g:lightline = {
"      \ 'colorscheme': 'jellybeans',
"      \ 'component': {
"      \   'readonly': '%{&readonly?"x":""}',
"      \ },
"      \ 'separator': { 'left': '', 'right': '' },
"      \ 'subseparator': { 'left': '|', 'right': '|' }
"      \ }
function! MyReadonly()
    return &readonly ? '' : ''
endfunction
function! MyFugitive()
    if exists("*fugitive#head")
        let _ = fugitive#head()
        return strlen(_) ? ''._ : ''
    endif
    return ''
endfunction

" configure vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'itchyny/lightline.vim'
call vundle#end()

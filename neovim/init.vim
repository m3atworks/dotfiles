set nocompatible
set rtp+=~/.fzf

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-slash'
Plug 'junegunn/vim-easy-align'
Plug 'roman/golden-ratio'
Plug 'rust-lang/rust.vim'
Plug 'hashivim/vim-terraform'

call plug#end()

" Leader
let mapleader  = "\<SPACE>"

set backspace=2
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler
set showcmd
set incsearch
set laststatus=2
set autowrite
set ignorecase
set smartcase
set gdefault

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

filetype plugin indent on

" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
let g:is_posix = 1

set background=light
colorscheme paramount

" Softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Keep the cursor on the same column
set nostartofline

set numberwidth=5
" Relative numbering
function! NumberToggle()
  if(&number == 0)
    set number
  else
    set nonumber
  endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>


" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<Tab>"
    else
        return "\<C-p>"
    endif
endfunction
inoremap <Tab> <C-r>=InsertTabWrapper()<CR>
inoremap <S-Tab> <C-n>

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

" Save file
nnoremap <Leader>w :w<CR>

" Buffer
set hidden


" Use ; for commands
nnoremap ; :
" Use Q for defaut register
nnoremap Q @q

" jj as Esc
inoremap jj <Esc>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Search and Replace
nmap <Leader>s :%s//g<Left><Left>

" FZF stuffs
nnoremap <Leader>f :GFiles<CR>
nnoremap <Leader>F :Files<CR>
nnoremap <Leader>b :Buffers<CR>

nmap <Leader>h :History<CR>
nmap <Leader>H :History:<CR>
nmap <Leader>S :History/<CR>

nmap <Leader>l :Blines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>' :Marks<CR>

" <Esc> to exit terminal-mode
tnoremap <Esc> <C-\><C-n>

" Terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1

" Always use vertical diffs
set diffopt+=vertical

" Reloads vimrc after saving but keep cursor position
if !exists('*ReloadVimrc')
   fun! ReloadVimrc()
       let save_cursor = getcurpos()
       source $MYVIMRC
       call setpos('.', save_cursor)
   endfun
endif
autocmd! BufWritePost $MYVIMRC call ReloadVimrc()


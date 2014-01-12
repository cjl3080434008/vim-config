set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
set nu
language messages zh_CN.utf-8
set encoding=utf-8
set fileencoding=utf-8  
set fileencodings=ucs-bom,utf-8,chinese  
set guifont=Courier_New:h12:cANSI
syntax on
set ruler
set foldenable
set foldmethod=manual
set background=dark  "背景颜色
set nocompatible  
colorscheme murphy
set nobackup
set showmatch
set matchtime=1
set scrolloff=3
set smartindent
set autoindent
set cindent
set tags=tags;
set autochdir
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态栏
set autoread
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
set completeopt=preview,menu
filetype plugin on
set clipboard+=unnamed
:set makeprg=g++\ -Wall\ \ %
set magic                   
set guioptions-=T           
set guioptions-=m           
:set wrap

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=$VIMRUNTIME/vundle
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" My bundles here:
"
" original repos on GitHub
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/taglist.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'vim-scripts/AutoComplPop'
Bundle 'kien/ctrlp.vim'
"Bundle 'davidhalter/jedi-vim'
Bundle 'L9'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'tlvince/vim-compiler-python'
Bundle 'vim-scripts/pythoncomplete'
filetype plugin indent on     " required!

let mapleader = ","
"====================vim-powerline==================
let g:Powerline_symbols = 'fancy'
set laststatus=2

"====================taglist==================
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
map <Leader>t :TlistToggle<CR> 


"====================needtree==================
map <F3> :NERDTreeToggle<CR>

"====================jedi-vim================
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#completions_enabled = 1

"====================ctrlp===================
let g:ctrlp_map = '<c-p>'

"====================pythoncomplete==========
autocmd FileType python runtime! autoload/pythoncomplete.vim



"=======================key map==========
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
vnoremap <Leader>s :sort<CR>
"Useful settings
set history=700
set undolevels=700
"select autocomplete
set completeopt=longest,menuone
function! OmniPopup(action)
     if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction
inoremap <silent>j <C-R>=OmniPopup('j')<CR>
inoremap <silent>k <C-R>=OmniPopup('k')<CR>


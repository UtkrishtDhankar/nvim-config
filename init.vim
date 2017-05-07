" My plugins start here
call plug#begin('~/.vim/plugged')

" vim-airline, the lean mean statusline
Plug 'bling/vim-airline'

" autocompletion for vim
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

" linting for like all the languages
Plug 'scrooloose/syntastic'

" Quoting/paranthesizing made simple
Plug 'tpope/vim-surround'

" Commenting things
Plug 'tpope/vim-commentary'

" Enhanced cpp highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" Detects indent settings on a file by file basis
Plug 'ciaranm/detectindent'

" Git diffs in gutter
Plug 'airblade/vim-gitgutter'

" Indentation guide
Plug 'yggdroot/indentline'

" Colored braces
Plug 'kien/rainbow_parentheses.vim'

call plug#end()

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i uselet g:airline_powerline_fonts = 1


" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


set background=light

set tabstop=4
set shiftwidth=4

set number
imap jk <Esc>`^

noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

" This remaps arrow keys to switch between windows
nmap <silent> <Up> :wincmd k<CR>
nmap <silent> <Down> :wincmd j<CR>
nmap <silent> <Left> :wincmd h<CR>
nmap <silent> <Right> :wincmd l<CR>

tnoremap <Esc> <C-\><C-n>

au BufWinEnter * :DetectIndent

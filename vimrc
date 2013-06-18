" This vimrc file uses vundle to auto install the plugins, get it via:
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" Use :BundleInstall or BundleList to install
" =========================================
set nocompatible
set bs=2
set number
filetype off

" map <leader> 
let mapleader = ","

" tabs move to
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"*** let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"*** The bundles you install will be listed here
 
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'

filetype plugin indent on

"*** The rest of your config follows here

augroup vimrc_autocmds
	autocmd!	
	" highlight characters past column 120
	autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
	autocmd FileType python match Excess /\%120v.*/
	autocmd FileType python set nowrap
augroup END

"** Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
set laststatus=2

"**NerdTree setup
"** F2 key to activate
map <F2> :NERDTreeToggle<CR>


" ** Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual,
" operator,  modes)
" ]]            Jump on next class or function (normal, visual, operator
" modes)
" [M            Jump on previous class or method (normal, visual, operator
" modes)
" ]M            Jump on next class or method (normal, visual, operator
" modes)
let g:pymode_rope = 1
" Load run code plugin
let g:pymode_run = 1
let g:pymode_run_key = '<leader>r'
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
" Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
" Support virtualenv
let g:pymode_virtualenv = 1
" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" Don't autofold code
let g:pymode_folding = 0
" Enable pymode's custom syntax highlighting
let g:pymode_syntax = 1
" Enable all python highlightings
let g:pymode_syntax_all = 1
" Highlight "print" as function
let g:pymode_syntax_print_as_function = 0
" Highlight indentation errors
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
" Highlight trailing spaces
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" Highlight string formatting
let g:pymode_syntax_string_formatting = g:pymode_syntax_all
" Highlight str.format syntax
let g:pymode_syntax_string_format = g:pymode_syntax_all
" Highlight string.Template syntax
let g:pymode_syntax_string_templates = g:pymode_syntax_all
" Highlight doc-tests
let g:pymode_syntax_doctests = g:pymode_syntax_all
" Highlight builtin objects (__doc__, self, etc)
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all
" Highlight builtin functions
let g:pymode_syntax_builtin_funcs = g:pymode_syntax_all
" Highlight exceptions
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all
" Highlight equal operator
let g:pymode_syntax_highlight_equal_operator = g:pymode_syntax_all
" Highlight stars operator
let g:pymode_syntax_highlight_stars_operator = g:pymode_syntax_all
" Highlight `self`
let g:pymode_syntax_highlight_self = g:pymode_syntax_all
" For fast machines
let g:pymode_syntax_slow_sync = 0

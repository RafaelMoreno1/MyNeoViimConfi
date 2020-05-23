call plug#begin('~/.local/share/nvim/plugged')
Plug 'zchee/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'
Plug 'morhetz/gruvbox'
Plug 'iCyMind/NeoSolarized'

call plug#end()

" plug para descativar un complete que cause conflicto con ejemplo
" metodo:Plug 'foo/bar', { 'on': [] }
" ejemplo: Plug 'rking/ag.vim', { "disabled": true }

" esconder barra de jedi atomaticamente
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" navegar por la lista de autocompletar con Tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

"configuracion neomake 
let g:neomake_python_enabled_makers = ['pylint']

"comando para iniciar la verificación de sintaxis automatica
call neomake#configure#automake('nrwi', 500)

" Resalta tu aera aera para copiar
hi HighlightedyankRegion cterm=reverse gui=reverse
" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000

"esquema de colores de Vim
colorscheme gruvbox
"tema

"set background=dark " use dark mode

" otro tema
"colorscheme NeoSolarized


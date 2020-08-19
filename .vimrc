" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has('persistent_undo')
  set undofile	" keep an undo file (undo changes after closing)
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
  set number
  colorscheme desert
  syntax enable
  set background=dark
  colorscheme gruvbox
  set mouse=a
  set tabstop=8
  set softtabstop=0
  set expandtab
  set shiftwidth=2
  set smarttab
  set list
  "set listchars=eol:¬,tab:>␣,trail:~,extends:>,precedes:<,space:·
  set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨,space:·
  set path=$PWD/**
  set wildignore+=**/build/**,**/out/**
endif

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

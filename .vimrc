 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'
 NeoBundle 'Shougo/unite.vim'
 NeoBundle 'Shougo/neocomplete'
 NeoBundle 'Shougo/neosnippet'
 NeoBundle 'Shougo/neosnippet-snippets'
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'rails.vim'
 NeoBundle 'dbext.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

" Plugin key-mappings.
 map <C-n> :NERDTreeToggle<CR>

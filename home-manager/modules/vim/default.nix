{ pkgs, ... }:

{
    programs.vim = {
        enable = true;

        plugins = with pkgs.vimPlugins; [
            ayu-vim
            vim-airline
            vim-nix
            nerdtree
            vim-airline-themes
            vim-devicons
            vim-nerdtree-syntax-highlight
            gruvbox
            gruvbox-material
            everforest
            vim-moonfly-colors
            vim-gitgutter
            catppuccin-vim
        ];

        settings = {
            ignorecase = true;
            number = true;
            relativenumber = true;
            tabstop = 4;
            shiftwidth = 4;
            expandtab = true;
            background = "dark";
        };

        extraConfig = ''
            autocmd VimEnter * :colorscheme  catppuccin  
            autocmd VimEnter * :AirlineTheme catppuccin

            syntax enable 
            set autoindent
            set laststatus=2
            set encoding=UTF-8
            set noshowmode
            set nocompatible
            set termguicolors
            set tabstop=4
            set shiftwidth=4
            set expandtab

            nnoremap <A-n> :NERDTree<CR>
            nnoremap <A-t> :NERDTreeToggle<CR>
            nnoremap <A-f> :NERDTreeFind<CR>
            nnoremap <A-s> :wa<CR>
            nnoremap <A-z> :undo<CR>
            nnoremap <A-e> :q<CR>
            nnoremap <S-t> :terminal<CR>

            let g:airline#extensions#tabline#left_sep = ''
            let g:airline#extensions#tabline#left_alt_sep = '/'
            let g:airline#extensions#tabline#formatter = 'default'
            let g:airline#extensions#tabline#enabled = 1
            let g:airline_first_char = { '' : '' }
            let g:airline_multiline = 0
            let g:airline_left_sep = ''
            let g:airline_right_sep = ''
            let g:indentLine_showFirstIndentLevel = 1
            let g:indentLine_setColors = 0

            let g:webdevicons_enable_nerdtree = 1
            let g:webdevicons_conceal_nerdtree_brackers = 0
            let g:webdevicons_enable_unite = 1
            let g:webdevicons_enable_denite = 1
            let g:webdevicons_enable_vimfiler = 1
            let g:webdevicons_enable_airline_tabline = 1
            let g:webdevicons_enable_airline_statusline = 1
            let g:webdevicons_enable_ctrlp = 1
            let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1

            let ayucolor="mirage"

            let g:tokyonight_style = 'night'
            let g:tokyonight_enable_italic = 1
        '';
    };
}

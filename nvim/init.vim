" SECTION: Install Plugin HERE
"====================================================================
" Pluggins{{{1
call plug#begin(stdpath('data') . '/plugged')
" Plug 'ambv/black'
" Finder Management{{{2
Plug 'jbyuki/instant.nvim'
Plug 'https://github.com/dyng/ctrlsf.vim'
Plug 'preservim/nerdtree'
Plug 'https://github.com/tpope/vim-vinegar'
Plug 'ryanoasis/vim-devicons'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/liuchengxu/nerdtree-dash'
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight.git'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'mcchrish/nnn.vim'
Plug 'pechorin/any-jump.vim'
"}}}
" Layout Management{{{2
Plug 'https://github.com/camspiers/animate.vim'
Plug 'https://github.com/zefei/vim-wintabs-powerline.git'
" Plug 'https://github.com/ccakes/stack.vim'
Plug 'https://github.com/wesQ3/vim-windowswap'
Plug 'https://github.com/wellle/visual-split.vim'
Plug 'https://github.com/mtth/scratch.vim'
" Plug 'https://github.com/mhinz/vim-startify'
Plug 'https://github.com/dhruvasagar/vim-zoom'
Plug 'https://github.com/zefei/vim-wintabs.git'
Plug 'https://github.com/junegunn/vim-peekaboo'
"}}}2
" Activity Management{{{2
Plug 'https://github.com/itchyny/calendar.vim'
Plug 'https://github.com/davidoc/taskpaper.vim'
Plug 'vimwiki/vimwiki', {'branch':'dev'}
" Plug 'https://github.com/tools-life/taskwiki'
" Plug 'https://github.com/powerman/vim-plugin-AnsiEsc.git'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/lvht/tagbar-markdown.git'
" Plug 'https://github.com/blindFS/vim-taskwarrior'
"}}}
" Editing Management{{{2
Plug 'https://github.com/AndrewRadev/splitjoin.vim'
Plug 'https://github.com/brooth/far.vim'
Plug 'https://github.com/matze/vim-move'
Plug 'https://github.com/kkoomen/vim-doge'
Plug 'https://github.com/rhysd/clever-f.vim.git'
Plug 'mattn/emmet-vim'
Plug 'andymass/vim-matchup'
Plug 'Chiel92/vim-autoformat'
Plug 'easymotion/vim-easymotion'
Plug 'https://github.com/haya14busa/incsearch.vim'
Plug 'https://github.com/haya14busa/incsearch-easymotion.vim'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" Cut/ Copy/ Subtitute
Plug 'https://github.com/svermeulen/vim-cutlass.git'
Plug 'https://github.com/svermeulen/vim-yoink.git'
" Plug 'https://github.com/svermeulen/vim-subversive.git'
Plug 'godlygeek/tabular'
Plug 'https://github.com/terryma/vim-expand-region.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/tpope/vim-commentary.git'
" Plug 'https://github.com/preservim/nerdcommenter'
Plug 'https://github.com/terryma/vim-multiple-cursors.git'
" Plug 'https://github.com/mg979/vim-visual-multi'
Plug 'https://github.com/dhruvasagar/vim-table-mode'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/tpope/vim-unimpaired.git'
" Plug 'garbas/vim-snipmate'
Plug 'https://github.com/honza/vim-snippets.git'
"}}}
" Helper Management{{{2
Plug 'https://github.com/skywind3000/vim-quickui'
Plug 'liuchengxu/vim-which-key'
"}}}
" Database Management{{{2
Plug 'https://github.com/tpope/vim-dadbod'
Plug 'https://github.com/kristijanhusak/vim-dadbod-ui'
Plug 'https://github.com/kristijanhusak/vim-dadbod-completion'
"}}}
" Command Management{{{2
Plug 'https://github.com/tpope/vim-dispatch'
Plug 'https://github.com/skywind3000/asyncrun.vim'
Plug 'https://github.com/osyo-manga/vim-over'
Plug 'https://github.com/arithran/vim-delete-hidden-buffers.git'
"}}}
" Workspace Management{{{2
Plug 'https://github.com/zhimsel/vim-stay'
Plug 'https://github.com/Konfekt/FoldText'
Plug 'https://github.com/Konfekt/FastFold'
Plug 'https://github.com/gcmt/taboo.vim'
Plug 'https://github.com/MattesGroeger/vim-bookmarks.git'
Plug 'https://github.com/tpope/vim-obsession.git'
Plug 'https://github.com/kshenoy/vim-signature.git'
" Plug 'http://github.com/jeetsukumaran/vim-markology'

"}}}
" Version Control Management{{{2
Plug 'mhinz/vim-signify'
Plug 'https://github.com/mbbill/undotree.git'
" Plug 'https://github.com/simnalamburt/vim-mundo'
" Plug 'https://github.com/sjl/gundo.vim'
Plug 'https://github.com/tpope/vim-fugitive.git'
"}}}
" Tag Management{{{2
" Plug 'https://github.com/ludovicchabant/vim-gutentags.git'
Plug 'liuchengxu/vista.vim'
" }}}
" Others{{{2
Plug 'https://github.com/puremourning/vimspector'
" Plug 'https://github.com/AndrewRadev/switch.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'https://github.com/jceb/vim-orgmode'
Plug 'https://github.com/takac/vim-hardtime'
Plug 'https://github.com/liuchengxu/vim-clap.git'
Plug 'junegunn/goyo.vim'
Plug 'https://github.com/junegunn/limelight.vim.git'
Plug 'https://github.com/rizzatti/dash.vim'
Plug 'ChristianChiarulli/codi.vim'
Plug 'https://github.com/chrisbra/NrrwRgn/'
"}}}
" Support File Types{{{2
" Plug 'https://github.com/editorconfig/editorconfig-vim'
Plug 'posva/vim-vue'
Plug 'https://github.com/nelstrom/vim-visual-star-search.git'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'https://github.com/mhartington/oceanic-next.git'
" Plug 'https://github.com/joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'psliwka/vim-smoothie'
Plug 'https://github.com/ternjs/tern_for_vim.git'
Plug 'plasticboy/vim-markdown'"
Plug 'https://github.com/othree/yajs.vim.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/HerringtonDarkholme/yats.vim.git'
Plug 'https://github.com/hdima/python-syntax.git'
Plug 'https://github.com/uiiaoo/java-syntax.vim.git'
Plug 'mxw/vim-jsx'
Plug 'https://github.com/miyakogi/conoline.vim'
" Text Object
Plug 'https://github.com/wellle/targets.vim.git'
Plug 'https://github.com/kana/vim-textobj-user.git'
Plug 'https://github.com/machakann/vim-textobj-delimited.git'
Plug 'https://github.com/michaeljsmith/vim-indent-object.git'
Plug 'https://github.com/glts/vim-textobj-comment.git'
Plug 'https://github.com/kana/vim-textobj-entire.git'
Plug 'https://github.com/chun-yang/vim-textobj-chunk.git'
"Kotlin
Plug 'udalov/kotlin-vim'

"}}}
call plug#end()
"}}}1
" Linking{{{1
"====================================================================
" Linking to initial Pluggin
set runtimepath^=~/.vim runtimepath+=~/.vim/after
"set runtimepath=$XDG_CONFIG_HOME/vim,$VIM,$VIMRUNTIME,$XDG_CONFIG_HOME/vim/after
set  runtimepath+=/usr/local/opt/fzf

let &packpath = &runtimepath
source ~/.vimrc
" source ~/GitHub/dotfiles/.vimrc
"}}}
" Abbreviation{{{1
iabbrev --. `●`
iabbrev --# `[☛]`
iabbrev #-- `[☚]`
iabbrev --p `[✏]`
iabbrev --x `[✘]`
iabbrev --v `[✔]`
iabbrev --l `⮑`
iabbrev --+ `✙`
iabbrev --^ ~~▼
iabbrev ==== ~~--------------------------------------------------------
iabbrev ++++ <tab><tab><tab><tab><tab><tab><tab><tab><tab><tab><tab><tab><tab>~~****
iabbrev bbb border: 1px solid red;


iabbrev lesn lens
iabbrev fotns fonts
iabbrev javasciprt javascript
iabbrev desciprtion description
iabbrev descirption description
iabbrev escpae escape
iabbrev charecter character
iabbrev chpter chapter
iabbrev funciton function
iabbrev satck stack
iabbrev psuh push
iabbrev sotre store
iabbrev serach search
iabbrev improt import
iabbrev Likn Link
iabbrev coulmn column
iabbrev mpa map
iabbrev tets test
iabbrev siwtch switch
iabbrev opne open
iabbrev makr make
iabbrev ntex next
iabbrev funciton function
iabbrev backgorund background
iabbrev backgournd background
iabbrev vlaue value
iabbrev cneter center
iabbrev cosnt const
iabbrev retrun return
iabbrev sapce space
iabbrev deisgn design
iabbrev reqeust request
iabbrev motoin motion
iabbrev iimport import
iabbrev Swiitch Switch
iabbrev mian main
iabbrev naem name
iabbrev imoprt import
iabbrev slecet select
iabbrev butotn button
iabbrev epxort export

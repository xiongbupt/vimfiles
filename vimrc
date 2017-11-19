set nocompatible              " be iMproved
filetype off                  " required!

" OS-specific settings. Keep actual changes to a minimum. Set variables
" instead, and use them later.
if has('win32') || has('win64')
	" Override the default vimfiles path on Windows. Use .vim instead, which
	" makes cross-platform settings easier.
	set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
    set guifont=Consolas:h14
	set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
    set backupdir=~/.vimbackup/
    set directory=~/.vimbackup/Temp
    set undodir=~/.vimbackup/Temp
    set guioptions-=Tmr
    " 解决菜单乱码
    set encoding=utf-8
    set langmenu=zh_CN
    let $LANG = 'zh_CN.UTF-8'
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
else
    set backupdir=~/.vimbackup/
    set directory=~/.vimbackup/Temp
    set undodir=~/.vimbackup/Temp
endif

let path='~/.vim/bundle'
call plug#begin(path)

" My bundles here:
"
" original repos on GitHub
" 安装的插件
Plug 'tpope/vim-fugitive'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'tpope/vim-rails.git'
" Plugin 'vimwiki/vimwiki'
" 从markdown中拷贝出来
Plug 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
" Plugin 'plasticboy/vim-markdown'
"

Plug 'ervandew/supertab'

"markdown
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'

" pandoc相关
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 

"Plug 'sjl/gundo.vim'
Plug 'mbbill/undotree'

Plug 'tpope/vim-surround'
" 状态栏相关插件
Plug 'Lokaltog/vim-powerline'

" solarized主题
Plug 'altercation/vim-colors-solarized'

" 终端颜色添加
Plug 'chriskempson/base16-vim'

"Plug 'junegunn/fzf', { 'dir': '/usr/local/opt/fzf', 'do': '/usr/local/opt/fzf/install --all' }
if has("unix")
    Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
endif

"  显示git修改的文件
Plug 'airblade/vim-gitgutter'

" 在.h文件和源文件之间进行跳转
Plug 'vim-scripts/a.vim'

" tagbar安装，为了显示列表
Plug 'majutsushi/tagbar'

" 代码注释插件
Plug 'scrooloose/nerdcommenter' 

" nerdTree工程文件浏览
Plug 'scrooloose/nerdtree'

" minibuffer插件，用来查看buffer
Plug 'fholgado/minibufexpl.vim'

" Vim中的Grep
Plug 'yegappan/grep'

" Vim中添加pydict插件
" Plug 'rkulla/pydiction'

" html以及css插件
Plug 'mattn/emmet-vim'

" html语法高亮
Plug 'othree/html5.vim'

" html,python,c代码格式化
Plug 'Chiel92/vim-autoformat'

" 括号高亮显示
Plug 'kien/rainbow_parentheses.vim'

" YouCompleteMe
"Plugin 'Valloric/YouCompleteMe'

" 代码模板
" Plugin 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" 括号自动补全
Plug 'Raimondi/delimitMate'

" python syntax
"Plug 'hdima/python-syntax'
"

"" Most Recently Used
Plug 'vim-scripts/mru.vim'

"" ctrlp.vim
Plug 'kien/ctrlp.vim'

""跳转
Plug 'justinmk/vim-sneak'

""语法检查
Plug 'w0rp/ale'

""python设置
""vim自动补全
Plug 'davidhalter/jedi-vim'
Plug 'python-mode/python-mode'


call plug#end()
"call vundle#end()
"" svn插件
"Plugin 'juneedahamed/svnj.vim'

"Plugin 'vimim/vimiPlum'
"Plugin 'vim-scripts/VimIM'
" vim-scripts repos
"Plugin 'L9'
"Plugin 'FuzzyFinder'
"" non-GitHub repos
"Plugin 'git://git.wincent.com/command-t.git'
"" Git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///Users/gmarik/path/to/plugin'
"" ...

"filetype plugin indent on     " required!
"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install (update) bundles
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
"


" 设置leader为;
let mapleader="\<Space>"

"" 设置快捷键将选中文本块复制至系统剪贴板
"vnoremap <Leader>y "+y
"" 设置快捷键将系统剪贴板内容粘贴至 vim
"nmap <Leader>p "+p
"" 定义快捷键关闭当前分割窗口
"nmap <Leader>q :q<CR>
"" 定义快捷键保存当前窗口内容
"nmap <Leader>w :w<CR>
"" 定义快捷键保存所有窗口内容并退出 vim
"nmap <Leader>WQ :wa<CR>:q<CR>
"" 不做任何保存，直接退出 vim
"nmap <Leader>Q :qa!<CR>
"" 依次遍历子窗口
"nnoremap nw <C-W><C-W>
"" 跳转至右方的窗口
"nnoremap <Leader>lw <C-W>l
"" 跳转至方的窗口
"nnoremap <Leader>hw <C-W>h
"" 跳转至上方的子窗口
"nnoremap <Leader>kw <C-W>k
"" 跳转至下方的子窗口
"nnoremap <Leader>jw <C-W>j
"" 定义快捷键在结对符之间跳转，助记pair
"nmap <Leader>pa %

"quickfix
nmap <leader>cnn :cn<cr>
nmap <leader>cp :cp<cr>
nmap <leader>cw :cw 10<cr> 

"""""忽视大小写"""""
set ignorecase
set smartcase

""""""""""设置文件类型缩进""""""""""
filetype plugin indent on
filetype indent on

""""语法高亮""""
syntax enable
syntax on

""""""""""""""""
set smartindent
set autoindent
set cindent " 设置缩进方式，类似C语言的缩进

" 总是显示状态栏
set laststatus=2

" 禁止折行
"set nowrap

"""""tab相关的设置"""""""
""""设置TAB字符占多少个空格
set tabstop=4
""""设置每层缩进的空格数
set shiftwidth=4
""""是否将输入的TAB自动展成空格。开启后要输入TAB，需要输入Ctrl-V <TAB>
set expandtab
""""在行首按TAB将加入shiftwidth个空格，否则加入tabstop个空白
set smarttab
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

""""设置历史记录条目
set history=1000

""""设置读取编码的顺序
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,ISO-8859

""""设置行号
set number

""""设置响铃取消
set visualbell


""""配色方案""""""""
colorscheme desert
if has("gui_running")
	set background=dark
	"    colorscheme solarized
else
	"    set background=light
	"   colorscheme solarized
	colorscheme desert
endif
"set background=dark

" base16颜色设置，貌似没有起作用
let base16colorspace=256

" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"let g:solarized_termcolors=16
""let g:solarized_menu=0
""colorscheme solarized
""set background=dark
"
""colorscheme desert
"colorscheme solarized
"colorscheme molokai
"colorscheme phd
""""""""""""""""""""

" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
fun! ToggleFullscreen()
	call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>
" 启动 vim 时自动全屏
" autocmd VimEnter * call ToggleFullscreen()
""""显示标记
set ruler

""""编辑相关
set backspace=indent,eol,start
set whichwrap=b,s,<,>,[,]
set mousemodel=popup

""""高亮搜索
set hlsearch

set showcmd

""""所有模式下均可以使用鼠标
set mouse=a

""""启动VIM时不显示介绍信息
set shortmess+=I

""""设置搜索方式
set incsearch

""""代码折叠"""""""""""""""""""""""
"
" 基于语法进行折叠
"set foldmethod=syntax
"
" 基于缩进进行折叠
set foldmethod=indent
set foldlevel=99
" 启动 vim 时关闭折叠代码
set nofoldenable
" 操作：za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠。
""""""""""""""""""""""""""""""""""""

"google vim group
""vim记住位置
au BufReadPost * if line("'\"")>0|if line("'\"")<=line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"鼠标所在行列高亮
"set cursorcolumn
"set cursorline

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
let t_Co=256
"set -g default-terminal "screen-256color"

"VIM配置文件编辑与生效
nmap ,s :source $MYVIMRC
nmap ,v :e $MYVIMRC

"""""设置备份
set backup


"vim-markdown设置
let g:vim_markdown_folding_disabled=1

"gundo设置
nnoremap <F4> :UndotreeToggle<CR>

"""""设置undo的级数
set undolevels=50000
set undofile
set noswapfile


" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
	call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
	call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
	call mkdir(expand(&directory), "p")
endif
"set writebackup



"""""" vim-indent缩进显示相关配置
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle
" vim-indent在vim终端下的配置，目前无用
"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=darkgrey



""""""a.vim相关配置
" *.cpp 和 *.h 间切换
nmap <Leader>ch :A<CR>
" 子窗口中显示 *.cpp 或 *.h
nmap <Leader>sch :AS<CR>


""""""""""Ctag相关配置
" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>


""""""""""tagbar设置
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_right=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list 
nnoremap <Leader>tl :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp = {
			\ 'ctagstype' : 'c++',
			\ 'kinds' : [
			\ 'd:macros:1',
			\ 'g:enums',
			\ 't:typedefs:0:0',
			\ 'e:enumerators:0:0',
			\ 'n:namespaces',
			\ 'c:classes',
			\ 's:structs',
			\ 'u:unions',
			\ 'f:functions',
			\ 'm:members:0:0',
			\ 'v:global:0:0',
			\ 'x:external:0:0',
			\ 'l:local:0:0'
			\ ],
			\ 'sro' : '::',
			\ 'kind2scope' : {
			\ 'g' : 'enum',
			\ 'n' : 'namespace',
			\ 'c' : 'class',
			\ 's' : 'struct',
			\ 'u' : 'union'
			\ },
			\ 'scope2kind' : {
			\ 'enum' : 'g',
			\ 'namespace' : 'n',
			\ 'class' : 'c',
			\ 'struct' : 's',
			\ 'union' : 'u'
			\ }
			\}


""""""""""NerdTree设置
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1



"" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
map <C-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>"""""""""Minibuffer相关设置


""""""""""vimGrep相关设置
" 使用 Grep.vim 插件在工程内全局查找，设置快捷键。快捷键速记法：search in project
nnoremap <Leader>sp :Grep -ir<CR><CR><CR>
" 使用 Grep.vim 插件在当前文件中查找，设置快捷键。快捷键速记法：search in buffer
nnoremap <Leader>sb :GrepBuffer -ir<CR><CR>
"vimim设置
"let g:vimim_cloud = 'google,sogou,baidu,qq'  
"let g:vimim_map = 'tab_as_gi'  
" :let g:vimim_mode = 'dynamic'  
" :let g:vimim_mycloud = 0  
" :let g:vimim_plugin = 'C:/var/mobile/vim/vimfiles/plugin'  
" :let g:vimim_punctuation = 2  
" :let g:vimim_shuangpin = 0  
" :let g:vimim_toggle = 'pinyin,google,sogou'


"""""cscope wiki中拷贝过来"""""""""""""""
if has('cscope')
	set cscopetag cscopeverbose

	if has('quickfix')
		set cscopequickfix=s-,c-,d-,i-,t-,e-
	endif

	cnoreabbrev csa cs add
	cnoreabbrev csf cs find
	cnoreabbrev csk cs kill
	cnoreabbrev csr cs reset
	cnoreabbrev css cs show
	cnoreabbrev csh cs help

	"  command -nargs=0 Cscope cs add ./cscope.out
endif
""""cscope wiki auto loaded"""""""""
"function! LoadCscope()
"  let db = findfile("cscope.out", ".;")
"  if (!empty(db))
"    let path = strpart(db, 0, match(db, "/cscope.out$"))
"    set nocsverbose " suppress 'duplicate connection' error
"    exe "cs add " . db . " " . path
"    set csverbose
" endif
"endfunction
"au BufEnter
"call LoadCscope()
""""cscope""""""""""""""""""""""""""""""""""""""""""""""
":set cscopequickfix=s-,c-,d-,i-,t-,e-

if has("cscope")
	set csprg=/usr/local/bin/cscope
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
		" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	set csverb
endif

"s: 查找C语言符号，即查找函数名、宏、枚举值等出现的地方
"g: 查找函数、宏、枚举等定义的位置，类似ctags所提供的功能
"d: 查找本函数调用的函数
"c: 查找调用本函数的函数
"t: 查找指定的字符串
"e: 查找egrep模式，相当于egrep功能，但查找速度快多了
"f: 查找并打开文件，类似vim的find功能
"i: 查找包含本文件的文件
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" Using 'CTRL-spacebar' then a search type makes the vim window
" split horizontally, with search result displayed in
" the new window.

nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>

" Hitting CTRL-space *twice* before the search type does a vertical
" split instead of a horizontal one

nmap <C-Space><C-Space>s
			\:vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>g
			\:vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>c
			\:vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>t
			\:vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>e
			\:vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>i
			\:vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-Space><C-Space>d
			\:vert scs find d <C-R>=expand("<cword>")<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"自动查找tags文件，直至根路径
set tags=tags;/
set tags+=~/.vim/systags

"用来自动加载cscope.out文件
function! LoadCscope()
	let db = findfile("cscope.out", ".;")
	if (!empty(db))
		let path = strpart(db, 0, match(db, "/cscope.out$"))
		set nocscopeverbose " suppress 'duplicate connection' error
		exe "cs add " . db . " " . path
		set cscopeverbose
	endif
endfunction
au BufEnter /* call LoadCscope()


""""""""""fcitx设置
set ttimeoutlen=10
""""""""""pydiction设置
let g:pydiction_location = '/home/xiong/.vim/bundle/pydiction/complete-dict'

"设置折行
set wrap
set linebreak

" html,python,c代码格式化
noremap <F3> :Autoformat<CR><CR>
"set formatoptions=croqn2mB1
"set formatoptions=mMtcroqlw
"set textwidth=80

"UltiSnips设置
"let g:UltiSnipsUsePythonVersion = 2
"let g:UltiSnipsExpandTrigger = "<c-tab>"
"let g:UltiSnipsListSnippets = "<c-tab>"
"let g:UltiSnipsJumpForwardTrigger = "<c-j>"
"let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

"括号颜色设置
let g:rbpt_colorpairs = [
			\ ['brown',       'RoyalBlue3'],
			\ ['Darkblue',    'SeaGreen3'],
			\ ['darkgray',    'DarkOrchid3'],
			\ ['darkgreen',   'firebrick3'],
			\ ['darkcyan',    'RoyalBlue3'],
			\ ['darkred',     'SeaGreen3'],
			\ ['darkmagenta', 'DarkOrchid3'],
			\ ['brown',       'firebrick3'],
			\ ['gray',        'RoyalBlue3'],
			\ ['black',       'SeaGreen3'],
			\ ['darkmagenta', 'DarkOrchid3'],
			\ ['Darkblue',    'firebrick3'],
			\ ['darkgreen',   'RoyalBlue3'],
			\ ['darkcyan',    'SeaGreen3'],
			\ ['darkred',     'DarkOrchid3'],
			\ ['red',         'firebrick3'],
			\ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
"set formatoptions=c,q,r,t " This is a sequence of letters which describes how
" automatic formatting is to be done.
"
" letter    meaning when present in 'formatoptions'
" ------    ---------------------------------------
" c         Auto-wrap comments using textwidth, inserting
"           the current comment leader automatically.
" q         Allow formatting of comments with "gq".
" r         Automatically insert the current comment leader
"           after hitting <Enter> in Insert mode. 
" t         Auto-wrap text using textwidth (does not apply
"           to comments)
" 设置自动换行
"set fo=tcrwa textwidth=80
" vimwiki相关设置，先去除
"let g:vimwiki_list_ignore_newline=0
"let wiki = {}
""let wiki.path='~/vimwiki_markdown/wiki'
""let wiki.path='~/vimwiki_markdown/wiki'
""let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'sql' : 'sql',
""'java': 'java', 'C': 'c',  'Haskell': 'haskell', 'Ruby': 'ruby', 'SQL':
""'sql', 'HTML': 'html', 'CSS': 'css', 'JavaScript': 'javascript', 'Vim':
""'vim', 'Make': 'make'}
"""let wiki.path_html='~/vimwiki/html'
""let wiki.template_path='~/vimwiki/template'
""let wiki.path_html='~/vimwiki_markdown/html'
""let wiki.template_path='~/vimwiki_markdown/template'
""let wiki.template_default='def_template'
""let wiki.template_ext='.html'
""let wiki.index = 'index'
"""let wiki.syntax= '.markdown'
"let wiki.ext='.md'
"let g:vimwiki_list = [{'path':'~/vimwiki_markdown/wiki', 
"            \'path_html': '~vimwiki_markdown/html/',
"            \'syntax': 'markdown',
"            \'ext': '.mkd'}]
"
"let g:vimwiki_ext2syntax = {'.md': 'markdown', 
"                    \ '.mkd': 'markdown',
"                    \'.markdown': 'markdown',
"                    \ '.wiki': 'media'}
"
"
""let g:vimwiki_list = [{'path': '~/my_site/', 
"""                         \ 'syntax': 'markdown', 'ext': '.md'}]

""" markdown语法设置
autocmd BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md  set filetype=markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
"set paste
set clipboard=unnamed

set updatetime=250
let g:gitgutter_diff_args = '-w'
"GitGutterAddLine          " default: links to DiffAdd
"GitGutterChangeLine       " default: links to DiffChange
"GitGutterDeleteLine       " default: links to DiffDelete
"GitGutterChangeDeleteLine " default: links to GitGutterChangeLineDefault, i.e. DiffChange
"
if exists(":Tabularize")
	nmap <Leader>a= :Tabularize /=<CR>
	vmap <Leader>a= :Tabularize /=<CR>
	nmap <Leader>a: :Tabularize /:\zs<CR>
	vmap <Leader>a: :Tabularize /:\zs<CR>
endif




let g:pymode_python = 'python3'

"let g:fzf_launcher='~/Code/script/iterm2-fzy.sh %s'

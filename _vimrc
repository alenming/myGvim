" ================================= 设置插件 ==================================
set nocompatible			  " be iMproved, required
filetype off				  " required

" let g:plug_url_format = 'https://gitee.com/%s.git'
let g:plug_url_format = "https://git::@github.com.cnpmjs.org/%s"
call plug#begin("$VIM\\vimfiles\\mingPlugin")

" Plug 'yaozhijin/nerdcommenter'
" Plug 'nxzxwxm/authorinfo'
" Plug 'leeonky/vim-airline'
" Plug 'tay3223/vim-airline-themes'
" Plug 'abner_sheng/a.vim'
" Plug 'dglxlcl/LeaderF'
" Plug 'yaozhijin/tagbar'
" Plug 'eagle_ice/rainbow_parentheses.vim'
" Plug 'leeonky/vim-easymotion'
" Plug 'eagle_ice/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'preservim/nerdcommenter'
Plug 'dantezhu/authorinfo'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/a.vim'
Plug 'Yggdroot/LeaderF'
"Plug 'preservim/tagbar'
Plug 'kien/rainbow_parentheses.vim'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'honza/vim-snippets'
" Plug 'kevinoid/vim-jsonc'
" Plug 'mhinz/vim-signify', { 'branch': 'legacy' }

call plug#end()
filetype plugin indent on	 " required
" ================================= 设置插件 ==================================
" "保存时自动删除行尾空格,要用大写W,小写无效
"
func! DeleteTrailingWS()
	%ret! 4
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
	:w
endfunc
command W call DeleteTrailingWS()
" ================================= SETTINGS ==================================
set encoding=utf-8
set fileencodings=utf-8,gbk			"使用utf-8或gbk打开文件新建文件
let &termencoding=&encoding
set helplang=cn						"帮助系统设置为中文o

set langmenu=zh_CN.UTF-8			"设置菜单语言
source $VIMRUNTIME/delmenu.vim		"导入删除菜单脚本，删除乱码的菜单
source $VIMRUNTIME/menu.vim			"导入正常的菜单脚本
language chinese
language messages zh_CN.utf-8		"设置提示信息语言
"set updatetime=					"文件修改显示刷新时间

if (has("win32"))
	source $VIMRUNTIME/vimrc_example.vim
	source $VIMRUNTIME/mswin.vim
	behave mswin					"保留Ctrl+A/c/v/Z操作
endif
if has("gui_running")				"如果在 GUI 环境下运行则设置下面语句
	set guifont=Consolas:h10
	set guioptions-=L				"不显示左边滚动条
	set guioptions-=T				"不显示工具栏
	set guioptions-=r				"不显示右边滚动条
	set guioptions-=m				"不显示上边的菜单栏
	set vb t_vb=					" 禁用响铃提醒
	au GuiEnter * simalt ~x			"自动最大化
	au GuiEnter * set t_vb=			"没有这一句屏幕就会闪屏
	au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 230)  "自动透明
endif
syntax enable
syntax on					"语法支持
colorscheme myColorscheme	"设置主题
set background=dark			"设置黑色背景

"为系统指定python版本
set pythonthreedll=python38.dll
set nocompatible			" 无视VI,全看VIM
set cindent					" C风格缩进
"set autoindent				" 自动缩进
set smartindent				" 智能缩进
set ch=1					" 命令行于状态行
set wildmenu				" 命令行补全以增强模式运行
set bs=2					" 在insert模式下用退格键删除
set laststatus=2			" 总是显示状态行
set shiftwidth=4			" 程序自动缩进时候空格数
set tabstop=4				" 设置tab4个空格
" set expandtab				" 设置tab用空格代替
set softtabstop=4			" 退格键一次删除4个空格
set cursorline				" 为光标所在位置加横向提示
set ruler
set noscrollbind			"分屏时不会两边的屏同时滚动
set number					" 显示行号
set autoread				" 文件在Vim之外修改过，自动重新读入
set autowriteall			" 设置自动保存
set nowrap					" 指定不折行。如果一行太长，超过屏幕宽度，则向右边延伸到屏幕外面
set foldenable				" 允许折叠
set foldmethod=indent		" 代码折叠, 命令 za  set nofoldenabl 关闭代码折叠
set foldlevel=100			" 启动vim时不要自动折叠代
highlight Folded	 guifg=#333333
highlight FoldColumn guifg=#2d2d2d
set hlsearch				" 检索时高亮显示匹配项
set incsearch				" 搜索逐字符高亮
set magic					" 设置魔术
set showmatch				" 括号匹配
set mat=2					" 匹配括号时间*十分之1秒
set ignorecase				" 搜索忽略大小写
set showcmd					" 状态栏显示目前所执行的指令
set mouse=nv				" 设定在任何模式下鼠标都可用a:都可用,nv normal,visual可用
set mousehide				" 一按键盘鼠标就消失,一动鼠标就出现
set nobackup				" 关闭自动缓存
set noundofile
set noswapfile
set t_Co=256				" 在windows中用xshell连接打开vim可以显示色彩
set clipboard+=unnamed		" 与windows共享剪贴板
set history=100				" 保留历史记录

set foldopen-=search	 " dont open folds when I search into thm
set foldopen-=undo		 " dont open folds when I undo stuff

"Diff 模式的时候鼠标同步滚动 for Vim7.3
if has('cursorbind')
	set cursorbind
end
" set autochdir
let mapleader = ','

nmap J j
nmap K k
"行首行尾
"nmap <c-a>  ^
"nmap <c-e>  $
" nmap H h
" nmap L l
nmap zc za
" 打开文件自动跳到上次编辑的位置
autocmd BufReadPost *
	  \ if line("'\"") > 1 && line("'\"") <= line("$") |
	  \   exe "normal! g`\"" |
	  \ endif
" VIM关闭再打开时自动打开上次关闭已经打开着的buffer
set viminfo='10,\"100,:20,%,n~/.viminfo
" autocmd FileType json syntax match Comment +\/\/.\+$+

" =================================TagHighlight==================================
	"全局变量吧"
	hi CTagsGlobalVariable gui=NONE guifg=#BDB76B
	"变量"
	hi CTagsMember gui=NONE guifg=#BDB76B
	"类名"
	hi CTagsClass	gui=NONE guifg=#ffff33
	"函数
	hi CTagsFunction  gui=NONE guifg=#66FF00
	"结构体
	hi CTagsStructure gui=NONE guifg=#ffff33
	"C++关键字
	hi Type guifg=#3370CC gui=none
	"枚举类名
	hi CTagsEnumeratorName guifg=#ffff33 gui=none
	"枚举子项"
	hi CTagsEnumerationValue guifg=#F92672	gui=none
	"宏定义"
	hi CTagsDefinedName guifg=#F92672	gui=none

" =================================彩虹括号配置==================================
	au VimEnter * RainbowParenthesesToggle
	au Syntax * RainbowParenthesesLoadRound
	au Syntax * RainbowParenthesesLoadSquare
	au Syntax * RainbowParenthesesLoadBraces
" =================================Tagbar==================================
	"nmap <F2> :TagbarToggle<CR>
	"let g:tagbar_width = 40
	"let g:tagbar_ctags_bin = 'ctags'							" tagbar 依赖 ctags 插件
	"let g:tagbar_sort = 0										" close the sort
	"let g:tagbar_autofocus = 1									" 这是tagbar打开光标在tagbar页面内
" =================================Tlist================================================
	" \tl				  打开Taglist/TxtBrowser窗口，在右侧栏显示
	" nmap <leader>tl :Tlist<CR><c-l>
	" " :Tlist				调用TagList
	" let Tlist_Show_One_File		 = 1			 " 只显示当前文件的tags
	" let Tlist_Exit_OnlyWindow		 = 1			 " 如果Taglist窗口是最后一个窗口则退出Vim
	" let Tlist_Use_Right_Window	 = 1			 " 在右侧窗口中显示
	" let Tlist_File_Fold_Auto_Close = 1			 " 自动折叠
	" let Tlist_Sort_Type = "name"					  " items in tags sorted by name
" =================================nerdcommenter settings 注释插件==================================
	"<leader>cc注释  <leader>cu  取消注释  <leader>c <space>   "注释与反注释
	let g:NERDSpaceDelims			 = 1									" 在注释符号后加一个空格
	let g:NERDCompactSexyComs		 = 1									" 紧凑排布多行注释
	let g:NERDDefaultAlign			 = 'left'								" 逐行注释左对齐
	let g:NERDAltDelims_java		 = 1									" JAVA 语言使用默认的注释符号
	let g:NERDCustomDelimiters		 = {'c': {'left': '/*', 'right': '*/'}} " C 语言注释符号
	let g:NERDCommentEmptyLines		 = 1									" 允许空行注释
	let g:NERDTrimTrailingWhitespace = 1									" 取消注释时删除行尾空格
	let g:NERDToggleCheckAllLines	 = 1									" 检查选中的行操作是否成功
" =================================LeaderF settings==================================
	let g:Lf_DefaultMode = 'NameOnly'
	let g:Lf_HideHelp = 1											"隐藏帮助提示
	let g:Lf_ReverseOrder = 0										"搜索结果从下到上
	let g:Lf_PreviewInPopup = 0										"当前选择预览
	let g:Lf_ShowRelativePath = 1
	let g:Lf_StlSeparator = { 'left': '►', 'right': '◄', 'font': '' }
	let g:Lf_WindowPosition  = 'popup'
	let g:Lf_CacheDirectory = '.LeaderFcache'						"为LeaderF指定保存路径
	"当前项目下的所有文件
	nnoremap <silent> <Leader>p :Leaderf file<CR>
	"最近打开的文件
	nnoremap <unique> <leader>f :Leaderf mru<CR>
	"当前打开的buffer
	nnoremap <unique> <leader>b :Leaderf buffer<CR>
	"当前文件的函数
	nnoremap <silent> <A-m> :LeaderfFunction<CR>
	" nnoremap <silent> <leader>r :LeaderfFunction<CR>
	" nnoremap <silent> <leader>r :LeaderfFunctionAll<CR>
	"查找当前文件的tag
	nnoremap <unique> <A-n> :LeaderfBufTag<Cr>
	" nnoremap <unique> <leader>ta :LeaderfBufTag<Cr>
	" nnoremap <unique> <leader>rr :LeaderfBufTagAll<Cr> "卡,中文路径会卡死
	" nnoremap <unique> <leader>l :LeaderfLine<CR> <C-W>
	" nnoremap <unique> <leader>la :LeaderfLineAll<Cr>
	nnoremap <unique> <leader>sf :LeaderfSelf<CR>
	"这两个配合使用先grep找出所有字符串,然后下个命令用小窗口打开
	" nnoremap <unique> <leader>sg :vimgrep  %<left><left>
	" nnoremap <unique> <leader>co :copen<CR>
	nnoremap <unique> <leader>sg :call Search_Word(1)<CR>:copen<CR>
	function Search_Word(keey, ...)
		let key = a:keey
		set noic				  "设置成不忽略大小写.
		let w = expand("<cword>") " 在当前光标位置抓词
		if (key == 1)
			execute "vimgrep ". w." %"
		endif
		set ic						"查找完再设置回来
	endfunction
	let g:Lf_WildIgnore = {
				\ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh'],
				\ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]','*.opensdf', '*.taghl',
				\ '*.dll','*.lib','*.zip','*.sdf','*.files','*.out','*.vcxproj','*.rc','*.sln', 'tags', '*.suo']}
" ================================= vim-airline状态栏的配置 ==================================
	let g:airline_theme= "simple"										"vim-airline主题
	let g:airline_powerline_fonts = 1									"这个是安装字体后 必须设置此项"
	let g:airline#extensions#tabline#enabled =1							"顶部tab显示"
	let g:airline#extensions#buffline#enabled = 1						"打开功能
	let g:airline#extensions#tabline#buffers_label = '这是真的帅!'		"右上角buffer名字(默认是b)
	let g:airline#extensions#whitespace#enabled = 0						"关闭状态显示空白符号计数,
	let g:airline#extensions#whitespace#symbol = '!'					"这个对我用处不大
	let g:airline#extensions#tabline#left_sep = 'Ξ'					"tabline中当前buffer两端的分隔符
	let g:airline#extensions#tabline#left_alt_sep = '☆'				"tabline为激活的buffer的两端字符
	set ambiwidth=double												"上边符号要双字宽
	let g:airline#extensions#tabline#buffer_nr_show = 1					"tabline中buffer显示编号
	let g:airline#extensions#bufferline#overwrite_variables = 1
	let g:airline#extensions#tabline#show_tab_nr = 1					"tabline禁用选项卡号
	let g:airline#extensions#tabline#formatter = 'unique_tail'			"tabline不显示路径
	let g:airline#extensions#tagbar#enabled = 1
	let g:airline#extensions#syntastic#enabled = 1

	"let g:airline_section_a = '%mode'
	let g:airline_section_b = '%{strftime("%c")}'
	"let g:airline_section_c = '%filetype'
	" let g:airline_section_x = '这是一个NB的编辑器'
	let g:airline_section_y = '明: %{bufnr("%")}'
	"let g:airline_section_z = '%l','%c'

	function! AccentDemo()
		let keys = ['F','u','c','k']
		for k in keys
			call airline#parts#define_text(k, k)
		endfor
		call airline#parts#define_accent('F', 'red')
		call airline#parts#define_accent('u', 'red')
		call airline#parts#define_accent('c', 'red')
		call airline#parts#define_accent('k', 'red')
		let g:airline_section_a = airline#section#create(keys)
	endfunction
	autocmd VimEnter * call AccentDemo()

	"buffer切换
	nnoremap <C-h> :bp<CR>
	nnoremap <Tab> :bn<CR>
	nnoremap <C-l> :bn<CR>
	 " 窗口切换
	nnoremap <A-h> <c-w>h
	nnoremap <A-l> <c-w>l
	nnoremap <A-j> <c-w>j
	nnoremap <A-k> <c-w>k
	"向右向下分屏并切到这个屏幕上
	noremap <A-right> <C-w>v<C-w>l
	noremap <A-down>  <C-w>s<C-w>j
   "关闭当前 buffer
	nnoremap <A-d> :bd<CR>
	map <leader>1 :b 1<CR>
	map <leader>2 :b 2<CR>
	map <leader>3 :b 3<CR>
	map <leader>4 :b 4<CR>
	map <leader>5 :b 5<CR>
	map <leader>6 :b 6<CR>
	map <leader>7 :b 7<CR>
	map <leader>8 :b 8<CR>
	map <leader>9 :b 9<CR>
" =================================a.vim ===================================================
	nnoremap <A-o> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>		 ".h .cpp 切换
	" nnoremap <A-p> :CocCommand clangd.switchSourceHeader<CR>
" =================================EasyMotion setting ======================================
	" <leader><leader>w						  "从光标位置起，往前（往下）在单词之间移动光标
	" <leader><leader>b						  "从光标位置起，往后（往上）在单词之间移动光标
	" <leader><leader>s						  "从光标位置起，同时往前往后，在单词之间移动光标
	" <leader><leader>f｛char｝				  "从光标位置起，往前（往下）在单个字符之间移动光标
" =================================authoinfo 文件头模板==================================
	nmap <F8> :AuthorInfoDetect<cr>
	let g:vimrc_author='Alen'
	let g:vimrc_email='635459675@qq.com'
	let g:vimrc_homepage='http://baidu.com'
" =================================nerdcommenter settings 注释插件==================================
	"<leader>cc注释  <leader>cu  取消注释  <leader>c <space>   "注释与反注释
	let g:NERDSpaceDelims			 = 1									" 在注释符号后加一个空格
	let g:NERDCompactSexyComs		 = 1									" 紧凑排布多行注释
	let g:NERDDefaultAlign			 = 'left'								" 逐行注释左对齐
	let g:NERDAltDelims_java		 = 1									" JAVA 语言使用默认的注释符号
	let g:NERDCustomDelimiters		 = {'c': {'left': '/*', 'right': '*/'}} " C 语言注释符号
	let g:NERDCommentEmptyLines		 = 1									" 允许空行注释
	let g:NERDTrimTrailingWhitespace = 1									" 取消注释时删除行尾空格
	let g:NERDToggleCheckAllLines	 = 1									" 检查选中的行操作是否成功
" ================================= neaderTree 目录树配置===========================================
	nmap <F1> :NERDTreeToggle<CR>
	imap <F1> :NERDTreeToggle<CR>
	let NERDTreeChDirMode=1
	"显示书签"
	let NERDTreeShowBookmarks=0
	"设置忽略文件类型"
	let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.rc$', '\.vcxproj$', '\.filters$', '\.user$', 'tags$', '\.taghl$', '\.sdf$', '\.sln$', '\.suo$', '\.txt$']
	" 修改默认箭头
	let g:NERDTreeDirArrowExpandable = '▸'
	let g:NERDTreeDirArrowCollapsible = '▾'
	""窗口位置
	let g:NERDTreeWinPos='left'
	""窗口尺寸
	let g:NERDTreeSize=30
	""窗口是否显示行号
	" let g:NERDTreeShowLineNumbers=1
	""不显示隐藏文件
	let g:NERDTreeHidden=0
	autocmd StdinReadPre * let s:std_in=1
	" 打开vim时自动打开NERDTree
	" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
	" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
	" 关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭，减少多次按:q!
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	let NERDTreeAutoCenter=1
	" 在终端启动vim时，共享NERDTree
	let g:nerdtree_tabs_open_on_console_startup=1
	nmap <leader>tc :tabc<CR>									" <leader>tc 关闭当前的 tab
	nmap <leader>tp :tabp<CR>									" <leader>tp 前一个 tab
	nmap <leader>tn :tabn<CR>									" <leader>tn 后一个 tab
	nmap <leader>to :tabo<CR>									" <leader>to 关闭所有其他的 tab
	nmap <leader>ts :tabs<CR>									" <leader>ts 查看所有打开的 tab
" =================================ctags settings====================================================
set tags=tags;		"自动切换目录并指定tag文件
set tags+=./tags
"set tags=./.tags;,.tags

" 按F11，生成tags文件
map <unique> <F11> :call Do_Tag()<CR>
function Do_Tag()
	let dir = getcwd()
	if filereadable("tags")
		let tagsdeleted=delete(dir."\\"."tags")
		if(tagsdeleted!=0)
			echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
			return
		endif
	endif
	if(executable('ctags'))
		" silent! execute "!ctags -R --languages=lua --fields=+iaS --extra=+q  --lua-kinds=+p ."
		silent! execute "!ctags -R --languages=c++,c --fields=+iaS --extra=+q  --c++-kinds=+p ."
	endif
endf
map <unique> <F12> :UpdateTypesFile <CR>
nnoremap <F3> <C-]>
"跳回之前的位置"
nnoremap <F4> <C-T>
" =================================my setting====================================================
"let g:ycm_global_ycm_extra_conf =$VIM . '\vimfiles\mingplugin\YouCompleteMe\third_party\ycmd\.ycm_extra_conf.py'
"
"let g:ycm_confirm_extra_conf = 0						"0为关闭载入配置文件提示
"let g:ycm_show_diagnostics_ui = 0						"不做语法检查
"let g:ycm_seed_identifiers_with_syntax = 1				" 语法关键字补全
"let g:ycm_collect_identifiers_from_tags_files= 1		" 开启 YCM 基于标签引擎
"let g:ycm_cache_omnifunc=0								" 禁止缓存匹配项，每次都重新生成匹配项
"let g:ycm_add_preview_to_completeopt = 0				" 关闭补全预览
""补全之后自动关闭preview
"let g:ycm_autoclose_preview_window_after_completion = 1
"
"let g:ycm_goto_buffer_command = 'same-buffer' " 跳转打开
"let g:ycm_min_num_identifier_candidate_chars = 2
"let g:ycm_min_num_of_chars_for_completion = 1					"触发补全字数
"
"let g:ycm_collect_identifiers_from_comments_and_strings = 1	 "注释和字符串中的文字也会被收入补全
"let g:ycm_complete_in_strings=1								 "在字符串是也能补全
"let g:ycm_complete_in_comments=1							 "在注释中也能补全
"let g:ycm_max_num_candidates = 5							"提示的数量
"let g:ycm_key_invoke_completion = '<A-.>'
"let g:ycm_max_num_candidates_to_detail = 10
"let g:ycm_auto_hover = ' '								"把这货改一下,他才不会弹出那个预览
"
"" 关闭选择补全时上边弹出窗口
"set completeopt=menu
"set completeopt=popup
"
"" 补全内容不以分割子窗口形式出现，只显示补全列表
"set completeopt-=preview
"
"
"let g:ycm_error_symbol = 'x'
"let g:ycm_warning_symbol = '!'
"let g:ycm_key_list_select_completion=['<Tab>']
"let g:ycm_key_list_previous_completion = ['<Up>']
"
"
"let g:ycm_semantic_triggers =	{
"			   \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{1}'],
"			   \ 'cs,lua,javascript': ['re!\w{1}'],
"			   \ }
"let g:ycm_filetype_whitelist = {
"			   \ "c":1,
"			   \ "cpp":1,
"			   \ "objc":1,
"			   \ }
"" 导航定义和声明
"
"nnoremap <A-g> :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <F5> :YcmCompleter GoToReferences<CR>


" =================================coc.nvm settings====================================================
let g:coc_data_home = '$VIM/vimfiles/coc'
" let g:coc_global_extensions = ['coc-json', 'coc-pairs', 'coc-highlight', 'coc-python']
autocmd FileType cpp let b:coc_root_patterns = ['.git', '.env', '.vim']
" "
nmap	 <silent>		<F7>	  <Plug>(coc-rename)
" nnoremap <silent><expr> <F9>	  get(g:, 'coc_enabled', 0) == 1 ? ':CocDisable<cr>' : ':CocEnable<cr>'
nnoremap <silent>		<F10>	  :silent CocRestart<cr>
nmap	 <silent>		<A-g>	  <Plug>(coc-definition)
nmap	 <silent>		gy		  <Plug>(coc-type-definition)
"nmap	 <silent>		gr		  <Plug>(coc-references-used)
nmap	 <silent>		gu		  <Plug>(coc-references)
" nmap	 <silent>		K		  :call CocAction("doHover")<cr>
" nmap	 <silent>		<c-e>	  :<c-u>CocList diagnostics<cr>
" " nnoremap <silent>		  <F9>		:CocCommand snippets.editSnippets<cr>
"使用tab选择补全? tab自动补全第一个,ctrl+np上下选择
inoremap <silent><expr> <TAB>
		\ pumvisible() ? coc#_select_confirm() :
		\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
		\ <SID>check_back_space() ? "\<TAB>" :
		\ coc#refresh()
function! s:check_back_space() abort
		let col = col('.') - 1
		return !col || getline('.')[col - 1]	=~# '\s'
endfunction
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm(): "<C-g>u<CR><c-r>=coc#on_enter()<CR>"
let g:coc_snippet_next = '<tab>'"



exec 'cd ' . fnameescape('E:\myCode\my-py')

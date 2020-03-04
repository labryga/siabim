let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(neocomplcache_start_omni_complete) 
inoremap <silent> <Plug>(neocomplcache_start_auto_complete_no_select) 
inoremap <silent> <Plug>(neocomplcache_start_auto_complete) =neocomplcache#mappings#popup_post()
inoremap <silent> <expr> <Plug>(neocomplcache_start_unite_quick_match) unite#sources#neocomplcache#start_quick_match()
inoremap <silent> <expr> <Plug>(neocomplcache_start_unite_complete) unite#sources#neocomplcache#start_complete()
imap <S-Tab> <Plug>snipMateBack
inoremap <silent> <Plug>(table-mode-tableize) |:call tablemode#TableizeInsertMode()a
inoremap <silent> <Plug>snipMateShow =snipMate#ShowAvailableSnips()
inoremap <silent> <Plug>snipMateBack =snipMate#BackwardsSnippet()
inoremap <silent> <Plug>snipMateTrigger =snipMate#TriggerSnippet(1)
inoremap <silent> <Plug>snipMateNextOrTrigger =snipMate#TriggerSnippet()
inoremap <Plug>TComment-9 :call tcomment#SetOption("count", 9)
inoremap <Plug>TComment-8 :call tcomment#SetOption("count", 8)
inoremap <Plug>TComment-7 :call tcomment#SetOption("count", 7)
inoremap <Plug>TComment-6 :call tcomment#SetOption("count", 6)
inoremap <Plug>TComment-5 :call tcomment#SetOption("count", 5)
inoremap <Plug>TComment-4 :call tcomment#SetOption("count", 4)
inoremap <Plug>TComment-3 :call tcomment#SetOption("count", 3)
inoremap <Plug>TComment-2 :call tcomment#SetOption("count", 2)
inoremap <Plug>TComment-1 :call tcomment#SetOption("count", 1)
inoremap <Plug>TComment-s :TCommentAs =&ft_
inoremap <Plug>TComment-n :TCommentAs =&ft 
inoremap <Plug>TComment-a :TCommentAs 
inoremap <Plug>TComment-b :TCommentBlock mode=#
inoremap <Plug>TComment-i v:TCommentInline mode=#
inoremap <Plug>TComment-r :TCommentRight
inoremap <Plug>TComment-  :TComment 
inoremap <Plug>TComment-p :norm! m`vip:TComment``
inoremap <Plug>TComment- :TComment
xnoremap <silent>  :call multiple_cursors#new("v", 0)
nnoremap <silent>  :call multiple_cursors#new("n", 0)
nmap  k
xmap 	 <Plug>snipMateVisual
smap 	 <Plug>snipMateNextOrTrigger
nnoremap 	 :w:!clear; python3 %
nmap <NL> h
nmap  l
nmap  j
nmap  :tabnext
nmap  :tabprevious
nmap  zk
nmap  zj
nmap 9 <Plug>TComment-9
nmap 8 <Plug>TComment-8
nmap 7 <Plug>TComment-7
nmap 6 <Plug>TComment-6
nmap 5 <Plug>TComment-5
nmap 4 <Plug>TComment-4
nmap 3 <Plug>TComment-3
nmap 2 <Plug>TComment-2
nmap 1 <Plug>TComment-1
nmap  <Plug>TComment-
vmap 9 <Plug>TComment-9
omap 9 <Plug>TComment-9
vmap 8 <Plug>TComment-8
omap 8 <Plug>TComment-8
vmap 7 <Plug>TComment-7
omap 7 <Plug>TComment-7
vmap 6 <Plug>TComment-6
omap 6 <Plug>TComment-6
vmap 5 <Plug>TComment-5
omap 5 <Plug>TComment-5
vmap 4 <Plug>TComment-4
omap 4 <Plug>TComment-4
vmap 3 <Plug>TComment-3
omap 3 <Plug>TComment-3
vmap 2 <Plug>TComment-2
omap 2 <Plug>TComment-2
vmap 1 <Plug>TComment-1
omap 1 <Plug>TComment-1
map ca <Plug>TComment-ca
map cc <Plug>TComment-cc
map s <Plug>TComment-s
map n <Plug>TComment-n
map a <Plug>TComment-a
map b <Plug>TComment-b
map i <Plug>TComment-i
map r <Plug>TComment-r
map   <Plug>TComment- 
map p <Plug>TComment-p
vmap  <Plug>TComment-
omap  <Plug>TComment-
nmap   <Plug>(easymotion-s)
nmap ,__ <Plug>TComment-,__
smap ,__ <Plug>TComment-,__
xmap ,T <Plug>(table-mode-tableize-delimiter)
xmap ,tt <Plug>(table-mode-tableize)
nmap ,tt <Plug>(table-mode-tableize)
nnoremap ,l :call lesscss#toggle()
map ,, <Plug>(easymotion-prefix)
map ,_s <Plug>TComment-,_s
map ,_n <Plug>TComment-,_n
map ,_a <Plug>TComment-,_a
map ,_b <Plug>TComment-,_b
map ,_r <Plug>TComment-,_r
xmap ,_i <Plug>TComment-,_i
map ,_  <Plug>TComment-,_ 
map ,_p <Plug>TComment-,_p
xmap ,__ <Plug>TComment-,__
omap ,__ <Plug>TComment-,__
map ,rwp <Plug>RestoreWinPosn
map ,swp <Plug>SaveWinPosn
map ,ds <Plug>DrawItStop
map ,di <Plug>DrawItStart
map ,k <Plug>(easymotion-k)
map ,j <Plug>(easymotion-j) 
nnoremap <silent> ,tm :call tablemode#Toggle()
inoremap · :source $MYVIMRC
inoremap üaa ('');2hi
inoremap üa ('')hi
inoremap üd 2li: ''i
inoremap üdd 2li: 
inoremap üj A;
inoremap üw 2li, ''i
inoremap üf 2li, ""i
inoremap üq 2li, 
inoremap üss ("");2hi
inoremap üs ("")hi
imap ö :w!
imap ä :wq!
xmap S <Plug>VSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
xmap g> <Plug>TComment-Comment
nmap <silent> g>b <Plug>TComment-Commentb
nmap <silent> g>c <Plug>TComment-Commentc
nmap <silent> g> <Plug>TComment-Comment
xmap g< <Plug>TComment-Uncomment
nmap <silent> g<b <Plug>TComment-Uncommentb
nmap <silent> g<c <Plug>TComment-Uncommentc
nmap <silent> g< <Plug>TComment-Uncomment
xmap gc <Plug>TComment-gc
nmap <silent> gcb <Plug>TComment-gcb
nmap <silent> gcc <Plug>TComment-gcc
nmap <silent> gc9 <Plug>TComment-gc9
nmap <silent> gc8 <Plug>TComment-gc8
nmap <silent> gc7 <Plug>TComment-gc7
nmap <silent> gc6 <Plug>TComment-gc6
nmap <silent> gc5 <Plug>TComment-gc5
nmap <silent> gc4 <Plug>TComment-gc4
nmap <silent> gc3 <Plug>TComment-gc3
nmap <silent> gc2 <Plug>TComment-gc2
nmap <silent> gc1 <Plug>TComment-gc1
nmap <silent> gc <Plug>TComment-gc
omap ic <Plug>TComment-ic
vmap ic <Plug>TComment-ic
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
snoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
nnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
nnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
snoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
nnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
snoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
nnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
snoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
nnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
snoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
nnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
snoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
nnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
snoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
nnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
snoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
nnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
snoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
nnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
snoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
nnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
snoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
nnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
snoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
nnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
nnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
snoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
nnoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
snoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
nnoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
snoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
nnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
snoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
nnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
snoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
nnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
snoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
nnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
snoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
nnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
snoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
nnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
snoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
nnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
snoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
nnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
snoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
nnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
snoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
nnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
snoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
nnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
snoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
nnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
snoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
nnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
snoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
nnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
snoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
nnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
snoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
nnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
snoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
nnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
snoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
nnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
snoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
nnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
snoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
nnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
snoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
nnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
snoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
nnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
snoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
nnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
snoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
nnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
nnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
snoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
nnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
snoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
nnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
nnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
snoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
nnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
nnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
snoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
nnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
nnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
snoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
nnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
nnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
snoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
nnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
nnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
nnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
snoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
nnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
nnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
snoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
nnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
snoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
nnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
snoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
nnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
nnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
nnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
snoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
nnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
snoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
nnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
nnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
snoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
nnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
nnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
snoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
nnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
nnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
nnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
nnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
snoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
nnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
nnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
nnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
nnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
snoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
nnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
nnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
nnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
snoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
nnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
nnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
snoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
nnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
nnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
snoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
nnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
snoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
nnoremap <Plug>TComment-9 :call tcomment#SetOption("count", 9)
nnoremap <Plug>TComment-8 :call tcomment#SetOption("count", 8)
nnoremap <Plug>TComment-7 :call tcomment#SetOption("count", 7)
nnoremap <Plug>TComment-6 :call tcomment#SetOption("count", 6)
nnoremap <Plug>TComment-5 :call tcomment#SetOption("count", 5)
nnoremap <Plug>TComment-4 :call tcomment#SetOption("count", 4)
nnoremap <Plug>TComment-3 :call tcomment#SetOption("count", 3)
nnoremap <Plug>TComment-2 :call tcomment#SetOption("count", 2)
nnoremap <Plug>TComment-1 :call tcomment#SetOption("count", 1)
nnoremap <Plug>TComment-,__ :TComment
snoremap <Plug>TComment-,__ :TComment
nnoremap <Plug>TComment- :TComment
smap <S-Tab> <Plug>snipMateBack
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>(vimshell_create) :VimShellCreate
nnoremap <silent> <Plug>(vimshell_switch) :VimShell
nnoremap <silent> <Plug>(table-mode-sort) :call tablemode#spreadsheet#Sort('')
nnoremap <silent> <Plug>(table-mode-eval-formula) :call tablemode#spreadsheet#formula#EvaluateFormulaLine()
nnoremap <silent> <Plug>(table-mode-add-formula) :call tablemode#spreadsheet#formula#Add()
nnoremap <silent> <Plug>(table-mode-delete-column) :call tablemode#spreadsheet#DeleteColumn()
nnoremap <silent> <Plug>(table-mode-delete-row) :call tablemode#spreadsheet#DeleteRow()
xnoremap <silent> <Plug>(table-mode-cell-text-object-i) :call tablemode#spreadsheet#cell#TextObject(1)
xnoremap <silent> <Plug>(table-mode-cell-text-object-a) :call tablemode#spreadsheet#cell#TextObject(0)
onoremap <silent> <Plug>(table-mode-cell-text-object-i) :call tablemode#spreadsheet#cell#TextObject(1)
onoremap <silent> <Plug>(table-mode-cell-text-object-a) :call tablemode#spreadsheet#cell#TextObject(0)
nnoremap <silent> <Plug>(table-mode-motion-right) :call tablemode#spreadsheet#cell#Motion('l')
nnoremap <silent> <Plug>(table-mode-motion-left) :call tablemode#spreadsheet#cell#Motion('h')
nnoremap <silent> <Plug>(table-mode-motion-down) :call tablemode#spreadsheet#cell#Motion('j')
nnoremap <silent> <Plug>(table-mode-motion-up) :call tablemode#spreadsheet#cell#Motion('k')
nnoremap <silent> <Plug>(table-mode-realign) :call tablemode#table#Realign('.')
xnoremap <silent> <Plug>(table-mode-tableize-delimiter) :call tablemode#TableizeByDelimiter()
xnoremap <silent> <Plug>(table-mode-tableize) :Tableize
nnoremap <silent> <Plug>(table-mode-tableize) :Tableize
nnoremap <silent> <Plug>SurroundRepeat .
snoremap <silent> <Plug>snipMateBack a=snipMate#BackwardsSnippet()
snoremap <silent> <Plug>snipMateNextOrTrigger a=snipMate#TriggerSnippet()
map <silent> <Plug>(easymotion-prefix)N <Plug>(easymotion-N)
map <silent> <Plug>(easymotion-prefix)n <Plug>(easymotion-n)
map <silent> <Plug>(easymotion-prefix)gE <Plug>(easymotion-gE)
map <silent> <Plug>(easymotion-prefix)ge <Plug>(easymotion-ge)
map <silent> <Plug>(easymotion-prefix)E <Plug>(easymotion-E)
map <silent> <Plug>(easymotion-prefix)e <Plug>(easymotion-e)
map <silent> <Plug>(easymotion-prefix)B <Plug>(easymotion-B)
map <silent> <Plug>(easymotion-prefix)b <Plug>(easymotion-b)
map <silent> <Plug>(easymotion-prefix)W <Plug>(easymotion-W)
map <silent> <Plug>(easymotion-prefix)w <Plug>(easymotion-w)
map <silent> <Plug>(easymotion-prefix)T <Plug>(easymotion-T)
map <silent> <Plug>(easymotion-prefix)t <Plug>(easymotion-t)
map <silent> <Plug>(easymotion-prefix)F <Plug>(easymotion-F)
map <silent> <Plug>(easymotion-prefix)f <Plug>(easymotion-f)
xnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(1)
onoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
xnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(1,2)
onoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(1,1)
onoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
xnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(1,0)
onoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
xnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(1,2)
onoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
xnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(1,1)
onoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
xnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(1,0)
onoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
xnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(1,2)
onoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
xnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(1,1)
onoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
xnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(1,0)
onoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
xnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(1,1)
onoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
xnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(1,0)
onoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
noremap <silent> <Plug>(easymotion-dotrepeat) :call EasyMotion#DotRepeat()
xnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(1)
onoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
xnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(1,2)
onoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(1,2,0)
onoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
xnoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(1,1,1)
onoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
xnoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(1,0,1)
onoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
xnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(1,1,0)
onoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
xnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(1,0,0)
onoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
xnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(1,2)
onoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
xnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(1,1)
onoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
xnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(1,0)
onoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
xnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(1,2)
onoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
xnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(1,1)
onoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
xnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(1,0)
onoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
xnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(1,2)
onoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
xnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(1,1)
onoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
xnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(1,0)
onoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(1,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(1,1)
onoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(1,0)
onoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
xnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(1,2)
onoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
xnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(1,1)
onoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
xnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(1,0)
onoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(1,2)
onoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
xnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(1,1)
onoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
xnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(1,0)
onoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(1,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(1,1)
onoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(1,0)
onoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
xnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(1,2)
onoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
xnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(1,1)
onoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
xnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(1,0)
onoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(1,2)
onoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
xnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(1,1)
onoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
xnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(1,0)
onoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
xnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,1,1)
onoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,1,0)
onoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
xnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,1,0)
onoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
xnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,1,2)
onoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,1,0)
onoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,1,2)
onoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
xnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,1,0)
onoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,1,2)
onoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
xnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,1,0)
onoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,1,2)
onoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
xnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,1,0)
onoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,1,2)
onoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,1,2)
onoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,1,0)
onoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,1,2)
onoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,1,1)
onoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
xnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,1,0)
onoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
xnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,1,0)
onoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
xnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,1,1)
onoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,1,2)
onoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,1,0)
onoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
xnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,1,0)
onoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,1,2)
onoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,1,1)
onoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,1,2)
onoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,1,1)
onoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,1,2)
onoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
xnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,1,1)
onoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
xnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,1,2)
onoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,1,1)
onoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,1,2)
onoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,1,1)
onoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,1,2)
onoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,1,1)
onoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,1,2)
onoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,1,2)
onoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,1,1)
onoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,1,2)
onoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,1,1)
onoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,1,2)
onoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,1,1)
onoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
xnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,1,0)
onoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
nnoremap <silent> <Plug>TComment-gc9c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 9) | set opfunc=tcomment#Operatorg@
nnoremap <silent> <Plug>TComment-gc8c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 8) | set opfunc=tcomment#Operatorg@
nnoremap <silent> <Plug>TComment-gc7c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 7) | set opfunc=tcomment#Operatorg@
nnoremap <silent> <Plug>TComment-gc6c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 6) | set opfunc=tcomment#Operatorg@
nnoremap <silent> <Plug>TComment-gc5c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 5) | set opfunc=tcomment#Operatorg@
nnoremap <silent> <Plug>TComment-gc4c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 4) | set opfunc=tcomment#Operatorg@
nnoremap <silent> <Plug>TComment-gc3c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 3) | set opfunc=tcomment#Operatorg@
nnoremap <silent> <Plug>TComment-gc2c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 2) | set opfunc=tcomment#Operatorg@
nnoremap <silent> <Plug>TComment-gc1c :let w:tcommentPos = getpos(".") | call tcomment#SetOption("count", 1) | set opfunc=tcomment#Operatorg@
vnoremap <Plug>TComment-9 :call tcomment#SetOption("count", 9)
onoremap <Plug>TComment-9 :call tcomment#SetOption("count", 9)
vnoremap <Plug>TComment-8 :call tcomment#SetOption("count", 8)
onoremap <Plug>TComment-8 :call tcomment#SetOption("count", 8)
vnoremap <Plug>TComment-7 :call tcomment#SetOption("count", 7)
onoremap <Plug>TComment-7 :call tcomment#SetOption("count", 7)
vnoremap <Plug>TComment-6 :call tcomment#SetOption("count", 6)
onoremap <Plug>TComment-6 :call tcomment#SetOption("count", 6)
vnoremap <Plug>TComment-5 :call tcomment#SetOption("count", 5)
onoremap <Plug>TComment-5 :call tcomment#SetOption("count", 5)
vnoremap <Plug>TComment-4 :call tcomment#SetOption("count", 4)
onoremap <Plug>TComment-4 :call tcomment#SetOption("count", 4)
vnoremap <Plug>TComment-3 :call tcomment#SetOption("count", 3)
onoremap <Plug>TComment-3 :call tcomment#SetOption("count", 3)
vnoremap <Plug>TComment-2 :call tcomment#SetOption("count", 2)
onoremap <Plug>TComment-2 :call tcomment#SetOption("count", 2)
vnoremap <Plug>TComment-1 :call tcomment#SetOption("count", 1)
onoremap <Plug>TComment-1 :call tcomment#SetOption("count", 1)
nnoremap <silent> <Plug>TComment-gc :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") | set opfunc=tcomment#Operatorg@
xnoremap <Plug>TComment-gc :TCommentMaybeInline
nnoremap <silent> <Plug>TComment-gcb :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") | call tcomment#SetOption("mode_extra", "B") | set opfunc=tcomment#OperatorLineg@
nnoremap <silent> <Plug>TComment-gcc :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineg@$
noremap <Plug>TComment-ic :call tcomment#TextObjectInlineComment()
xnoremap <silent> <Plug>TComment-Comment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | '<,'>TCommentMaybeInline!
nnoremap <silent> <Plug>TComment-Commentb :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | call tcomment#SetOption("mode_extra", "B") | let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineg@
nnoremap <silent> <Plug>TComment-Commentc :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineAnywayg@$
nnoremap <silent> <Plug>TComment-Comment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorAnywayg@
xnoremap <silent> <Plug>TComment-Uncomment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | call tcomment#SetOption("mode_extra", "U") | '<,'>TCommentMaybeInline
nnoremap <silent> <Plug>TComment-Uncommentb :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | call tcomment#SetOption("mode_extra", "UB") | let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineg@
nnoremap <silent> <Plug>TComment-Uncommentc :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | call tcomment#SetOption("mode_extra", "U") | let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineAnywayg@$
nnoremap <silent> <Plug>TComment-Uncomment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | call tcomment#SetOption("mode_extra", "U") | let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorAnywayg@
noremap <Plug>TComment-,_s :TCommentAs =&ft_
noremap <Plug>TComment-,_n :TCommentAs =&ft 
noremap <Plug>TComment-,_a :TCommentAs 
noremap <Plug>TComment-,_b :TCommentBlock
noremap <Plug>TComment-,_r :TCommentRight
xnoremap <Plug>TComment-,_i :TCommentInline
noremap <Plug>TComment-,_  :TComment 
noremap <Plug>TComment-,_p vip:TComment
xnoremap <Plug>TComment-,__ :TCommentMaybeInline
onoremap <Plug>TComment-,__ :TComment
noremap <Plug>TComment-ca :call tcomment#SetOption("as", input("Comment as: ", &filetype, "customlist,tcomment#Complete"))
noremap <Plug>TComment-cc :call tcomment#SetOption("count", v:count1)
noremap <Plug>TComment-s :TCommentAs =&ft_
noremap <Plug>TComment-n :TCommentAs =&ft 
noremap <Plug>TComment-a :TCommentAs 
noremap <Plug>TComment-b :TCommentBlock
noremap <Plug>TComment-i v:TCommentInline mode=I#
noremap <Plug>TComment-r :TCommentRight
noremap <Plug>TComment-  :TComment 
noremap <Plug>TComment-p m`vip:TComment``
vnoremap <Plug>TComment- :TCommentMaybeInline
onoremap <Plug>TComment- :TComment
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
noremap <silent> <Plug>DrawItStop :set lz:call DrawIt#DrawItStop():set nolz
noremap <silent> <Plug>DrawItStart :set lz:call DrawIt#DrawItStart():set nolz
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  k
imap 	 <Plug>snipMateNextOrTrigger
imap 	 <Plug>snipMateShow
imap  <Plug>Isurround
imap 9 <Plug>TComment-9
imap 8 <Plug>TComment-8
imap 7 <Plug>TComment-7
imap 6 <Plug>TComment-6
imap 5 <Plug>TComment-5
imap 4 <Plug>TComment-4
imap 3 <Plug>TComment-3
imap 2 <Plug>TComment-2
imap 1 <Plug>TComment-1
imap s <Plug>TComment-s
imap n <Plug>TComment-n
imap a <Plug>TComment-a
imap b <Plug>TComment-b
imap i <Plug>TComment-i
imap r <Plug>TComment-r
imap   <Plug>TComment- 
imap p <Plug>TComment-p
imap  <Plug>TComment-
inoremap """ """"""O
inoremap "" """"""2hi
inoremap " ""i
inoremap ' ''i
inoremap () () {}iO
inoremap (( ()iO
inoremap ( ()i
inoremap )) )O
inoremap ) ();hi
inoremap >> <>i
nmap ä :q!
nmap ö :w!
inoremap [[ []iO
inoremap [ []i
imap iö A,
imap jö 2li
imap kö A
imap llk jA
imap lk o
inoremap lj A;:w!
inoremap lö A 
imap mmö O
imap mö A;
imap nö A:
inoremap {} {};hiO
inoremap {{ {}iO
inoremap { {}i
inoremap }} {{  }}2hi
inoremap } {%  %}2hi
inoremap }{ {  }hi
cabbr lesscss =( getcmdtype() == ':' && getcmdpos() == 1 ? 'Lesscss' : 'lesscss')
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set comments=://
set commentstring=//\ %s
set completefunc=neocomplcache#complete#manual_complete
set completeopt=preview,menuone
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=de
set hlsearch
set nomodeline
set operatorfunc=tcomment#OperatorLine
set pastetoggle=,.
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/bundle/DrawIt,~/.vim/bundle/codi.vim,~/.vim/bundle/colorizer,~/.vim/bundle/neocomplcache.vim,~/.vim/bundle/nerdtree,~/.vim/bundle/rainbow,~/.vim/bundle/sparkup,~/.vim/bundle/tagbar,~/.vim/bundle/tcomment_vim,~/.vim/bundle/text.html,~/.vim/bundle/tlib_vim,~/.vim/bundle/txtfmt,~/.vim/bundle/vim-addon-mw-utils,~/.vim/bundle/vim-css-color,~/.vim/bundle/vim-easymotion,~/.vim/bundle/vim-javascript-syntax,~/.vim/bundle/vim-less,~/.vim/bundle/vim-lesscss,~/.vim/bundle/vim-multiple-cursors,~/.vim/bundle/vim-pug,~/.vim/bundle/vim-snipmate,~/.vim/bundle/vim-snippets,~/.vim/bundle/vim-surround,~/.vim/bundle/vim-table-mode,~/.vim/bundle/vimshell.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/bundle/vim-snipmate/after,~/.vim/bundle/vim-less/after,~/.vim/bundle/vim-css-color/after,~/.vim/after
set shiftwidth=2
set softtabstop=2
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/siabim/staticfiles/css/development/sass
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd ~/siabim/django/siabim/templates/SiaBimHomepageDesktop.pug
edit phone.sass
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
4wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 1resize ' . ((&columns * 63 + 158) / 317)
exe '2resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 2resize ' . ((&columns * 63 + 158) / 317)
exe '3resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 3resize ' . ((&columns * 63 + 158) / 317)
exe '4resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 4resize ' . ((&columns * 63 + 158) / 317)
exe '5resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 5resize ' . ((&columns * 63 + 158) / 317)
exe '6resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 6resize ' . ((&columns * 63 + 158) / 317)
exe '7resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 7resize ' . ((&columns * 62 + 158) / 317)
exe '8resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 8resize ' . ((&columns * 62 + 158) / 317)
exe '9resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 9resize ' . ((&columns * 62 + 158) / 317)
exe 'vert 10resize ' . ((&columns * 63 + 158) / 317)
exe 'vert 11resize ' . ((&columns * 62 + 158) / 317)
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=://
setlocal commentstring=//\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*\\%(@mixin\\|=\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sass'
setlocal filetype=sass
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=[\"']\\=
setlocal includeexpr=substitute(v:fname,'\\%(.*/\\|^\\)\\zs','_','')
setlocal indentexpr=GetSassIndent()
setlocal indentkeys=o,O,*<Return>,<:>,!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=csscomplete#CompleteCSS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=0
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.sass,.scss,.css
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'sass'
setlocal syntax=sass
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 24 - ((22 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 011|
wincmd w
argglobal
if bufexists("~/siabim/staticfiles/js/development/modules/phone.js") | buffer ~/siabim/staticfiles/js/development/modules/phone.js | else | edit ~/siabim/staticfiles/js/development/modules/phone.js | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#manual_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJavascriptIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0],0)
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 03|
wincmd w
argglobal
if bufexists("~/siabim/django/siabim/templates/SiaBimHomepagePhone.pug") | buffer ~/siabim/django/siabim/templates/SiaBimHomepagePhone.pug | else | edit ~/siabim/django/siabim/templates/SiaBimHomepagePhone.pug | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer>  <Plug>SparkupExecute
imap <buffer>  <Plug>SparkupNext
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=://-,://
setlocal commentstring=//\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'pug'
setlocal filetype=pug
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetPugIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.pug
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'pug'
setlocal syntax=pug
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("tablet.sass") | buffer tablet.sass | else | edit tablet.sass | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=://
setlocal commentstring=//\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*\\%(@mixin\\|=\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sass'
setlocal filetype=sass
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=[\"']\\=
setlocal includeexpr=substitute(v:fname,'\\%(.*/\\|^\\)\\zs','_','')
setlocal indentexpr=GetSassIndent()
setlocal indentkeys=o,O,*<Return>,<:>,!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=csscomplete#CompleteCSS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=0
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.sass,.scss,.css
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'sass'
setlocal syntax=sass
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 30 - ((22 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 011|
wincmd w
argglobal
if bufexists("~/siabim/staticfiles/js/development/modules/tablet.js") | buffer ~/siabim/staticfiles/js/development/modules/tablet.js | else | edit ~/siabim/staticfiles/js/development/modules/tablet.js | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJavascriptIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0],0)
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=0
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/siabim/django/siabim/templates/SiaBimHomepageTablet.pug") | buffer ~/siabim/django/siabim/templates/SiaBimHomepageTablet.pug | else | edit ~/siabim/django/siabim/templates/SiaBimHomepageTablet.pug | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer>  <Plug>SparkupExecute
imap <buffer>  <Plug>SparkupNext
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=://-,://
setlocal commentstring=//\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'pug'
setlocal filetype=pug
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetPugIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=0
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.pug
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'pug'
setlocal syntax=pug
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("desktop.sass") | buffer desktop.sass | else | edit desktop.sass | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=://
setlocal commentstring=//\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*\\%(@mixin\\|=\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sass'
setlocal filetype=sass
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=[\"']\\=
setlocal includeexpr=substitute(v:fname,'\\%(.*/\\|^\\)\\zs','_','')
setlocal indentexpr=GetSassIndent()
setlocal indentkeys=o,O,*<Return>,<:>,!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=csscomplete#CompleteCSS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=0
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.sass,.scss,.css
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'sass'
setlocal syntax=sass
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 30 - ((21 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 011|
wincmd w
argglobal
if bufexists("~/siabim/staticfiles/js/development/modules/desktop.js") | buffer ~/siabim/staticfiles/js/development/modules/desktop.js | else | edit ~/siabim/staticfiles/js/development/modules/desktop.js | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#manual_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJavascriptIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,0],0)
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=0
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 03|
wincmd w
argglobal
if bufexists("~/siabim/django/siabim/templates/SiaBimHomepageDesktop.pug") | buffer ~/siabim/django/siabim/templates/SiaBimHomepageDesktop.pug | else | edit ~/siabim/django/siabim/templates/SiaBimHomepageDesktop.pug | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer>  <Plug>SparkupExecute
imap <buffer>  <Plug>SparkupNext
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=://-,://
setlocal commentstring=//\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'pug'
setlocal filetype=pug
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetPugIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=0
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.pug
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'pug'
setlocal syntax=pug
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 7 - ((4 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 013|
wincmd w
argglobal
if bufexists("html.sass") | buffer html.sass | else | edit html.sass | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=://
setlocal commentstring=//\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*\\%(@mixin\\|=\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sass'
setlocal filetype=sass
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=[\"']\\=
setlocal includeexpr=substitute(v:fname,'\\%(.*/\\|^\\)\\zs','_','')
setlocal indentexpr=GetSassIndent()
setlocal indentkeys=o,O,*<Return>,<:>,!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=csscomplete#CompleteCSS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=0
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.sass,.scss,.css
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'sass'
setlocal syntax=sass
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 35 - ((34 * winheight(0) + 46) / 92)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 02|
lcd ~/siabim/staticfiles/css/development/sass
wincmd w
argglobal
if bufexists("~/siabim/staticfiles/css/development/sass/mixins.sass") | buffer ~/siabim/staticfiles/css/development/sass/mixins.sass | else | edit ~/siabim/staticfiles/css/development/sass/mixins.sass | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=://
setlocal commentstring=//\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=neocomplcache#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*\\%(@mixin\\|=\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sass'
setlocal filetype=sass
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=[\"']\\=
setlocal includeexpr=substitute(v:fname,'\\%(.*/\\|^\\)\\zs','_','')
setlocal indentexpr=GetSassIndent()
setlocal indentkeys=o,O,*<Return>,<:>,!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=csscomplete#CompleteCSS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=0
setlocal shiftwidth=2
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.sass,.scss,.css
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'sass'
setlocal syntax=sass
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 31 - ((30 * winheight(0) + 46) / 92)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 03|
lcd ~/siabim/staticfiles/css/development/sass
wincmd w
exe '1resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 1resize ' . ((&columns * 63 + 158) / 317)
exe '2resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 2resize ' . ((&columns * 63 + 158) / 317)
exe '3resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 3resize ' . ((&columns * 63 + 158) / 317)
exe '4resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 4resize ' . ((&columns * 63 + 158) / 317)
exe '5resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 5resize ' . ((&columns * 63 + 158) / 317)
exe '6resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 6resize ' . ((&columns * 63 + 158) / 317)
exe '7resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 7resize ' . ((&columns * 62 + 158) / 317)
exe '8resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 8resize ' . ((&columns * 62 + 158) / 317)
exe '9resize ' . ((&lines * 30 + 47) / 94)
exe 'vert 9resize ' . ((&columns * 62 + 158) / 317)
exe 'vert 10resize ' . ((&columns * 63 + 158) / 317)
exe 'vert 11resize ' . ((&columns * 62 + 158) / 317)
tabnext 1
badd +1 ~/siabim/staticfiles/css/development/sass/phone.sass
badd +1 ~/siabim/django/siabim/templates/SiaBimHomepageDesktop.pug
badd +1 ~/siabim/django/siabim/templates/SiaBimHomepagePhone.pug
badd +1 ~/siabim/staticfiles/css/development/sass/tablet.sass
badd +0 ~/siabim/django/siabim/templates/SiaBimHomepageTablet.pug
badd +1 ~/siabim/staticfiles/css/development/sass/desktop.sass
badd +1 ~/siabim/staticfiles/css/development/sass/html.sass
badd +1 ~/siabim/staticfiles/css/development/sass/mixins.sass
badd +1 ~/siabim/staticfiles/js/development/modules/menu.js
badd +0 ~/siabim/staticfiles/js/development/modules/tablet.js
badd +0 ~/siabim/staticfiles/js/development/modules/desktop.js
badd +0 ~/siabim/staticfiles/js/development/modules/phone.js
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

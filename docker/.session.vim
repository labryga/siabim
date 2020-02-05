let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/siabim/docker
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd ~/siabim/gulp/Dockerfile.development_build.sh
tabnew
tabrewind
edit docker-compose-development.yml
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 42 + 40) / 81)
exe 'vert 1resize ' . ((&columns * 91 + 137) / 274)
exe '2resize ' . ((&lines * 36 + 40) / 81)
exe 'vert 2resize ' . ((&columns * 91 + 137) / 274)
exe '3resize ' . ((&lines * 40 + 40) / 81)
exe 'vert 3resize ' . ((&columns * 91 + 137) / 274)
exe '4resize ' . ((&lines * 38 + 40) / 81)
exe 'vert 4resize ' . ((&columns * 91 + 137) / 274)
exe '5resize ' . ((&lines * 40 + 40) / 81)
exe 'vert 5resize ' . ((&columns * 90 + 137) / 274)
exe '6resize ' . ((&lines * 38 + 40) / 81)
exe 'vert 6resize ' . ((&columns * 90 + 137) / 274)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/siabim/nginx/conf.d/default.conf") | buffer ~/siabim/nginx/conf.d/default.conf | else | edit ~/siabim/nginx/conf.d/default.conf | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 19 - ((18 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 032|
wincmd w
argglobal
if bufexists("~/siabim/django/Dockerfile.development") | buffer ~/siabim/django/Dockerfile.development | else | edit ~/siabim/django/Dockerfile.development | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((13 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 010|
wincmd w
argglobal
if bufexists("~/siabim/django/Dockerfile.development_build.sh") | buffer ~/siabim/django/Dockerfile.development_build.sh | else | edit ~/siabim/django/Dockerfile.development_build.sh | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 02|
wincmd w
argglobal
if bufexists("~/siabim/gulp/Dockerfile.development") | buffer ~/siabim/gulp/Dockerfile.development | else | edit ~/siabim/gulp/Dockerfile.development | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 19 - ((0 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 05|
wincmd w
argglobal
if bufexists("~/siabim/gulp/Dockerfile.development_build.sh") | buffer ~/siabim/gulp/Dockerfile.development_build.sh | else | edit ~/siabim/gulp/Dockerfile.development_build.sh | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 42 + 40) / 81)
exe 'vert 1resize ' . ((&columns * 91 + 137) / 274)
exe '2resize ' . ((&lines * 36 + 40) / 81)
exe 'vert 2resize ' . ((&columns * 91 + 137) / 274)
exe '3resize ' . ((&lines * 40 + 40) / 81)
exe 'vert 3resize ' . ((&columns * 91 + 137) / 274)
exe '4resize ' . ((&lines * 38 + 40) / 81)
exe 'vert 4resize ' . ((&columns * 91 + 137) / 274)
exe '5resize ' . ((&lines * 40 + 40) / 81)
exe 'vert 5resize ' . ((&columns * 90 + 137) / 274)
exe '6resize ' . ((&lines * 38 + 40) / 81)
exe 'vert 6resize ' . ((&columns * 90 + 137) / 274)
tabnext
edit ~/siabim/django/siabim/siabim/settings.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 90 + 137) / 274)
exe 'vert 3resize ' . ((&columns * 91 + 137) / 274)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/siabim
wincmd w
argglobal
if bufexists("~/siabim/django/siabim/siabim/urls.py") | buffer ~/siabim/django/siabim/siabim/urls.py | else | edit ~/siabim/django/siabim/siabim/urls.py | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/siabim
wincmd w
argglobal
if bufexists("~/siabim/django/siabim/homepage/views.py") | buffer ~/siabim/django/siabim/homepage/views.py | else | edit ~/siabim/django/siabim/homepage/views.py | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/siabim
wincmd w
exe 'vert 1resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 90 + 137) / 274)
exe 'vert 3resize ' . ((&columns * 91 + 137) / 274)
tabnext 1
badd +29 ~/siabim/docker/docker-compose-development.yml
badd +1 ~/siabim/gulp/Dockerfile.development_build.sh
badd +13 ~/siabim/django/siabim/siabim/settings.py
badd +9 ~/siabim/nginx/conf.d/default.conf
badd +0 ~/siabim/django/Dockerfile.development
badd +1 ~/siabim/django/Dockerfile.development_build.sh
badd +1 ~/siabim/gulp/Dockerfile.development
badd +1 ~/siabim/django/siabim/siabim/urls.py
badd +3 ~/siabim/django/siabim/homepage/views.py
badd +9 ~/siabim/django/siabim/templates/SiaBimHomepage.pug
badd +18 ~/facelock/facelock/templates/facelockHomepage.pug
badd +6 ~/siabim/docker/docker-compose-development_build.sh
badd +9 ~/klangrausch/nginx/conf.d/default.conf
badd +35 ~/siabim/gulp/siabim/gulpfile.js
badd +1 ~/siabim/staticfiles/css/development/sass/main.sass
badd +1 ~/siabim/staticfiles/css/development/sass/html.sass
badd +3 ~/siabim/staticfiles/js/development/modules/menu.js
badd +2 ~/siabim/gulp/siabim/package.json
badd +1 ~/siabim/gulp/siabim/package-lock.json
badd +1 ~/facelock/nginx/conf.d/default.conf
badd +12 ~/siabim/.gitignore
badd +1 ~/siabim/docker/.env.klangrausch_django
badd +1 ~/siabim/docker/.env_siabim_django
badd +32 ~/klangrausch/django/klangrausch/klangrausch/settings.py
badd +2 ~/siabim/docker/.env_siabim_postgresql
badd +5 ~/facelock/facelock/homepage/views.py
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

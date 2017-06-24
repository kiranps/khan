" Color palette
let s:cterm_gray = 236
let s:cterm_white = 250
let s:cterm_arrow = 238
let s:gui_gray = '#303030'
let s:gui_white = '#afd787'
let s:gui_arrow = '#3a3a3a'

let g:airline#themes#khan#palette = {}

" Normal mode
let s:N1 = [s:gui_gray, s:gui_white, s:cterm_gray, s:cterm_white]
let s:N2 = [s:gui_white, s:gui_arrow, s:cterm_white, s:cterm_arrow]
let s:N3 = [s:gui_white, s:gui_gray, s:cterm_white, s:cterm_gray]

let g:airline#themes#khan#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#khan#palette.normal_modified = {
      \ 'airline_c': [s:gui_white, s:gui_gray, s:cterm_white, s:cterm_gray, ''],
      \ }

" Insert mode
let s:I1 = [s:gui_gray, s:gui_white, s:cterm_gray, s:cterm_white]
let s:I3 = [s:gui_white, s:gui_gray, s:cterm_white, s:cterm_gray]
let g:airline#themes#khan#palette.insert = airline#themes#generate_color_map(s:I1, s:N2, s:I3)
let g:airline#themes#khan#palette.insert_modified = copy(g:airline#themes#khan#palette.normal_modified)
let g:airline#themes#khan#palette.insert_paste = {
      \ 'airline_a': [s:gui_gray, s:gui_white, s:cterm_gray, s:cterm_white, ''],
      \ }

" Replace mode
let g:airline#themes#khan#palette.replace = {
      \ 'airline_a': [s:gui_gray, s:gui_white, s:cterm_gray, s:cterm_white, ''],
      \ 'airline_c': [s:gui_white, s:gui_gray, s:cterm_white, s:cterm_gray, ''],
      \ }
let g:airline#themes#khan#palette.replace_modified = copy(g:airline#themes#khan#palette.insert_modified)

" Visual mode
let s:V1 = [s:gui_gray, s:gui_white, s:cterm_gray, s:cterm_white]
let s:V3 = [s:gui_white, s:gui_gray, s:cterm_white, s:cterm_gray]
let g:airline#themes#khan#palette.visual = airline#themes#generate_color_map(s:V1, s:N2, s:V3)
let g:airline#themes#khan#palette.visual_modified = copy(g:airline#themes#khan#palette.insert_modified)

" Inactive window
let s:IA = [s:gui_white, s:gui_gray, s:cterm_white, s:cterm_gray, '']
let g:airline#themes#khan#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#khan#palette.inactive_modified = {
      \ 'airline_c': [s:gui_white, '', s:cterm_white, '', ''],
      \ }

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#khan#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui_white, s:gui_gray, s:cterm_white, s:cterm_gray, '' ] ,
      \ [ s:gui_white, s:gui_arrow, s:cterm_white, s:cterm_arrow, '' ] ,
      \ [ s:gui_gray, s:gui_white, s:cterm_gray, s:cterm_white, 'bold' ] )

" Vim color file - Polykai
" Generated by http://bytefluent.com/vivify 2017-02-19
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "Polykai"

"hi TabLineSel -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
hi Normal guifg=#f8f8f8 guibg=#141818 guisp=#141818 gui=NONE ctermfg=15 ctermbg=234 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi EnumerationName -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
"hi DefinedName -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#ffdf80 guibg=#000000 guisp=#000000 gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi WildMenu guifg=#40c3ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi SignColumn guifg=#9eff20 guibg=#232526 guisp=#232526 gui=NONE ctermfg=118 ctermbg=235 cterm=NONE
hi SpecialComment guifg=#909090 guibg=NONE guisp=NONE gui=bold ctermfg=246 ctermbg=NONE cterm=bold
hi Typedef guifg=#9eff20 guibg=NONE guisp=NONE gui=NONE ctermfg=118 ctermbg=NONE cterm=NONE
hi Title guifg=#ffdf80 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi Folded guifg=#3c4848 guibg=#000000 guisp=#000000 gui=NONE ctermfg=238 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#ff0062 guibg=NONE guisp=NONE gui=bold ctermfg=197 ctermbg=NONE cterm=bold
hi Include guifg=#9eff20 guibg=NONE guisp=NONE gui=NONE ctermfg=118 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#909090 guibg=#1e2424 guisp=#1e2424 gui=NONE ctermfg=246 ctermbg=235 cterm=NONE
hi NonText guifg=#909090 guibg=#1e2424 guisp=#1e2424 gui=NONE ctermfg=246 ctermbg=235 cterm=NONE
hi DiffText guifg=NONE guibg=#4C4745 guisp=#4C4745 gui=bold,italic ctermfg=NONE ctermbg=239 cterm=bold
hi ErrorMsg guifg=#ff0062 guibg=#232526 guisp=#232526 gui=bold ctermfg=197 ctermbg=235 cterm=bold
hi Ignore guifg=#909090 guibg=#1e2424 guisp=#1e2424 gui=NONE ctermfg=246 ctermbg=235 cterm=NONE
hi Debug guifg=#BCA3A3 guibg=NONE guisp=NONE gui=bold ctermfg=138 ctermbg=NONE cterm=bold
hi PMenuSbar guifg=#f8f8f8 guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Identifier guifg=#ffae00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#ff0062 guibg=NONE guisp=NONE gui=bold ctermfg=197 ctermbg=NONE cterm=bold
hi Conditional guifg=#ff0062 guibg=NONE guisp=NONE gui=bold ctermfg=197 ctermbg=NONE cterm=bold
hi StorageClass guifg=#FD971F guibg=NONE guisp=NONE gui=italic ctermfg=208 ctermbg=NONE cterm=NONE
hi Todo guifg=#1e2424 guibg=#f8f8f8 guisp=#f8f8f8 gui=bold ctermfg=235 ctermbg=15 cterm=bold
hi Special guifg=#f8f8f8 guibg=#1e2424 guisp=#1e2424 gui=italic ctermfg=15 ctermbg=235 cterm=NONE
hi LineNr guifg=#3c4848 guibg=#141818 guisp=#141818 gui=NONE ctermfg=238 ctermbg=234 cterm=NONE
hi StatusLine guifg=#1e2424 guibg=#f8f8f8 guisp=#f8f8f8 gui=NONE ctermfg=235 ctermbg=15 cterm=NONE
hi Label guifg=#ffdf80 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#f8f8f8 guibg=#1e2424 guisp=#1e2424 gui=NONE ctermfg=15 ctermbg=235 cterm=NONE
hi Search guifg=#f8f8f8 guibg=#3c4848 guisp=#3c4848 gui=NONE ctermfg=15 ctermbg=238 cterm=NONE
hi Delimiter guifg=#909090 guibg=NONE guisp=NONE gui=NONE ctermfg=246 ctermbg=NONE cterm=NONE
hi Statement guifg=#ff0062 guibg=NONE guisp=NONE gui=bold ctermfg=197 ctermbg=NONE cterm=bold
hi Comment guifg=#909090 guibg=NONE guisp=NONE gui=NONE ctermfg=246 ctermbg=NONE cterm=NONE
hi Character guifg=#ffdf80 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi Float guifg=#c080ff guibg=NONE guisp=NONE gui=NONE ctermfg=177 ctermbg=NONE cterm=NONE
hi Number guifg=#c080ff guibg=NONE guisp=NONE gui=NONE ctermfg=177 ctermbg=NONE cterm=NONE
hi Boolean guifg=#6080ff guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi Operator guifg=#40c3ff guibg=NONE guisp=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi CursorLine guifg=#f8f8f8 guibg=#1e2424 guisp=#1e2424 gui=NONE ctermfg=15 ctermbg=235 cterm=NONE
hi Question guifg=#40c3ff guibg=NONE guisp=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#FFFFFF guibg=#333333 guisp=#333333 gui=bold ctermfg=15 ctermbg=236 cterm=bold
hi VisualNOS guifg=NONE guibg=#403D3D guisp=#403D3D gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi DiffDelete guifg=#960050 guibg=#1E0010 guisp=#1E0010 gui=NONE ctermfg=89 ctermbg=53 cterm=NONE
hi ModeMsg guifg=#ffdf80 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi CursorColumn guifg=#f8f8f8 guibg=#1e2424 guisp=#1e2424 gui=NONE ctermfg=15 ctermbg=235 cterm=NONE
hi Define guifg=#40c3ff guibg=NONE guisp=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Function guifg=#40c3ff guibg=NONE guisp=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#3c4848 guibg=#000000 guisp=#000000 gui=NONE ctermfg=238 ctermbg=NONE cterm=NONE
hi PreProc guifg=#ff0062 guibg=NONE guisp=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi Visual guifg=NONE guibg=#403D3D guisp=#403D3D gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi MoreMsg guifg=#ffdf80 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi VertSplit guifg=#909090 guibg=#080808 guisp=#080808 gui=bold ctermfg=246 ctermbg=232 cterm=bold
hi Exception guifg=#9eff20 guibg=NONE guisp=NONE gui=bold ctermfg=118 ctermbg=NONE cterm=bold
hi Keyword guifg=#ff0062 guibg=NONE guisp=NONE gui=bold ctermfg=197 ctermbg=NONE cterm=bold
hi Type guifg=#9eff20 guibg=NONE guisp=NONE gui=NONE ctermfg=118 ctermbg=NONE cterm=NONE
hi DiffChange guifg=#89807D guibg=#4C4745 guisp=#4C4745 gui=NONE ctermfg=245 ctermbg=239 cterm=NONE
hi Cursor guifg=#1e2424 guibg=#f8f8f8 guisp=#f8f8f8 gui=NONE ctermfg=235 ctermbg=15 cterm=NONE
hi Error guifg=#960050 guibg=#1E0010 guisp=#1E0010 gui=NONE ctermfg=89 ctermbg=53 cterm=NONE
hi PMenu guifg=#40c3ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi SpecialKey guifg=#40c3ff guibg=NONE guisp=NONE gui=italic ctermfg=81 ctermbg=NONE cterm=NONE
hi Constant guifg=#6080ff guibg=NONE guisp=NONE gui=bold ctermfg=69 ctermbg=NONE cterm=bold
hi Tag guifg=#ff0062 guibg=NONE guisp=NONE gui=italic ctermfg=197 ctermbg=NONE cterm=NONE
hi String guifg=#ffdf80 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=#40c3ff guibg=#1e2424 guisp=#1e2424 gui=NONE ctermfg=81 ctermbg=235 cterm=NONE
hi MatchParen guifg=#000000 guibg=#FD971F guisp=#FD971F gui=bold ctermfg=NONE ctermbg=208 cterm=bold
hi LocalVariable guifg=#f8f8f8 guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Repeat guifg=#ff0062 guibg=NONE guisp=NONE gui=bold ctermfg=197 ctermbg=NONE cterm=bold
hi Directory guifg=#9eff20 guibg=NONE guisp=NONE gui=bold ctermfg=118 ctermbg=NONE cterm=bold
hi Structure guifg=#40c3ff guibg=NONE guisp=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Macro guifg=#ffdf80 guibg=NONE guisp=NONE gui=italic ctermfg=222 ctermbg=NONE cterm=NONE
hi Underlined guifg=#909090 guibg=NONE guisp=NONE gui=underline ctermfg=246 ctermbg=NONE cterm=underline
hi DiffAdd guifg=NONE guibg=#13354A guisp=#13354A gui=NONE ctermfg=NONE ctermbg=23 cterm=NONE
hi cursorim guifg=#404040 guibg=#8b8bff guisp=#8b8bff gui=NONE ctermfg=238 ctermbg=105 cterm=NONE
hi mbenormal guifg=#cfbfad guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=187 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi lcursor guifg=#404040 guibg=#8fff8b guisp=#8fff8b gui=NONE ctermfg=238 ctermbg=120 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#808bed guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#cfcfcd guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=252 ctermbg=60 cterm=NONE
hi user2 guifg=#7070a0 guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=103 ctermbg=60 cterm=NONE
hi user1 guifg=#00ff8b guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=48 ctermbg=60 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE

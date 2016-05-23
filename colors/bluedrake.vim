" bluedrake.vim
"
" Designer: Michael Malick
" Version:  0.10


hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "bluedrake"
" let g:bluedrake_256 = 1


"" GUI settings --------------------------------------------
if has("gui_running") 
    let s:Gbase03 = "002d49"
    let s:Gbase02 = "003951" 
    let s:Gbase01 = "2f5468"
    let s:Gbase00 = "577284"
    let s:Gbase0  = "8ea2b0"
    let s:Gbase1  = "b4c3cf"
    let s:Gbase2  = "dae6f0"
    let s:Gbase3  = "edf8ff"

    if &background=="dark"
        let s:base03 = s:Gbase03
        let s:base02 = s:Gbase02
        let s:base01 = s:Gbase01
        let s:base00 = s:Gbase00
        let s:base0  = s:Gbase0
        let s:base1  = s:Gbase1
        let s:base2  = s:Gbase2
        let s:base3  = s:Gbase3
    endif

    if &background=="light"
        let s:base03 = s:Gbase3
        let s:base02 = s:Gbase2
        let s:base01 = s:Gbase1
        let s:base00 = s:Gbase0
        let s:base0  = s:Gbase00
        let s:base1  = s:Gbase01
        let s:base2  = s:Gbase02
        let s:base3  = s:Gbase03
    endif

    " Multi-color palette (hue)
    let s:yellow  = "768f00"
    let s:orange  = "b67800"
    let s:red     = "d75a69"
    let s:magenta = "d74bb9"
    let s:violet  = "976ce2"
    let s:blue    = "0094d4"
    let s:cyan    = "00a39a"
    let s:green   = "009e3c"

    function! <SID>X(group, fg, bg, attr)
        if a:fg != ""
            exec "hi " . a:group . " guifg=#" . a:fg 
        endif
        if a:bg != ""
            exec "hi " . a:group . " guibg=#" . a:bg
        endif
        if a:attr != ""
            exec "hi " . a:group . " gui=" . a:attr 
        endif
    endfunction
endif


"" Terminal settings ---------------------------------------
if !has("gui_running")
    if !exists("g:bluedrake_256")
        let s:Tbase03  = "8"
        let s:Tbase02  = "0"
        let s:Tbase01  = "10"
        let s:Tbase00  = "11"
        let s:Tbase0   = "12"
        let s:Tbase1   = "14"
        let s:Tbase2   = "7"
        let s:Tbase3   = "15"
        let s:yellow   = "3"
        let s:orange   = "9"
        let s:red      = "1"
        let s:magenta  = "13"
        let s:violet   = "5"
        let s:blue     = "4"
        let s:cyan     = "6"
        let s:green    = "2"
    endif

    if exists("g:bluedrake_256")
        let s:Tbase03  = "235"
        let s:Tbase02  = "236"
        let s:Tbase01  = "24"
        let s:Tbase00  = "242"
        let s:Tbase0   = "247"
        let s:Tbase1   = "110"
        let s:Tbase2   = "253"
        let s:Tbase3   = "254"
        let s:yellow   = "100"
        let s:orange   = "136"
        let s:red      = "167"
        let s:magenta  = "170"
        let s:violet   = "99"
        let s:blue     = "32"
        let s:cyan     = "37"
        let s:green    = "28"
    endif

    if &background=="dark"
        let s:base03 = s:Tbase03
        let s:base02 = s:Tbase02
        let s:base01 = s:Tbase01
        let s:base00 = s:Tbase00
        let s:base0  = s:Tbase0
        let s:base1  = s:Tbase1
        let s:base2  = s:Tbase2
        let s:base3  = s:Tbase3
    endif

    if &background=="light"
        let s:base03 = s:Tbase3
        let s:base02 = s:Tbase2
        let s:base01 = s:Tbase1
        let s:base00 = s:Tbase0
        let s:base0  = s:Tbase00
        let s:base1  = s:Tbase01
        let s:base2  = s:Tbase02
        let s:base3  = s:Tbase03
    endif

    function! <SID>X(group, fg, bg, attr)
        if a:fg != ""
            exec "hi " . a:group .  " ctermfg=" . a:fg
        endif
        if a:bg != ""
            exec "hi " . a:group . " ctermbg=" . a:bg
        endif
        if a:attr != ""
            exec "hi " . a:group . " cterm=" . a:attr
        endif
    endfunction
endif


"" Vim highlighting ----------------------------------------
call <SID>X("Normal", s:blue, s:base03, "")
call <SID>X("Cursor", s:base03, s:base0, "")
call <SID>X("CursorLineNr", s:base1, s:base02, "none")
call <SID>X("LineNr", s:base00, s:base02, "")
call <SID>X("NonText", s:base0, "", "none")
call <SID>X("SpecialKey", s:base0, "", "")
call <SID>X("Search", s:base03, s:yellow, "")
call <SID>X("IncSearch", s:orange, s:base03, "")
call <SID>X("TabLine", s:base02, s:base1, "none")
call <SID>X("TabLineSel", s:base1, s:base03, "")
call <SID>X("TabLineFill", s:base1, s:blue, "reverse")
call <SID>X("StatusLine", s:base02, s:base0, "reverse")
call <SID>X("StatusLineNC", s:base02, s:base01, "reverse")
call <SID>X("VertSplit", s:base02, s:base02, "none")
call <SID>X("Visual", s:base03, s:base0, "")
call <SID>X("Directory", s:violet, "", "")  
call <SID>X("ModeMsg", s:green, "", "")
call <SID>X("MoreMsg", s:green, "", "")
call <SID>X("Question", s:green, "", "")
call <SID>X("WarningMsg", s:red, "", "")
call <SID>X("ErrorMsg", s:base2, s:red, "")
call <SID>X("Error", s:base2, s:red, "")
call <SID>X("MatchParen", s:magenta, s:base01, "bold")
call <SID>X("FoldColumn", s:base01, s:base03, "")
call <SID>X("vimCommand", s:violet, "", "none")
call <SID>X("DiffText", s:green, s:base02, "none")
call <SID>X("DiffChange", s:orange, s:base02, "none")
call <SID>X("DiffAdd", s:cyan, s:base02, "none")
call <SID>X("DiffDelete", s:red, s:base02, "none")
call <SID>X("WildMenu", s:base02, s:blue, "none")
if version >= 700
    call <SID>X("CursorLine", "", s:base02, "none")
    call <SID>X("CursorColumn", "", s:base01, "none")
    call <SID>X("Folded", s:base0, s:base03, "")
    call <SID>X("PMenu", s:base0, s:base02, "none")
    call <SID>X("PMenuSel", s:base02, s:blue, "")
    call <SID>X("PMenuThumb", s:base00, s:base01, "")
    call <SID>X("SignColumn", s:base01, s:base03, "")
endif
if version >= 703
    call <SID>X("ColorColumn", "", s:base02, "none")
    call <SID>X("Conceal", s:blue, s:base03, "")
endif


"" Standard highlighting -----------------------------------
call <SID>X("Todo", s:base0, s:base03, "none")
call <SID>X("Done", s:base00, "", "none")
call <SID>X("Closed", s:base00, "", "none")
call <SID>X("Title", s:orange, "", "none")
call <SID>X("Identifier", s:magenta, "", "none")
call <SID>X("Statement", s:yellow, "", "none")
call <SID>X("Conditional", s:blue, "", "none")
call <SID>X("Repeat", s:magenta, "", "none")
call <SID>X("Structure", s:violet, "", "none")
call <SID>X("Function", s:cyan, "", "none")
call <SID>X("Constant", s:red, "", "none")
call <SID>X("Special", s:cyan, "", "none")
call <SID>X("PreProc", s:violet, "", "none")
call <SID>X("Operator", s:cyan, "", "none")
call <SID>X("Type", s:orange, "", "none")
call <SID>X("Define", s:violet, "", "none")
call <SID>X("Include", s:red, "", "none")
call <SID>X("Underlined", s:violet, s:base03, "underline")

" Terminal and GUI differences (no italics in mac terminal)
if has("gui_running")
    call <SID>X("String", s:green, "", "italic")
    call <SID>X("Comment", s:base00, "", "italic")
else
    call <SID>X("String", s:green, "", "")
    call <SID>X("Comment", s:base00, "", "")
    call <SID>X("SpellBad", s:red, s:base03, "")
endif


"" Markdown ------------------------------------------------
call <SID>X("htmlH1", s:orange, "", "none")
call <SID>X("htmlH2", s:violet, "", "none")
call <SID>X("htmlH3", s:green, "", "none")
call <SID>X("htmlH4", s:magenta, "", "none")
call <SID>X("htmlH5", s:cyan, "", "none")
call <SID>X("htmlH6", s:yellow, "", "none")
call <SID>X("mkdListItem", s:base0, "", "none")


"" Pandoc --------------------------------------------------
call <SID>X("pandocYAMLHeader", s:orange, "", "")
call <SID>X("pandocAtxHeader", s:orange, "", "")
call <SID>X("pandocSetexHeader", s:orange, "", "")
call <SID>X("pandocAtxStart", s:orange, "", "")
call <SID>X("pandocListItemBullet", s:base0, "", "")
call <SID>X("pandocUListItemBullet", s:base0, "", "")
call <SID>X("pandocListItemBulletId", s:base0, "", "")
call <SID>X("pandocPCite", s:violet, "", "")
call <SID>X("pandocICite", s:violet, "", "")
call <SID>X("pandocCiteAnchor", s:violet, "", "")
call <SID>X("pandocCiteKey", s:violet, "", "")
call <SID>X("pandocCiteLocator", s:cyan, "", "")
call <SID>X("pandocDelimitedCodeBlockLanguage", s:base0, "", "")
call <SID>X("pandocDelimitedCodeBlockStart", s:base0, "", "")
call <SID>X("pandocDelimitedCodeBlockEnd", s:base0, "", "")
call <SID>X("pandocReferenceLabel", s:violet, "", "") " wrapped citations
call <SID>X("pandocReferenceURL", s:red, "", "")

" Name:       paramount.vim
" Version:    0.1.0
" Maintainer: github.com/owickstrom
" License:    The MIT License (MIT)
"
" A minimal colorscheme for Vim that only puts emphasis on the paramount.
"
" Based on the pencil and off colorschemes:
"
" https://github.com/reedes/vim-colors-pencil
" https://github.com/reedes/vim-colors-off
"
"""
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='paramount'

let s:black           = { "gui": "#000000", "cterm": "232" }
let s:medium_gray     = { "gui": "#767676", "cterm": "243" }
let s:indent_vline_gray = { "gui": "#242424", "cterm": "243" }
let s:white           = { "gui": "#F1F1F1", "cterm": "15"  }
let s:actual_white    = { "gui": "#FFFFFF", "cterm": "231" }
let s:subtle_black    = { "gui": "#303030", "cterm": "236" }
let s:near_black      = { "gui": "#1A1A1A", "cterm": "235" }
let s:light_black     = { "gui": "#262626", "cterm": "235" }
let s:lighter_black   = { "gui": "#4E4E4E", "cterm": "239" } "#4E4E4E
let s:dark_gray        = { "gui": "#404040", "cterm": "239" }
let s:light_gray      = { "gui": "#A8A8A8", "cterm": "248" }
let s:lighter_gray    = { "gui": "#C6C6C6", "cterm": "251" }
let s:lightest_gray   = { "gui": "#EEEEEE", "cterm": "255" }
let s:pink            = { "gui": "#fb007a", "cterm": "9"   }
let s:dark_red        = { "gui": "#C30771", "cterm": "1"   }
let s:light_red       = { "gui": "#E32791", "cterm": "1"   }
let s:orange          = { "gui": "#D75F5F", "cterm": "167" }
let s:darker_blue     = { "gui": "#005F87", "cterm": "18"  }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "32"  }
let s:blue            = { "gui": "#20BBFC", "cterm": "12"  }
let s:light_blue      = { "gui": "#b6d6fd", "cterm": "153" }
let s:dark_cyan       = { "gui": "#20A5BA", "cterm": "6"   }
let s:light_cyan      = { "gui": "#4FB8CC", "cterm": "14"  }
let s:dark_green      = { "gui": "#10A778", "cterm": "2"   }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "10"  }
let s:dark_purple     = { "gui": "#af5fd7", "cterm": "134" }
let s:darkest_purple  = { "gui": "#645780", "cterm": "134" }
let s:light_purple    = { "gui": "#a790d5", "cterm": "140" }
let s:selected_text   = { "gui": "#2C3043", "cterm": "140" } " original #413273, then #221A3D (dark purple)
let s:yellow          = { "gui": "#F3E430", "cterm": "11"  }
let s:light_yellow    = { "gui": "#ffff87", "cterm": "228" }
let s:dark_yellow     = { "gui": "#A89C14", "cterm": "3"   }
let s:cyber_blue      = { "gui": "#165aa2", "cterm": "134" }
let s:cyber_blue_light= { "gui": "#5186ee", "cterm": "134" }
let s:dark_dark_purple= { "gui": "#221A3D", "cterm": "134" }
let s:very_light_cyan = { "gui": "#94D5CD", "cterm": "228" }
let s:very_light_green= { "gui": "#94D6A9", "cterm": "228" }
let s:baby_blue       = { "gui": "#ADEEFF", "cterm": "15" }

" to obtain the default colours run: :verbose hi TodoBgPERF ...
let s:todo_comments_block_bg = { "gui": "#00A4FF", "cterm": "208" }  " For PERF, HACK, NOTE, TODO, FIX, WARN
let s:todo_comments_block_text_yellow = { "gui": "#FFDF00", "cterm": "15"}
let s:todo_comments_block_bg_yellow = { "gui": "#141106", "cterm": "15"}
let s:todo_comments_block_text_red = { "gui": "#FF0000", "cterm": "15"}
let s:todo_comments_block_bg_red = { "gui": "#120606", "cterm": "15"}
let s:todo_comments_block_text_lime = { "gui": "#00FF00", "cterm": "15"}
let s:todo_comments_block_bg_lime = { "gui": "#061406", "cterm": "15"}
let s:todo_comments_block_text_blue = { "gui": "#31529E", "cterm": "15"}
let s:todo_comments_block_bg_blue = { "gui": "#060B14", "cterm": "15"}
let s:todo_comments_block_text_turquoise = { "gui": "#319E9C", "cterm": "15"}
let s:todo_comments_block_bg_turquoise = { "gui": "#050F0F", "cterm": "15"}
let s:todo_comments_block_text_orange = { "gui": "#FF8000", "cterm": "15"}
let s:todo_comments_block_bg_orange = { "gui": "#120A06", "cterm": "15"}
let s:todo_comments_block_text_pink = { "gui": "#BF00FF", "cterm": "15"}
let s:todo_comments_block_bg_pink = { "gui": "#0F0014", "cterm": "15"}
let s:todo_comments_white = { "gui": "#F1F1F1", "cterm": "15" } " same as regular comments

let s:background = &background

if &background == "dark"
  let s:bg              = s:black
  let s:bg_subtle       = s:lighter_black
  let s:bg_comments     = s:dark_gray
  let s:bg_very_subtle  = s:subtle_black
  let s:norm            = s:lighter_gray
  let s:menu_selected_text = s:subtle_black
  let s:norm_subtle     = s:medium_gray
  let s:purple          = s:light_purple
  let s:cyan            = s:light_cyan
  let s:green           = s:light_green
  let s:red             = s:light_red
  let s:visual          = s:selected_text
  let s:yellow          = s:light_yellow
else
  let s:bg              = s:actual_white
  let s:bg_subtle       = s:light_gray
  let s:bg_very_subtle  = s:lightest_gray
  let s:norm            = s:light_black
  let s:norm_subtle     = s:medium_gray
  let s:purple          = s:dark_purple
  let s:cyan            = s:dark_cyan
  let s:green           = s:dark_green
  let s:red             = s:dark_red
  let s:visual          = s:dark_purple
  let s:yellow          = s:dark_yellow
endif

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("Normal",        {"bg": s:bg, "fg": s:norm})

" restore &background's value in case changing Normal changed &background (:help :hi-normal-cterm)
if &background != s:background
   execute "set background=" . s:background
endif

call s:h("Cursor",        {"bg": s:purple, "fg": s:norm })
call s:h("Comment",       {"fg": s:bg_comments, "gui": "italic"})

call s:h("Constant",      {"fg": s:purple})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
hi! link String           Constant

"call s:h("Identifier",    {"fg": s:dark_blue})
hi! link Identifier       Normal
hi! link Function         Identifier

call s:h("Statement",     {"fg": s:norm_subtle})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Keyword          Statement
hi! link Exception        Statement

call s:h("Operator",      {"fg": s:norm, "cterm": "bold", "gui": "bold"})

call s:h("PreProc",     {"fg": s:norm_subtle})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

call s:h("Type",          {"fg": s:norm})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

call s:h("Special",       {"fg": s:norm_subtle, "gui": "italic"})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h("Underlined",    {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",        {"fg": s:bg})
call s:h("Error",         {"fg": s:actual_white, "bg": s:red, "cterm": "bold"})
call s:h("Todo",          {"fg": s:purple, "gui": "underline", "cterm": "underline"})
call s:h("SpecialKey",    {"fg": s:light_green})
call s:h("NonText",       {"fg": s:indent_vline_gray})
call s:h("Directory",     {"fg": s:dark_gray})
call s:h("ErrorMsg",      {"fg": s:darkest_purple})
call s:h("IncSearch",     {"bg": s:black, "fg": s:todo_comments_block_text_lime}) " originally yellow (light_yellow), light_black"
call s:h("Search",        {"bg": s:light_green, "fg": s:light_black})
call s:h("MoreMsg",       {"fg": s:medium_gray, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:dark_gray}) "bg_subtle
call s:h("CursorLineNr",  {"fg": s:purple, "bg": s:bg_very_subtle})
call s:h("Question",      {"fg": s:darkest_purple})
call s:h("StatusLine",    {"bg": s:bg_very_subtle})
call s:h("StatusLineNC",  {"bg": s:bg_very_subtle, "fg": s:medium_gray})
call s:h("VertSplit",     {"bg": s:bg_very_subtle, "fg": s:bg_very_subtle})
call s:h("Title",         {"fg": s:dark_blue})
call s:h("Visual",        {"fg": s:norm, "bg": s:visual})
call s:h("VisualNOS",     {"bg": s:bg_subtle})
call s:h("WarningMsg",    {"fg": s:yellow})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"fg": s:medium_gray})
call s:h("FoldColumn",    {"fg": s:bg_subtle})
call s:h("DiffAdd",       {"fg": s:green})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:dark_yellow})
call s:h("DiffText",      {"fg": s:dark_blue})
call s:h("SignColumn",    {"fg": s:light_green})


if has("gui_running")
  call s:h("SpellBad",    {"gui": "underline", "sp": s:red})
  call s:h("SpellCap",    {"gui": "underline", "sp": s:light_green})
  call s:h("SpellRare",   {"gui": "underline", "sp": s:pink})
  call s:h("SpellLocal",  {"gui": "underline", "sp": s:dark_green})
else
  call s:h("SpellBad",    {"cterm": "underline", "fg": s:red})
  call s:h("SpellCap",    {"cterm": "underline", "fg": s:light_green})
  call s:h("SpellRare",   {"cterm": "underline", "fg": s:pink})
  call s:h("SpellLocal",  {"cterm": "underline", "fg": s:dark_green})
endif

call s:h("Pmenu",         {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuSel",      {"fg": s:menu_selected_text, "bg": s:purple})
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:bg_subtle})
call s:h("TabLine",       {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("TabLineSel",    {"fg": s:purple, "bg": s:bg_subtle, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",   {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("CursorColumn",  {"bg": s:bg_very_subtle})
call s:h("CursorLine",    {"bg": s:bg_very_subtle})
call s:h("ColorColumn",   {"bg": s:bg_subtle})

call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})
call s:h("qfLineNr",      {"fg": s:medium_gray})


" Overrides
"call s:h("@punctuation.delimiter", {"fg": s:medium_gray, "gui": "italic"})
call s:h("@constant", {"fg": s:medium_gray})
call s:h("@keyword.return", {"fg": s:dark_gray})
call s:h("@operator", {"fg": s:medium_gray})
call s:h("@string.escape", {"fg": s:dark_gray})

" Python specific overrides
call s:h("@variable.parameter.python", {"fg": s:medium_gray})
call s:h("@type.python", {"fg": s:medium_gray}) " Either Or
call s:h("@keyword.exception.python", {"fg": s:dark_gray})
call s:h("@string.documentation.python", {"fg": s:dark_gray})

" Go specific overrides
" call s:h("@function.method.call.go", {"fg": s:medium_gray})
" call s:h("@comment.documentation.go", {"fg": s:dark_gray})

" Rust specific overrides

" JavaScript specific overrides

call s:h("htmlH1",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH2",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH3",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH4",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH5",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH6",        {"bg": s:bg, "fg": s:norm})

" Synatastic
call s:h("SyntasticWarningSign",    {"fg": s:yellow})
call s:h("SyntasticWarning",        {"bg": s:yellow, "fg": s:black, "gui": "bold", "cterm": "bold"})
call s:h("SyntasticErrorSign",      {"fg": s:red})
call s:h("SyntasticError",          {"bg": s:red, "fg": s:white, "gui": "bold", "cterm": "bold"})

" Neomake
hi link NeomakeWarningSign  SyntasticWarningSign
hi link NeomakeErrorSign  SyntasticErrorSign

" ALE
hi link ALEWarningSign  SyntasticWarningSign
hi link ALEErrorSign  SyntasticErrorSign

" Signify, git-gutter
hi link SignifySignAdd              LineNr
hi link SignifySignDelete           LineNr
hi link SignifySignChange           LineNr
hi link GitGutterAdd                LineNr
hi link GitGutterDelete             LineNr
hi link GitGutterChange             LineNr
hi link GitGutterChangeDelete       LineNr

" Todo-comments highlight groups
call s:h("TodoBgWARN", {"fg": s:todo_comments_block_text_orange, "bg": s:todo_comments_block_bg_orange, "cterm": "bold" })
call s:h("TodoFgWARN", {"fg": s:dark_gray })

call s:h("TodoBgPERF", {"fg": s:todo_comments_block_text_blue, "bg": s:todo_comments_block_bg_blue, "cterm": "bold" })
call s:h("TodoFgPERF", {"fg": s:dark_gray })

call s:h("TodoBgHACK", {"fg": s:todo_comments_block_text_lime, "bg": s:todo_comments_block_bg_lime, "cterm": "bold" })
call s:h("TodoFgHACK", {"fg": s:dark_gray })

call s:h("TodoBgTODO", {"fg": s:todo_comments_block_text_yellow, "bg": s:todo_comments_block_bg_yellow, "cterm": "bold" })
call s:h("TodoFgTODO", {"fg": s:dark_gray })

call s:h("TodoBgNOTE", {"fg": s:todo_comments_block_text_turquoise, "bg": s:todo_comments_block_bg_turquoise, "cterm": "bold" })
call s:h("TodoFgNOTE", {"fg": s:dark_gray })

call s:h("TodoBgFIX", {"fg": s:todo_comments_block_text_red, "bg": s:todo_comments_block_bg_red, "cterm": "bold" })
call s:h("TodoFgFIX", {"fg": s:dark_gray })

call s:h("TodoBgIMPORTANT", {"fg": s:todo_comments_block_text_pink, "bg": s:todo_comments_block_bg_pink, "cterm": "bold" })
call s:h("TodoFgIMPORTANT", {"fg": s:dark_gray })

call s:h("TodoBg_", {"fg": s:black, "gui": "bold" })
call s:h("TodoFg_", {"fg": s:light_cyan, "bg": s:todo_comments_block_bg_turquoise, "cterm": "bold" })

" File:       kuroi.vim
" Maintainer: aonemd
" URL:        https://github.com/aonemd/kuroi.vim
" Modified:   04 April 2019 02:38 PM EET
" License:    MIT

" Initialisation:"{{{
" ----------------------------------------------------------------------------

hi clear

if exists("syntax_on")
  syntax reset
endif

let s:style = 'dark'

let g:colors_name = "kuroi"

"}}}
" GUI And Cterm Palettes:"{{{
" ----------------------------------------------------------------------------

let s:palette = {'gui' : {} , 'cterm' : {}}

let s:gui_background = "#1b1918"
let s:gui_foreground = "#c5c8c6"
let s:gui_selection  = "#373b41"
let s:gui_line       = "#282a2e"
let s:gui_comment    = "#707880"

let s:gui_red          = "#d75f87"
let s:gui_orange       = "#d78700"
let s:gui_yellow       = "#ffd700"
let s:gui_green        = "#5faf5f"
let s:gui_aqua         = "#87afd7"
let s:gui_blue         = "#5fafff"
let s:gui_purple       = "#8787ff"

let s:palette.gui.background   = { 'dark' : s:gui_background }
let s:palette.gui.foreground   = { 'dark' : s:gui_foreground }
let s:palette.gui.selection    = { 'dark' : s:gui_selection  }
let s:palette.gui.line         = { 'dark' : s:gui_line       }
let s:palette.gui.comment      = { 'dark' : s:gui_comment    }
let s:palette.gui.red          = { 'dark' : s:gui_red        }
let s:palette.gui.orange       = { 'dark' : s:gui_orange     }
let s:palette.gui.yellow       = { 'dark' : s:gui_yellow     }
let s:palette.gui.green        = { 'dark' : s:gui_green      }
let s:palette.gui.aqua         = { 'dark' : s:gui_aqua       }
let s:palette.gui.blue         = { 'dark' : s:gui_blue       }
let s:palette.gui.purple       = { 'dark' : s:gui_purple     }
let s:palette.gui.window       = { 'dark' : "#303030"        }
let s:palette.gui.darkcolumn   = { 'dark' : "#1c1c1c"        }
let s:palette.gui.addbg        = { 'dark' : s:gui_green      }
let s:palette.gui.addfg        = { 'dark' : "#dfefdf"        }
let s:palette.gui.changebg     = { 'dark' : s:gui_orange     }
let s:palette.gui.changefg     = { 'dark' : "#f7e7cc"        }
let s:palette.gui.delbg        = { 'dark' : s:gui_red        }
let s:palette.gui.darkblue     = { 'dark' : "#00005f"        }
let s:palette.gui.darkcyan     = { 'dark' : "#005f5f"        }
let s:palette.gui.darkred      = { 'dark' : "#e84118"        }
let s:palette.gui.darkpurple   = { 'dark' : "#5f005f"        }
let s:palette.gui.gray         = { 'dark' : "#262626"        }
let s:palette.gui.statusline   = { 'dark' : "#6c6c6c"        }
let s:palette.gui.statuslinenc = { 'dark' : "#4e4e4e"        }
let s:palette.gui.gitgutteradd = { 'dark' : s:gui_green      }
let s:palette.gui.gitgutterchg = { 'dark' : s:gui_orange     }
let s:palette.gui.gitgutterdlt = { 'dark' : s:gui_red        }
let s:palette.gui.linewarning  = { 'dark' : "#371F1C"        }

let s:cterm_background = "234"
let s:cterm_foreground = "250"
let s:cterm_selection  = "237"
let s:cterm_line       = "235"
let s:cterm_comment    = "243"

let s:cterm_red    = "168"
let s:cterm_orange = "172"
let s:cterm_yellow = "220"
let s:cterm_green  = "71"
let s:cterm_aqua   = "110"
let s:cterm_blue   = "75"
let s:cterm_purple = "105"

let s:palette.cterm.background   = { 'dark' : s:cterm_background }
let s:palette.cterm.foreground   = { 'dark' : s:cterm_foreground }
let s:palette.cterm.window       = { 'dark' : "236"              }
let s:palette.cterm.selection    = { 'dark' : s:cterm_selection  }
let s:palette.cterm.line         = { 'dark' : s:cterm_line       }
let s:palette.cterm.comment      = { 'dark' : s:cterm_comment    }
let s:palette.cterm.red          = { 'dark' : s:cterm_red        }
let s:palette.cterm.orange       = { 'dark' : s:cterm_orange     }
let s:palette.cterm.yellow       = { 'dark' : s:cterm_yellow     }
let s:palette.cterm.green        = { 'dark' : s:cterm_green      }
let s:palette.cterm.aqua         = { 'dark' : s:cterm_aqua       }
let s:palette.cterm.blue         = { 'dark' : s:cterm_blue       }
let s:palette.cterm.purple       = { 'dark' : s:cterm_purple     }
let s:palette.cterm.darkcolumn   = { 'dark' : "234"              }
let s:palette.cterm.addbg        = { 'dark' : s:cterm_green      }
let s:palette.cterm.addfg        = { 'dark' : "193"              }
let s:palette.cterm.changebg     = { 'dark' : s:cterm_orange     }
let s:palette.cterm.changefg     = { 'dark' : "189"              }
let s:palette.cterm.delbg        = { 'dark' : s:cterm_red        }
let s:palette.cterm.darkblue     = { 'dark' : "17"               }
let s:palette.cterm.darkcyan     = { 'dark' : "24"               }
let s:palette.cterm.darkred      = { 'dark' : "160"              }
let s:palette.cterm.darkpurple   = { 'dark' : "53"               }
let s:palette.cterm.gray         = { 'dark' : "235"              }
let s:palette.cterm.statusline   = { 'dark' : "242"              }
let s:palette.cterm.statuslinenc = { 'dark' : "239"              }
let s:palette.cterm.gitgutteradd = { 'dark' : s:cterm_green      }
let s:palette.cterm.gitgutterchg = { 'dark' : s:cterm_orange     }
let s:palette.cterm.gitgutterdlt = { 'dark' : s:cterm_red        }
let s:palette.cterm.linewarning  = { 'dark' : "NONE"             }

"}}}
" Formatting Options:"{{{
" ----------------------------------------------------------------------------
let s:none   = "NONE"
let s:t_none = "NONE"
let s:n      = "NONE"
let s:c      = ",undercurl"
let s:r      = ",reverse"
let s:s      = ",standout"
let s:b      = ",bold"
let s:u      = ",underline"
let s:i      = ",italic"

"}}}
" Highlighting Primitives:"{{{
" ----------------------------------------------------------------------------
function! s:build_prim(hi_elem, field)
  " Given a:hi_elem = bg, a:field = comment
  let l:vname = "s:" . a:hi_elem . "_" . a:field " s:bg_comment
  let l:gui_assign = "gui".a:hi_elem."=".s:palette.gui[a:field][s:style] " guibg=...
  let l:cterm_assign = "cterm".a:hi_elem."=".s:palette.cterm[a:field][s:style] " ctermbg=...
  exe "let " . l:vname . " = ' " . l:gui_assign . " " . l:cterm_assign . "'"
endfunction

let s:bg_none = ' guibg=NONE ctermbg=NONE'
call s:build_prim('bg', 'foreground')
call s:build_prim('bg', 'background')
call s:build_prim('bg', 'selection')
call s:build_prim('bg', 'line')
call s:build_prim('bg', 'comment')
call s:build_prim('bg', 'red')
call s:build_prim('bg', 'orange')
call s:build_prim('bg', 'yellow')
call s:build_prim('bg', 'green')
call s:build_prim('bg', 'aqua')
call s:build_prim('bg', 'blue')
call s:build_prim('bg', 'purple')
call s:build_prim('bg', 'window')
call s:build_prim('bg', 'darkcolumn')
call s:build_prim('bg', 'addbg')
call s:build_prim('bg', 'addfg')
call s:build_prim('bg', 'changebg')
call s:build_prim('bg', 'changefg')
call s:build_prim('bg', 'delbg')
call s:build_prim('bg', 'darkblue')
call s:build_prim('bg', 'darkcyan')
call s:build_prim('bg', 'darkred')
call s:build_prim('bg', 'darkpurple')
call s:build_prim('bg', 'statusline')
call s:build_prim('bg', 'statuslinenc')
call s:build_prim('bg', 'linewarning')

let s:fg_none = ' guifg=NONE ctermfg=NONE'
call s:build_prim('fg', 'foreground')
call s:build_prim('fg', 'background')
call s:build_prim('fg', 'selection')
call s:build_prim('fg', 'line')
call s:build_prim('fg', 'comment')
call s:build_prim('fg', 'red')
call s:build_prim('fg', 'orange')
call s:build_prim('fg', 'yellow')
call s:build_prim('fg', 'green')
call s:build_prim('fg', 'aqua')
call s:build_prim('fg', 'blue')
call s:build_prim('fg', 'purple')
call s:build_prim('fg', 'window')
call s:build_prim('fg', 'darkcolumn')
call s:build_prim('fg', 'addbg')
call s:build_prim('fg', 'addfg')
call s:build_prim('fg', 'changebg')
call s:build_prim('fg', 'changefg')
call s:build_prim('fg', 'darkblue')
call s:build_prim('fg', 'darkcyan')
call s:build_prim('fg', 'darkred')
call s:build_prim('fg', 'darkpurple')
call s:build_prim('fg', 'gray')
call s:build_prim('fg', 'gitgutteradd')
call s:build_prim('fg', 'gitgutterchg')
call s:build_prim('fg', 'gitgutterdlt')

exe "let s:fmt_none = ' gui=NONE".          " cterm=NONE".          " term=NONE"        ."'"
exe "let s:fmt_bold = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_bldi = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_undr = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_undb = ' gui=NONE".s:u.s:b.  " cterm=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_curl = ' gui=NONE".s:c.      " cterm=NONE".s:c.      " term=NONE".s:c    ."'"
exe "let s:fmt_ital = ' gui=NONE".s:i.      " cterm=NONE".s:i.      " term=NONE".s:i    ."'"
exe "let s:fmt_stnd = ' gui=NONE".s:s.      " cterm=NONE".s:s.      " term=NONE".s:s    ."'"
exe "let s:fmt_revr = ' gui=NONE".s:r.      " cterm=NONE".s:r.      " term=NONE".s:r    ."'"
exe "let s:fmt_revb = ' gui=NONE".s:r.s:b.  " cterm=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"

exe "let s:sp_none       = ' guisp=". s:none                            ."'"
exe "let s:sp_foreground = ' guisp=". s:palette.gui.foreground[s:style] ."'"
exe "let s:sp_background = ' guisp=". s:palette.gui.background[s:style] ."'"
exe "let s:sp_selection  = ' guisp=". s:palette.gui.selection[s:style]  ."'"
exe "let s:sp_line       = ' guisp=". s:palette.gui.line[s:style]       ."'"
exe "let s:sp_comment    = ' guisp=". s:palette.gui.comment[s:style]    ."'"
exe "let s:sp_red        = ' guisp=". s:palette.gui.red[s:style]        ."'"
exe "let s:sp_orange     = ' guisp=". s:palette.gui.orange[s:style]     ."'"
exe "let s:sp_yellow     = ' guisp=". s:palette.gui.yellow[s:style]     ."'"
exe "let s:sp_green      = ' guisp=". s:palette.gui.green[s:style]      ."'"
exe "let s:sp_aqua       = ' guisp=". s:palette.gui.aqua[s:style]       ."'"
exe "let s:sp_blue       = ' guisp=". s:palette.gui.blue[s:style]       ."'"
exe "let s:sp_purple     = ' guisp=". s:palette.gui.purple[s:style]     ."'"
exe "let s:sp_window     = ' guisp=". s:palette.gui.window[s:style]     ."'"
exe "let s:sp_addbg      = ' guisp=". s:palette.gui.addbg[s:style]      ."'"
exe "let s:sp_addfg      = ' guisp=". s:palette.gui.addfg[s:style]      ."'"
exe "let s:sp_changebg   = ' guisp=". s:palette.gui.changebg[s:style]   ."'"
exe "let s:sp_changefg   = ' guisp=". s:palette.gui.changefg[s:style]   ."'"
exe "let s:sp_darkblue   = ' guisp=". s:palette.gui.darkblue[s:style]   ."'"
exe "let s:sp_darkcyan   = ' guisp=". s:palette.gui.darkcyan[s:style]   ."'"
exe "let s:sp_darkred    = ' guisp=". s:palette.gui.darkred[s:style]    ."'"
exe "let s:sp_darkpurple = ' guisp=". s:palette.gui.darkpurple[s:style] ."'"

"}}}
" Vim Highlighting: (see :help highlight-groups)"{{{
" ----------------------------------------------------------------------------
exe "hi! ColorColumn"   .s:fg_none        .s:bg_line        .s:fmt_none
"   Conceal"
"   Cursor"
"   CursorIM"
exe "hi! CursorColumn"  .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! CursorLine"    .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! Directory"     .s:fg_blue        .s:bg_none        .s:fmt_none
exe "hi! DiffAdd"       .s:fg_addfg       .s:bg_addbg       .s:fmt_none
exe "hi! DiffChange"    .s:fg_changefg    .s:bg_changebg    .s:fmt_none
exe "hi! DiffDelete"    .s:fg_background  .s:bg_delbg       .s:fmt_none
exe "hi! DiffText"      .s:fg_background  .s:bg_blue        .s:fmt_none
exe "hi! ErrorMsg"      .s:fg_background  .s:bg_red         .s:fmt_stnd
exe "hi! VertSplit"     .s:fg_window      .s:bg_none        .s:fmt_none
exe "hi! Folded"        .s:fg_comment     .s:bg_darkcolumn  .s:fmt_none
exe "hi! FoldColumn"    .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
exe "hi! SignColumn"    .s:fg_none        .s:bg_background  .s:fmt_none
"   Incsearch"
exe "hi! LineNr"        .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! CursorLineNr"  .s:fg_yellow      .s:bg_none        .s:fmt_none
exe "hi! MatchParen"    .s:fg_foreground  .s:bg_purple      .s:fmt_none
exe "hi! ModeMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! MoreMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! NonText"       .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! Pmenu"         .s:fg_foreground  .s:bg_selection   .s:fmt_none
exe "hi! PmenuSel"      .s:fg_foreground  .s:bg_selection   .s:fmt_revr
exe "hi! InfoPopup"     .s:fg_foreground  .s:bg_selection   .s:fmt_none
"   PmenuSbar"
"   PmenuThumb"
exe "hi! Question"          .s:fg_green       .s:bg_none          .s:fmt_none
exe "hi! Search"            .s:fg_background  .s:bg_yellow        .s:fmt_none
exe "hi! SpecialKey"        .s:fg_selection   .s:bg_none          .s:fmt_none
exe "hi! SpellCap"          .s:fg_blue        .s:bg_none          .s:fmt_undr
exe "hi! SpellLocal"        .s:fg_aqua        .s:bg_darkcyan      .s:fmt_undr
exe "hi! SpellBad"          .s:fg_darkred     .s:bg_none          .s:fmt_undr
exe "hi! SpellRare"         .s:fg_purple      .s:bg_darkpurple    .s:fmt_undr
exe "hi! StatusLine"        .s:fg_gray        .s:bg_statusline    .s:fmt_revr
exe "hi! StatusLineNC"      .s:fg_gray        .s:bg_statuslinenc  .s:fmt_revr
exe "hi! StatusLineTerm"    .s:fg_gray        .s:bg_statusline    .s:fmt_revr
exe "hi! StatusLineTermNC"  .s:fg_gray        .s:bg_statuslinenc  .s:fmt_revr
exe "hi! TabLine"           .s:fg_foreground  .s:bg_darkcolumn    .s:fmt_revr
exe "hi! TabLineFill"       .s:fg_background  .s:bg_background    .s:fmt_revr
exe "hi! EndOfBuffer"       .s:fg_background  .s:bg_background    .s:fmt_none
"   TabLineSel"
exe "hi! Title"             .s:fg_yellow      .s:bg_none        .s:fmt_bold
exe "hi! Visual"            .s:fg_none        .s:bg_selection   .s:fmt_none
"   VisualNos"
exe "hi! WarningMsg"        .s:fg_yellow      .s:bg_none        .s:fmt_undr
exe "hi! WildMenu"          .s:fg_selection   .s:bg_orange      .s:fmt_none
exe "hi! LongLineWarning"   .s:fg_none        .s:bg_linewarning .s:fmt_undr


exe "hi! Normal"        .s:fg_foreground  .s:bg_background    .s:fmt_none

"}}}
" Generic Syntax Highlighting: (see :help group-name)"{{{
" ----------------------------------------------------------------------------
exe "hi! Comment"         .s:fg_comment     .s:bg_none        .s:fmt_none

exe "hi! Constant"        .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! String"          .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! Character"       .s:fg_green       .s:bg_none        .s:fmt_none
"   Character"
"   Number"
"   Boolean"
"   Float"

exe "hi! Identifier"      .s:fg_purple      .s:bg_none        .s:fmt_none
exe "hi! Function"        .s:fg_foreground  .s:bg_none        .s:fmt_bold

exe "hi! Statement"       .s:fg_blue        .s:bg_none        .s:fmt_none
"   Conditional"
"   Repeat"
"   Label"
exe "hi! Operator"        .s:fg_aqua        .s:bg_none        .s:fmt_none
"   Keyword"
"   Exception"

exe "hi! PreProc"         .s:fg_aqua        .s:bg_none        .s:fmt_none
"   Include"
"   Define"
"   Macro"
"   PreCondit"

exe "hi! Type"            .s:fg_orange      .s:bg_none        .s:fmt_none
"   StorageClass"
exe "hi! Structure"       .s:fg_aqua        .s:bg_none        .s:fmt_none
"   Typedef"

exe "hi! Special"         .s:fg_green       .s:bg_none        .s:fmt_none
"   SpecialChar"
"   Tag"
"   Delimiter"
"   SpecialComment"
"   Debug"
"
exe "hi! Underlined"      .s:fg_blue        .s:bg_none        .s:fmt_none

exe "hi! Ignore"          .s:fg_none        .s:bg_none        .s:fmt_none

exe "hi! Error"           .s:fg_darkred     .s:bg_none        .s:fmt_undr

exe "hi! Todo"            .s:fg_foreground  .s:bg_none        .s:fmt_bold

" Quickfix window highlighting
exe "hi! qfLineNr"        .s:fg_yellow      .s:bg_none        .s:fmt_none
"   qfFileName"
"   qfLineNr"
"   qfError"

"}}}
" Diff Syntax Highlighting:"{{{
" ----------------------------------------------------------------------------
" Diff
"   diffOldFile
"   diffNewFile
"   diffFile
"   diffOnly
"   diffIdentical
"   diffDiffer
"   diffBDiffer
"   diffIsA
"   diffNoEOL
"   diffCommon
hi! link diffRemoved Constant
"   diffChanged
hi! link diffAdded Special
"   diffLine
"   diffSubname
"   diffComment

"}}}
" True Color Terminal Colorscheme:"{{{
" ----------------------------------------------------------------------------
"  This is atelierforest-dark color palette
let g:terminal_ansi_colors = [
      \ "#1b1918", "#f22c40", "#5ab738", "#d5911a",
      \ "#407ee7", "#6666ea", "#00ad9c", "#a8a19f",
      \ "#766e6b", "#f22c40", "#5ab738", "#d78700",
      \ "#407ee7", "#6666ea", "#00ad9c", "#f1efee"
      \]

"}}}
" GitGutter Sign Highlighting:"{{{
" ----------------------------------------------------------------------------
exe "hi! GitGutterAdd"     .s:fg_gitgutteradd  .s:bg_none  .s:fmt_none
exe "hi! GitGutterChange"  .s:fg_gitgutterchg  .s:bg_none  .s:fmt_none
exe "hi! GitGutterDelete"  .s:fg_gitgutterdlt  .s:bg_none  .s:fmt_none

"}}}

" Signify Sign Highlighting:"{{{
" ----------------------------------------------------------------------------
exe "hi! SignifySignAdd"     .s:fg_gitgutteradd  .s:bg_none  .s:fmt_none
exe "hi! SignifySignChange"  .s:fg_gitgutterchg  .s:bg_none  .s:fmt_none
exe "hi! SignifySignDelete"  .s:fg_gitgutterdlt  .s:bg_none  .s:fmt_none

"}}}
"
" This is needed for some reason: {{{

let &background = s:style

" }}}
" Legal:"{{{
" ----------------------------------------------------------------------------
" Copyright (c) 2011 Ethan Schoonover
" Copyright (c) 2009-2012 NanoTech
" Copyright (c) 2012 w0ng
" Copyright (c) 2019 aonemd
"
" Permission is hereby granted, free of charge, to any per‐
" son obtaining a copy of this software and associated doc‐
" umentation files (the “Software”), to deal in the Soft‐
" ware without restriction, including without limitation
" the rights to use, copy, modify, merge, publish, distrib‐
" ute, sublicense, and/or sell copies of the Software, and
" to permit persons to whom the Software is furnished to do
" so, subject to the following conditions:
"
" The above copyright notice and this permission notice
" shall be included in all copies or substantial portions
" of the Software.
"
" THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
" KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
" THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICU‐
" LAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
" DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CON‐
" TRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CON‐
" NECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

" }}}


"           Colors      Bright Colors
" Black     #4E4E4E     #7C7C7C
" Red       #FF6C60     #FFB6B0
" Green     #254bb8     #CEFFAB
" Yellow    #000000     #FFFFCB
" Blue      #00ff00     #FFFFCB
" Magenta   #FF73FD     #FF9CFE
" Cyan      #FFFFFF     #DFDFFE
" White     #EEEEEE     #FFFFFF

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "jarrett"

hi Cursor  guifg=NONE guibg=#aaabb1 gui=NONE
hi Visual  guifg=NONE guibg=#253b76 gui=NONE
hi CursorLine  guifg=NONE guibg=#181c2c gui=NONE
hi CursorColumn  guifg=NONE guibg=#181c2c gui=NONE
hi LineNr  guifg=#82848d guibg=#0c1021 gui=NONE
hi VertSplit  guifg=#393c4a guibg=#393c4a gui=NONE
hi MatchParen  guifg=#fbde2d guibg=NONE gui=NONE
hi StatusLine  guifg=#f8f8f8 guibg=#393c4a gui=bold
hi StatusLineNC  guifg=#f8f8f8 guibg=#393c4a gui=NONE
hi Pmenu  guifg=#ff6400 guibg=NONE gui=NONE
hi PmenuSel  guifg=NONE guibg=#253b76 gui=NONE
hi IncSearch  guifg=NONE guibg=#5c2c16 gui=NONE
hi Search  guifg=NONE guibg=#5c2c16 gui=NONE
hi Directory  guifg=#d8fa3c guibg=NONE gui=NONE
hi Folded  guifg=#aeaeae guibg=#0c1021 gui=NONE

hi Normal  guifg=#f8f8f8 guibg=#0c1021 gui=NONE
hi Boolean  guifg=#d8fa3c guibg=NONE gui=NONE
hi Character  guifg=#d8fa3c guibg=NONE gui=NONE
hi Comment  guifg=#aeaeae guibg=NONE gui=NONE
hi Conditional  guifg=#fbde2d guibg=NONE gui=NONE
hi Constant  guifg=#d8fa3c guibg=NONE gui=NONE
hi Define  guifg=#fbde2d guibg=NONE gui=NONE
hi ErrorMsg  guifg=NONE guibg=NONE gui=NONE
hi WarningMsg  guifg=NONE guibg=NONE gui=NONE
hi Float  guifg=#d8fa3c guibg=NONE gui=NONE
hi Function  guifg=#ff6400 guibg=NONE gui=NONE
hi Identifier  guifg=#fbde2d guibg=NONE gui=NONE
hi Keyword  guifg=#fbde2d guibg=NONE gui=NONE
hi Label  guifg=#61ce3c guibg=NONE gui=NONE
hi NonText  guifg=#494c59 guibg=#181c2c gui=NONE
hi Number  guifg=#d8fa3c guibg=NONE gui=NONE
hi Operator  guifg=#fbde2d guibg=NONE gui=NONE
hi PreProc  guifg=#fbde2d guibg=NONE gui=NONE
hi Special  guifg=#f8f8f8 guibg=NONE gui=NONE
hi SpecialKey  guifg=#494c59 guibg=#181c2c gui=NONE
hi Statement  guifg=#fbde2d guibg=NONE gui=NONE
hi StorageClass  guifg=#fbde2d guibg=NONE gui=NONE
hi String  guifg=#61ce3c guibg=NONE gui=NONE
hi Tag  guifg=#ff6400 guibg=NONE gui=NONE
hi Title  guifg=#f8f8f8 guibg=NONE gui=bold
hi Todo  guifg=#aeaeae guibg=NONE gui=inverse,bold
hi Type  guifg=#ff6400 guibg=NONE gui=NONE
hi Underlined  guifg=NONE guibg=NONE gui=underline

hi phpFunction guifg=#fbde2d guibg=NONE

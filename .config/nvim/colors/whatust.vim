set background=dark
hi clear

if exists("syntax_on")
    syntax reset
endif
let g:colors_name="whatust"

function! <sid>hi(group, fg, bg, attr, attrsp)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" .  a:bg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" .   a:attr
  endif
  if !empty(a:attrsp)
    exec "hi " . a:group . " guisp=" . a:attrsp
  endif
endfunction

let s:black          = '#1B2B34'
let s:red            = '#8D0007'
let s:green          = '#27731F'
let s:yellow         = '#FF7400'
let s:blue           = '#064480'
let s:magenta        = '#863C86'
let s:cyan           = '#0f6868'
let s:white          = '#A7ADBA'

let s:bright_black   = '#555555'
let s:bright_red     = '#ec5f67'
let s:bright_green   = '#99c794'
let s:bright_yellow  = '#fac663'
let s:bright_blue    = '#6699cc'
let s:bright_magenta = '#c594c5'
let s:bright_cyan    = '#5fb3b3'
let s:bright_white   = '#dddddd'
let s:none           = 'NONE'
let s:bold           = 'bold'
let s:italic         = 'italic'

call <sid>hi('Bold'                   , ''               , ''              , s:bold      , '')
call <sid>hi('Debug'                  , s:bright_red     , ''              , ''          , '')
call <sid>hi('Directory'              , s:bright_blue    , ''              , ''          , '')
call <sid>hi('ErrorMsg'               , s:bright_red     , s:black         , ''          , '')
call <sid>hi('Exception'              , s:bright_red     , ''              , ''          , '')
call <sid>hi('FoldColumn'             , s:bright_black   , s:black         , ''          , '')
call <sid>hi('Folded'                 , s:bright_black   , s:black         , s:italic    , '')
call <sid>hi('IncSearch'              , s:black          , s:yellow        , s:none      , '')
call <sid>hi('Italic'                 , ''               , ''              , s:italic    , '')

call <sid>hi('Search'                 , s:bright_black   , s:bright_yellow , ''          , '')
call <sid>hi('Visual'                 , s:black          , s:bright_white  , ''          , '')
call <sid>hi('LineNr'                 , s:white          , ''              , ''          , '')
call <sid>hi('VertSplit'              , s:bright_black   , s:bright_black  , ''          , '')
call <sid>hi('ColorColumn'            , ''               , s:black         , ''          , '')
call <sid>hi('CursorLine'             , s:none           , s:none          , s:bold      , s:bold)
call <sid>hi('NonText'                , s:white          , s:none          , ''          , '')
call <sid>hi('Question'               , s:bright_yellow  , s:none          , s:bold      , s:bold)
call <sid>hi('MoreMsg'                , s:yellow         , s:none          , s:bold      , s:bold)

" Help Syntax
call <sid>hi('helpExample'            , s:bright_yellow  , ''              , ''          , '')
call <sid>hi('helpCommand'            , s:bright_yellow  , ''              , ''          , '')
"
call <sid>hi('Boolean'                , s:bright_magenta , ''              , ''          , '')
call <sid>hi('Character'              , s:bright_red     , ''              , ''          , '')
call <sid>hi('Comment'                , s:white          , ''              , s:italic    , '')
call <sid>hi('Conditional'            , s:bright_yellow  , ''              , ''          , '')
call <sid>hi('Constant'               , s:bright_magenta , ''              , ''          , '')
call <sid>hi('Define'                 , s:bright_blue    , ''              , ''          , '')
call <sid>hi('Delimiter'              , s:cyan           , ''              , ''          , '')
call <sid>hi('Float'                  , s:bright_magenta , ''              , ''          , '')
call <sid>hi('Function'               , s:bright_cyan    , ''              , ''          , '')
call <sid>hi('Identifier'             , s:bright_cyan    , ''              , ''          , '')
call <sid>hi('Include'                , s:bright_blue    , ''              , ''          , '')
call <sid>hi('Keyword'                , s:bright_yellow  , ''              , ''          , '')
call <sid>hi('Label'                  , s:bright_yellow  , ''              , ''          , '')
call <sid>hi('Number'                 , s:bright_magenta , ''              , ''          , '')
call <sid>hi('Operator'               , s:bright_white   , ''              , ''          , '')
call <sid>hi('PreProc'                , s:bright_blue    , ''              , ''          , '')
call <sid>hi('Repeat'                 , s:bright_yellow  , ''              , ''          , '')
call <sid>hi('Special'                , s:bright_cyan    , ''              , ''          , '')
call <sid>hi('SpecialChar'            , s:bright_red     , ''              , ''          , '')
call <sid>hi('Statement'              , s:bright_yellow  , ''              , ''          , '')
call <sid>hi('StorageClass'           , s:bright_yellow  , ''              , ''          , '')
call <sid>hi('String'                 , s:bright_magenta , ''              , ''          , '')
call <sid>hi('Structure'              , s:bright_green   , ''              , ''          , '')
call <sid>hi('Tag'                    , s:bright_yellow  , ''              , ''          , '')
call <sid>hi('Todo'                   , s:bright_yellow  , s:black         , ''          , '')
call <sid>hi('Type'                   , s:bright_green   , ''              , ''          , '')
call <sid>hi('Typedef'                , s:bright_green   , ''              , ''          , '')

" Syntax for C
call <sid>hi('cMulti'                 , s:bright_green   , ''              , ''          , '')
call <sid>hi('cStatement'             , s:bright_yellow  , ''              , ''          , '')
call <sid>hi('cRepeat'                , s:bright_yellow  , ''              , ''          , '')
call <sid>hi('cDefine'                , s:bright_blue    , ''              , ''          , '')
call <sid>hi('cInclude'               , s:bright_blue    , ''              , ''          , '')
call <sid>hi('cIncluded'              , s:bright_magenta , ''              , ''          , '')
call <sid>hi('cString'                , s:bright_magenta , ''              , ''          , '')
call <sid>hi('cFormat'                , s:bright_red     , ''              , ''          , '')
call <sid>hi('cType'                  , s:bright_green   , ''              , ''          , '')

" Syntax for Python
call <sid>hi('pythonImport'           , s:bright_green   , ''              , ''          , '')
call <sid>hi('pythonStatement'        , s:bright_yellow  , ''              , ''          , '')
call <sid>hi('pythonRepeat'           , s:bright_yellow  , ''              , ''          , '')
call <sid>hi('pythonFunction'         , s:bright_cyan    , ''              , ''          , '')
call <sid>hi('pythonNumber'           , s:bright_magenta , ''              , ''          , '')
call <sid>hi('pythonString'           , s:bright_magenta , ''              , ''          , '')
call <sid>hi('pythonDecorator'        , s:bright_blue    , ''              , ''          , '')
call <sid>hi('pythonDottedName'       , s:bright_cyan    , ''              , ''          , '')

call <sid>hi('SpellBad'               , ''               , ''              , 'undercurl' , '')
call <sid>hi('SpellLocal'             , ''               , ''              , 'undercurl' , '')
call <sid>hi('SpellCap'               , ''               , ''              , 'undercurl' , '')
call <sid>hi('SpellRare'              , ''               , ''              , 'undercurl' , '')


call <sid>hi('csClass'                , s:bright_yellow  , ''              , ''          , '')
call <sid>hi('csAttribute'            , s:bright_yellow  , ''              , ''          , '')
call <sid>hi('csModifier'             , s:bright_magenta , ''              , ''          , '')
call <sid>hi('csType'                 , s:bright_red     , ''              , ''          , '')
call <sid>hi('csUnspecifiedStatement' , s:bright_blue    , ''              , ''          , '')
call <sid>hi('csContextualStatement'  , s:bright_magenta , ''              , ''          , '')
call <sid>hi('csNewDecleration'       , s:bright_red     , ''              , ''          , '')
call <sid>hi('cOperator'              , s:bright_cyan    , ''              , ''          , '')
call <sid>hi('cPreCondit'             , s:bright_magenta , ''              , ''          , '')

call <sid>hi('cssColor'               , s:bright_cyan    , ''              , ''          , '')
call <sid>hi('cssBraces'              , s:bright_white   , ''              , ''          , '')
call <sid>hi('cssClassName'           , s:bright_magenta , ''              , ''          , '')

" Syntax for git diff
call <sid>hi('DiffAdd'                , s:bright_green   , s:black         , 'bold'      , '')
call <sid>hi('DiffChange'             , s:bright_black   , s:black         , ''          , '')
call <sid>hi('DiffDelete'             , s:bright_red     , s:black         , ''          , '')
call <sid>hi('DiffText'               , s:bright_blue    , s:black         , ''          , '')
call <sid>hi('DiffAdded'              , s:bright_white   , s:bright_green  , 'bold'      , '')
call <sid>hi('DiffFile'               , s:bright_red     , s:black         , ''          , '')
call <sid>hi('DiffNewFile'            , s:bright_green   , s:black         , ''          , '')
call <sid>hi('DiffLine'               , s:bright_blue    , s:black         , ''          , '')
call <sid>hi('DiffRemoved'            , s:bright_white   , s:bright_red    , 'bold'      , '')

" Syntax for gigutter
call <sid>hi('GitGutterAdd'           , s:bright_green   , s:none          , s:bold      , '')
call <sid>hi('GitGutterChange'        , s:yellow         , s:none          , s:bold      , '')
call <sid>hi('GitGutterDelete'        , s:bright_red     , s:none          , s:bold      , '')
call <sid>hi('GitGutterChangeDelete'  , s:bright_magenta , s:none          , s:bold      , '')

call <sid>hi('gitCommitOverflow'      , s:bright_red     , ''              , ''          , '')
call <sid>hi('gitCommitSummary'       , s:bright_green   , ''              , ''          , '')

" Syntax for NerdTree
call <sid>hi('NERDTreeExecFile'       , s:bright_green   , ''              , ''          , '')
call <sid>hi('NERDTreeDirSlash'       , s:bright_blue    , ''              , ''          , '')
call <sid>hi('NERDTreeOpenable'       , s:bright_blue    , ''              , ''          , '')
call <sid>hi('NERDTreeFile'           , s:bright_white   , s:none          , ''          , '')
call <sid>hi('NERDTreeLinkFile'       , s:bright_magenta , ''              , ''          , '')
call <sid>hi('NERDTreeCWD'            , s:bright_yellow  , ''              , ''          , '')

" Syntax for xml
call <sid>hi('xmlTag'                 , s:bright_cyan    , ''              , ''          , '')
call <sid>hi('xmlTagName'             , s:bright_white   , ''              , ''          , '')
call <sid>hi('xmlEndTag'              , s:bright_cyan    , ''              , ''          , '')

let g:terminal_color_0=s:black
let g:terminal_color_8=s:black

let g:terminal_color_1=s:bright_red
let g:terminal_color_9=s:bright_red

let g:terminal_color_2=s:bright_green
let g:terminal_color_10=s:bright_green

let g:terminal_color_3=s:bright_yellow
let g:terminal_color_11=s:bright_yellow

let g:terminal_color_4=s:bright_blue
let g:terminal_color_12=s:bright_blue

let g:terminal_color_5=s:bright_magenta
let g:terminal_color_13=s:bright_magenta

let g:terminal_color_6=s:bright_cyan
let g:terminal_color_14=s:bright_cyan

let g:terminal_color_7=s:bright_white
let g:terminal_color_15=s:bright_white

let g:terminal_color_background=s:none
let g:terminal_color_foreground=s:bright_white


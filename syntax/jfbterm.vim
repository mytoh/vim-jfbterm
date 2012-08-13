
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=-
syntax case match


syntax keyword jfbOption
      \ fontset keyboard mouse term history splash encoding
      \ screensaver cursor bell writecombine font video
      \ color1 color2 color3 color4 color5 color6 color7 color8 color9 
syntax match jfbOptionSub "\v\.\w:" contained display

syntax keyword jfbValue
      \ None Normal Middle High
      \ SysMouse
      \ Shadow

syn match jfbNumber     "\v\d+" contained display
syn keyword jfbFont any current none
syn match jfbFontPlus contained display "\v^[+]"
syn keyword jfbBoolean  Off On

syn region jfbComment start=/#/ end=/$/ display oneline


hi def link jfbOption       Identifier
hi def link jfbOptionSub    Function
hi def link jfbValue        Keyword
hi def link jfbFont        Keyword
hi def link jfbFontPlus    Operator

hi def link jfbBoolean      Boolean
hi def link jfbComment      Comment
hi def link jfbNumber       Number


let b:current_syntax = "jfbterm"

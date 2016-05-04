if exists('b:current_syntax')
    finish
endif

if !exists("main_syntax")
    let main_syntax = 'sman'
endif

syn region yamlComment start="\#" end="$"
syn match yamlOperator "[?^+-]\|=>"

syn match smanNameMain "^\w*:" nextgroup=smanNameAdditional
syn match smanNameAdditional "\w*:$" contained
syn match smanCommand "^\s*command:\s"
syn match smanDesc "^\s*desc:\s"
syn match smanTags "^\s*tags:\s"
syn match smanDo "^\s*do:\s" nextgroup=smanDoExec,smanDoCopy
syn keyword smanDoExec exec contained
syn keyword smanDoCopy copy contained

syn match smanPlaceholder "<<.\{-}>>"

hi def link yamlOperator Operator
hi def link yamlComment Comment
hi def link smanNameMain Identifier
hi def link smanNameAdditional Identifier
hi def link smanCommand Identifier
hi def link smanDesc Identifier
hi def link smanTags Identifier
hi def link smanDo Identifier
hi def link smanDoExec String
hi def link smanDoCopy String
hi def link smanPlaceholder Operator

let b:current_syntax = "sman"

syn case ignore

syn match txtnum "\d"
hi txtnum guifg=green

syn region br1 start=/(/ end=/)/
syn region br2 start=/（/ end=/）/
syn region br3 start=/\[/ end=/\]/
syn region br4 start=/“/ end=/”/
syn region br5 start=/{/ end=/}/
syn region br6 start=/</ end=/>/
syn region br7 start=/"/ skip=/\\"/ end=/"/
syn match br8 "《.*》"

syn match zday1 "\d\+年\d\+月\d\+日"
syn match zday2 "\d\+-\d\+-\d\+"
syn match zday3 "\d\+/\d\+/\d\+"
hi zday1 guifg=orange
hi link zday2 zday1
hi link zday3 zday1

hi br1 guifg=purple
hi link br2 br1
hi link br3 br1
hi link br4 br1
hi link br5 br1
hi link br6 br1
hi link br7 br1
hi link br8 br1

syn match txturl1 "http[s]\=://\S*"
syn match txturl2 "mms\=://\S*"
syn match txturl3 "ftp\=://\S*"
syn match txturl4 "file\=://\S*"
syn match txturl5 "\S*@\S*"

hi link txturl1 Underlined
hi link txturl2 Underlined
hi link txturl3 Underlined
hi link txturl4 Underlined
hi link txturl5 Underlined

" highlight the title
syn match zhead0 ".*{{{\d"
hi zhead0 gui=bold guifg=green

syn match zkey "{{{\d" contained conceal
syn match zhead0 ".*{{{\d" contains=zkey
set cole=3
set cocu=nvic


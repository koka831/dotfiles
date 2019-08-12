"Language       : Java
let java_highlight_java=1
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1
setlocal shiftwidth=2

syn keyword javaKey public private static
syn keyword javaClassStmt class nextgroup=javaClassName skipwhite
syn match javaClassName "\h\w*" display contained


hi def link javaKey Statement
hi def link javaClassStmt Statement
hi def link javaClassName Typedef

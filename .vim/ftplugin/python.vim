" Language:     Python
" Filenames:    *.py
let g:ale_python_flake8_options="--ignore=E501"

" additional syntax highlighting
highlight link pythonFunction GruvboxGreen
syn keyword pythonArgs arg kwarg
hi def link pythonArgs GruvboxBlue

" class ClassName
syn keyword pythonClassStmt class nextgroup=pythonClass skipwhite
syn match   pythonClass "\h\w*" display contained

hi def link pythonClassStmt Statement
highlight link pythonClass GruvboxYellow


" library
syn keyword pythonLibName sys math unittest TestCase enum Enum numpy np cv2 datetime shutil time
syn keyword pythonLibName collections Counter tqdm simplejson tqdm
syn keyword pythonLibName pandas pd Series DataFrame
syn keyword pythonLibName matplotlib scipy requests beautifulsoup
syn keyword pythonLibName tensorflow tf scikit theano caffe
syn keyword pythonLibName heapq itertools
syn keyword pythonLibName pprint
hi def link pythonLibName pythonClass

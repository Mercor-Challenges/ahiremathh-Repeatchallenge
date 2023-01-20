" Author: Ye Jingchen <ye.jingchen@gmail.com>, Ben Falconer <ben@falconers.me.uk>, jtalowell <jtalowell@protonmail.com>
" Description: A language server for C++

call ale#Set('cpp_ccls_executable', 'ccls')
call ale#Set('cpp_ccls_init_options', {})

call ale#linter#Define('cpp', {
\   'name': 'ccls',
\   'lsp': 'stdio',
\   'executable_callback': ale#VarFunc('cpp_ccls_executable'),
\   'command': '%e',
\   'project_root_callback': 'ale#handlers#ccls#GetProjectRoot',
\   'initialization_options_callback': ale#VarFunc('cpp_ccls_init_options'),
\})

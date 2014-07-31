" This file is vim plugin
" Filename : pebble8888/terminalopener.vim
" Author   : pebble8888@gmail.com
" Brief    : Open Apple Terminal.app tab window from MacVim and change directory to current directory

let s:script_folder_path = expand( '<sfile>:p:h' )

" Terminal open
function! ROpenCurrentDirectoryWithTerminal()
    let script = s:script_folder_path . '/../bin/terminalopen'
    " get current working directory
    let cur_dir = getcwd()
    " change directory
    let cmd = script . ' cd ' . cur_dir
    call system(cmd)
endfunction

if !exists('g:terminalopener_no_default_key_mappings')
  noremap <Leader>e :call ROpenCurrentDirectoryWithTerminal()<CR>
endif


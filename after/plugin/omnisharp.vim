let g:OmniSharp_selector_ui = 'fzf' 
let g:OmniSharp_selector_findusages = 'fzf'

let g:OmniSharp_want_snippet=1

if has('unix')
    let g:OmniSharp_server_use_mono = 1
endif

let g:OmniSharp_server_use_net6 = 1

let g:OmniSharp_popup = 0
" let g:OmniSharp_popup_options = {
"   \ 'winblend': 30,
"   \ 'winhl': 'Normal:Normal,FloatBorder:ModeMsg',
"   \ 'border': 'rounded'
"   \}
" let g:OmniSharp_popup_mappings = {
" \ 'sigNext': '<C-n>',
" \ 'sigPrev': '<C-p>',
" \ 'pageDown': ['<C-f>', '<PageDown>'],
" \ 'pageUp': ['<C-b>', '<PageUp>']
" \}

let g:OmniSharp_highlight_groups = {
\ 'ExcludedCode': 'NonText'
\}

" Use truecolor in the terminal, when it is supported
" if has('termguicolors')
"   set termguicolors
" endif

augroup ColorschemePreferences
  autocmd!
  " These preferences clear some gruvbox background colours, allowing transparency
  autocmd ColorScheme * highlight Normal     ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight SignColumn ctermbg=NONE guibg=NONE
  autocmd ColorScheme * highlight Todo       ctermbg=NONE guibg=NONE
  " Link ALE sign highlights to similar equivalents without background colours
  autocmd ColorScheme * highlight link ALEErrorSign   WarningMsg
  autocmd ColorScheme * highlight link ALEWarningSign ModeMsg
  autocmd ColorScheme * highlight link ALEInfoSign    Identifier
augroup END

augroup omnisharp_commands
  autocmd!
  " " Show type information automatically when the cursor stops moving.
  " " Note that the type is echoed to the Vim command line, and will overwrite
  " " any other messages in this space including e.g. ALE linting messages.
  " autocmd CursorHold *.cs OmniSharpTypeLookup

  " The following commands are contextual, based on the cursor position.
  " g
  autocmd FileType cs nmap <silent> <buffer> <Leader>gd <Plug>(omnisharp_go_to_definition)
  " f
  autocmd FileType cs nmap <silent> <buffer> <Leader>f <Plug>(omnisharp_code_format)
  autocmd FileType cs nmap <silent> <buffer> <Leader>fu <Plug>(omnisharp_find_usages)
  autocmd FileType cs nmap <silent> <buffer> <Leader>fi <Plug>(omnisharp_find_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>fs <Plug>(omnisharp_find_symbol)
  autocmd FileType cs nmap <silent> <buffer> <Leader>fx <Plug>(omnisharp_fix_usings)
  " p
  autocmd FileType cs nmap <silent> <buffer> <Leader>pd <Plug>(omnisharp_preview_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>pi <Plug>(omnisharp_preview_implementations)
  " t
  autocmd FileType cs nmap <silent> <buffer> <Leader>t <Plug>(omnisharp_type_lookup)
  " d
  autocmd FileType cs nmap <silent> <buffer> <Leader>d <Plug>(omnisharp_documentation)
  " h
  autocmd FileType cs nmap <silent> <buffer> <Leader>h <Plug>(omnisharp_signature_help)
  autocmd FileType cs imap <silent> <buffer> <Leader>h <Plug>(omnisharp_signature_help)
              
  " [
  " Navigate up and down by method/property/field
  autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
  autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
  " c
  autocmd FileType cs nmap <silent> <buffer> <Leader>cc <Plug>(omnisharp_global_code_check)
  " Find all code errors/warnings for the current solution and populate the quickfix window
  " Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ca <Plug>(omnisharp_code_actions)
  autocmd FileType cs xmap <silent> <buffer> <Leader>ca <Plug>(omnisharp_code_actions)
  " Repeat the last code action performed (does not use a selector)
  autocmd FileType cs nmap <silent> <buffer> <Leader>c. <Plug>(omnisharp_code_action_repeat)
  autocmd FileType cs xmap <silent> <buffer> <Leader>c. <Plug>(omnisharp_code_action_repeat)

  autocmd FileType cs nmap <silent> <buffer> <F2> <Plug>(omnisharp_rename)
  " o
  autocmd FileType cs nmap <silent> <buffer> <Leader>or <Plug>(omnisharp_restart_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>oss <Plug>(omnisharp_start_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osp <Plug>(omnisharp_stop_server)
augroup END


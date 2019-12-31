let s:icons_dir = expand('<sfile>:h:h') . '/icons/'

function! s:lsp_setup()
  let l:icon_ext = has('win32') ? '.ico' : '.png'
  let g:lsp_signs_enabled = 1
  let g:lsp_signs_error = {'text': '>', 'icon': s:icons_dir . 'error' . l:icon_ext}
  let g:lsp_signs_warning = {'text': 'v', 'icon': s:icons_dir . 'warning' . l:icon_ext}
  let g:lsp_signs_information = {'text': '!', 'icon': s:icons_dir . 'information' . l:icon_ext}
  let g:lsp_signs_hint = {'text': '?', 'icon': s:icons_dir . 'hint' . l:icon_ext}
endfunction

augroup vimrc_lsp_icons
  au!
  autocmd User lsp_setup call s:lsp_setup()
augroup END

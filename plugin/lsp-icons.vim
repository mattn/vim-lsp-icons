let s:icons_dir = expand('<sfile>:h:h') . '/icons/'
let s:icon_ext = has('win32') ? '.ico' : '.png'

function! s:lsp_setup()
  let g:lsp_diagnostics_signs_enabled          = 1
  let g:lsp_diagnostics_signs_error            = {'text': '>', 'icon': s:icons_dir . 'error'       . s:icon_ext}
  let g:lsp_diagnostics_signs_warning          = {'text': 'v', 'icon': s:icons_dir . 'warning'     . s:icon_ext}
  let g:lsp_diagnostics_signs_information      = {'text': '!', 'icon': s:icons_dir . 'information' . s:icon_ext}
  let g:lsp_diagnostics_signs_hint             = {'text': '?', 'icon': s:icons_dir . 'hint'        . s:icon_ext}
  let g:lsp_document_code_action_signs_enabled = 1
  let g:lsp_document_code_action_signs_hint    = {
  \ 'text': '?',
  \ 'icon': s:icons_dir . 'hint' . s:icon_ext,
  \}
endfunction

augroup vimrc_lsp_icons
  au!
  autocmd User lsp_setup call s:lsp_setup()
augroup END

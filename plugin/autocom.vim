augroup bjccom
	autocmd!

	" Resize splits when window resizes
	autocmd VimResized * execute "normal! \<c-w>="

	" Disable paste mode on leaving insert mode.
	autocmd InsertLeave * set nopaste

	"  Make current window more obvious by turning off/adjusting some features in non-current windows.
	if exists('+colorcolumn')
		autocmd BufEnter,FocusGained,VimEnter,WinEnter * call autocmds#on_focusgained()
		autocmd FocusLost,WinLeave * call autocmds#on_focuslost()
	endif

	autocmd InsertLeave,VimEnter,WinEnter * if autocmds#should_cursorline() | setlocal cursorline | endif
	autocmd InsertEnter,WinLeave * if autocmds#should_cursorline() | setlocal nocursorline | endif

	if has('statusline')
		autocmd BufEnter,FocusGained,VimEnter,WinEnter * call autocmds#focus_statusline()
		autocmd FocusLost,WinLeave * call autocmds#blur_statusline()
	endif
augroup END

function! statusline#gutterpadding(subtractBufferNumber) abort
	let l:gutterWidth=max([strlen(line('$')) + 1, &numberwidth])
	let l:bufferNumberWidth=a:subtractBufferNumber ? strlen(winbufnr(0)) : 0
	let l:padding=repeat(' ', l:gutterWidth - l:bufferNumberWidth)
	return l:padding
endfunction

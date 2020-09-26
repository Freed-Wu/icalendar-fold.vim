let s:foldchar = matchstr(&fillchars, '\(fold:\)\@<=.')
if s:foldchar ==# ''
	let s:foldchar = '='
endif

function! icalendar#fold#level(num) abort "{{{
	if getline(a:num) =~# '^BEGIN:'
		return 'a1'
	elseif getline(a:num) =~# '^END:'
		return 's1'
	endif
	return '='
endfunction "}}}

function! icalendar#fold#text() abort "{{{
	return matchstr(getline(v:foldstart), 'BEGIN:\s*\zs\w\+')
endfunction "}}}

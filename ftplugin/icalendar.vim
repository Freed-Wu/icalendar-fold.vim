if exists('b:did_icalendarplugin')
	finish
endif

setlocal foldmethod=expr
setlocal foldexpr=icalendar#fold#level(v:lnum)
setlocal foldtext=icalendar#fold#text()

let b:did_icalendarplugin = 1

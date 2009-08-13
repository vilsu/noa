map <C-W>1 Misc.Beautify.For :s/for\s*(\s*/for ( /<CR>:s/\s*)\s*$/ )/<CR>:s/\(\i\+\)\s*=\s*/\1 = /<CR>:s/\s*\([=<>!]=\\|[<>]\)\s*/ \1 /<CR>:s/\s*\(--\\|++\)/\1/<CR>:s/\s*;\s*/; /g<CR>
map <C-W>2 Misc.Beautify.Func :s/\s*)/ )/g<CR>:s/\s*\([(,]\)\s*/\1 /g<CR>:s/(\s\+)/()/g<CR>
map <C-W>3  Misc.Beautify.If :s/if\s*(\s*/if ( /<CR>:s/\s*)\s*$/ )/<CR>:silent s/\s*\([=<>!]=\\|[<>]\)\s*/ \1 /<CR>
map <C-W>4 Misc.Beautify.Assign :s/\s*\([-+*\/&\|]\?\)\s*=\s*/ \1= /g<CR>

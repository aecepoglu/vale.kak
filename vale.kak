hook global WinSetOption filetype=(asciidoc|plain|mail) %{
	hook -group vale window InsertIdle .* lint
	hook -group vale window NormalIdle .* lint

	hook -once -always window WinSetOption "filetype=.*" "remove-hooks window vale"
}


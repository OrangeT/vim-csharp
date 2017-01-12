" Vim plugin ftdetects
" Language:     Microsoft C#
" Maintainer:   Kian Ryan (kian@orangetentacle.co.uk)
" Last Change:  2015 Apr 27

" Set msproj file extensions
au BufNewFile,BufRead *.cs compiler msbuild
au BufNewFile,BufRead *.proj compiler msbuild | set filetype=xml
au BufNewFile,BufRead *.csproj compiler msbuild | set filetype=xml
au BufNewFile,BufRead *.sln compiler msbuild | set filetype=xml
au BufNewFile,BufRead *.cshtml compiler msbuild | set filetype=cshtml.html syntax=cshtml
au BufNewFile,BufRead *.aspx compiler msbuild | set filetype=aspx.html syntax=aspx
au BufNewFile,BufRead *.ascx compiler msbuild | set filetype=aspx.html syntax=aspx
au BufNewFile,BufRead *.master compiler msbuild | set filetype=aspx.html syntax=aspx


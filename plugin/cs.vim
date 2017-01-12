" Vim plugin file
" Language:     Microsoft C#
" Maintainer:   Kian Ryan (kian@orangetentacle.co.uk)
" Last Change:  2015 Apr 27

function! MsProjFile(file)
    let g:net_build_file = a:file
    compiler msbuild
endfunction

function! MsVersion(version)
    let g:net_framework_version = a:version
    compiler msbuild
endfunction

function! IISExpress()
    e ~\Documents\IISExpress\config\applicationhost.config
endfunction

com! -complete=file -nargs=1 MsProjFile :call MsProjFile(<f-args>)
com! -nargs=1 MsVersion :call MsVersion(<f-args>)
com! IISExpress :call IISExpress()

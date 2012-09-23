function! MsProjFile(file)
    let g:net_build_file = a:file
    compiler msbuild
endfunction

function! MsVersion(version)
    let g:net_framework_version = a:version
    compiler msbuild
endfunction

com! -complete=file -nargs=1 MsProjFile :call MsProjFile(<f-args>)
com! -nargs=1 MsVersion :call MsVersion(<f-args>)

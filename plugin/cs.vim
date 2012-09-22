" Vim plugin functions
" Language:     Microsoft C#
" Maintainer:   Kian Ryan (kian@orangetentacle.co.uk)
" Last Change:  2012 Sep 22

function! SetMsFrameworkVersion(version)

    let netFrameworkTop = "c:\\windows\\Microsoft.NET\\Framework\\"

    if a:version == "1"
        return netFrameworkTop . "v1.1.4322\\"
    elseif a:version == "2"
        return netFrameworkTop . "v2.0.50727\\"
    elseif a:version == "3.5"
        return netFrameworkTop . "v3.5\\"
    elseif a:version == "4"
        return netFrameworkTop . "v4.0.30319\\"
    endif

endfunction

function! GetMsCompiler(compiler)
    for i in ["4","3.5","2","1"]
        let msbuild = SetMsFrameworkVersion(i) . a:compiler
        if findfile(msbuild) != ""
            return msbuild
        endif
    endfor

    echom "Unable to find " . a:compiler
endfunction

function! FindMsSolutionFile()
    return globpath(".", "*.sln")
endfunction


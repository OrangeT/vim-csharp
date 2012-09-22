Vim-CSharp
----------

This Vim bundle extends Vim's built in support for CSharp files.

<a href="https://raw.github.com/OrangeT/vim-csharp/master/screenshot.png">
<img src="https://raw.github.com/OrangeT/vim-csharp/master/screenshot.png" width="322" height="495" />
</a><a href="https://raw.github.com/OrangeT/vim-csharp/master/screenshot2.png">
<img src="https://raw.github.com/OrangeT/vim-csharp/master/screenshot2.png" width="459" height="343" />
</a>


Syntax Highlighting
===================

Existing CSharp highlighting plus:

* Support for async/await keywords.
* Support for var keyword.
* Support for LINQ keywords.
* Support for automatic properties.
* Context highlighting of Interface/Class names.
* Highlighting of Generic Types.

Interface/Class Names
=====================

Interface/Class names are aliased to the Type group, for inclusion with your existing colour schemes.  Alternatively, add specific highlighting for csIface and csClass to your colour scheme.

Compiler/MsBuild Support
========================

Executing :make will look for a .sln file in the root of the working directory.  If found, will run MSBuild against the highest available msbuild.exe available on the system.  Errors are available in the QuickFix window.

See second screenshot above for overview.

_(Note: This feature does not look for msbuild.exe in your path, but looks directly in c:/windows/Microsoft.NET for a msbuild.exe.)_

Todo
====

* Highlighting of types in attributes.
* Explicit override of compiler framework version.
* Explicit override of project file and targets.
* Adding and removing classes/files from projects and solutions (hook into NERDTree?)
* Add syntax/region support for razor files.

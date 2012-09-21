Vim-CSharp
----------

This Vim bundle extends Vim's built in support for CSharp files.

<a href="https://raw.github.com/OrangeT/vim-csharp/master/screenshot.png">
<img src="https://raw.github.com/OrangeT/vim-csharp/master/screenshot.png" width="322" height="495" />
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

Interface/Class names are aliased to the Type group, for inclusion with your existing colour schemes.  Alternatively, add specific highlighting for csIface and csClass.

Todo
====

* Highlighting of types in attributes.
* Add ability to build MSBuild and Visual Studio Solution files from within Vim, report errors and navigate errors.
* Better support for tag navigation.

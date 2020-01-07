archive
=======

Provides `archive` and `unarchive` functions for easy archive manipulation.

This module will make use of `pigz` and `pbzip2` if available to make use of all available CPU cores.

Functions
---------

  * `archive` generates an archive based on file extension. Syntax is `archive myarchive.tar.gz /path/to/archive`
  * `unarchive` unarchives files based on the extensions. Syntax is `unarchive myarchive.7z`

Archive formats
---------------

| Format | Requirements |
| ------ | ------------ |
| .tar | `tar` |
| .tar.gz, .tgz | `tar` or `pigz` |
| .tar.bz, .tar.bz2, .tbz, .tbz2 | `tar` or `pbzip2` |
| .tar.xz, .txz | `tar` with xz support |
| .tar.zma, .tlz | `tar` with lzma support |
| .gz | `gunzip` or `pigz` |
| .bz, .bz2 | `bunzip2` or `pbzip2` |
| .xz | `unxz` |
| .lzma | `unzlma` |
| .Z | `uncompress` |
| .zip | `unzip` |
| .rar | `unrar` or `rar` |
| .7z | `7za` |
| .zst | `zstd` |

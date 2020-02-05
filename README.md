archive
=======

Provides `archive` and `unarchive` functions for easy archive manipulation.

This module will make use of `pbzip2` and `pigz` if available to make use of all available CPU cores.

Functions
---------

  * `archive` generates an archive based on file extension. Syntax is `archive myarchive.tar.gz /path/to/archive`
  * `unarchive` unarchives files based on the extensions. Syntax is `unarchive myarchive.7z`

Archive formats
---------------

| Format | Requirements |
| ------ | ------------ |
| .7z, .001 | `7za` |
| .rar | `unrar` or `rar` |
| .tar.bz, .tar.bz2, .tbz, .tbz2 | `tar` or `pbzip2` |
| .tar.gz, .tgz | `tar` or `pigz` |
| .tar.lzma, .tlz | `tar` with lzma support |
| .tar.xz, .txz | `tar` with xz support |
| .tar | `tar` |
| .zip | `unzip` |
| .zst | `zstd` |
| .bz, .bz2 | `bunzip2` or `pbzip2` |
| .gz | `gunzip` or `pigz` |
| .lzma | `unzlma` |
| .xz | `unxz` |
| .Z | `uncompress` |

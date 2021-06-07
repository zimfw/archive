archive
=======

Provides `archive` and `unarchive` functions for easy archive manipulation.

Suffix aliases are also provided, so archives can be directly unarchived.

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
| .rar | `rar` or `unrar` |
| .tar.bz, .tar.bz2, .tbz, .tbz2 | `tar` |
| .tar.gz, .tgz | `tar` |
| .tar.lzma, .tlz | `tar` with lzma support or with `lzcat` |
| .tar.xz, .txz | `tar` with xz support or with `xzcat` |
| .tar | `tar` |
| .zip | `zip` and `unzip` |
| .zst | `zstd` |
| .bz, .bz2 | `pbunzip2` or `bunzip2` |
| .gz | `unpigz` or `gunzip` |
| .lzma | `unzlma` |
| .xz | `unxz` |
| .Z | `uncompress` |

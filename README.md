archive
=======

Provides `archive`, `unarchive` and `lsarchive` functions for easy archive
manipulation based on file extensions.

[Don't remember the complete tar command to compress, uncompress or list the
contents of an archive?](https://xkcd.com/1168/) Use `archive myarchive.tar.gz
/path/to/be/archived` to compress, `unarchive myarchive.tar.gz` to uncompress or
`lsarchive myarchive.tar.gz` to list, for example, and the respective functions
will take care of the underlying command for you. They also work with the other
archive extensions listed below.

Suffix aliases are also provided so files can be directly uncompressed.

This module will make use of `pbzip2` and `pigz` if available to make use of all available CPU cores.

Functions
---------

| Name | Usage
| ---- | -----
| `archive` compresses files into an archive. | `archive <archive_name.ext> <file>...`
| `unarchive` uncompresses from archives. | `unarchive <archive_name.ext>...`
| `lsarchive` lists the contents of archives. | `lsarchive <archive_name.ext>...`

Archive extensions
------------------

| Extensions | Required commands
| ---------- | -----------------
| .7z, .001 | `7za`
| .rar | `unrar` or `rar`
| .tar.bz, .tar.bz2, .tbz, .tbz2 | `tar`
| .tar.gz, .tgz | `tar`
| .tar.lzma, .tlz | `tar` with lzma support or with `lzcat`
| .tar.xz, .txz | `tar` with xz support or with `xzcat`
| .tar.zst, .tzst | `tar` with `unzstd`
| .tar | `tar`
| .zip | `unzip`
| .bz, .bz2 | `pbunzip2` or `bunzip2`
| .gz | `unpigz` or `gunzip`
| .lzma | `unzlma`
| .xz | `unxz`
| .zst | `zstd`
| .Z | `uncompress`

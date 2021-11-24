#
# Archive aliases
#

# If pbzip2/pigz are available, alias them as they are drop-in replacements for bzip2/gzip, respectively.

#
# pbzip2
#
if (( ${+commands[pbzip2]} )) alias bzip2=pbzip2
if (( ${+commands[pbunzip2]} )) alias bunzip2=pbunzip2

#
# pigz
#
if (( ${+commands[pigz]} )) alias gzip=pigz
if (( ${+commands[unpigz]} )) alias gunzip=unpigz

#
# Suffix alias
#
alias -s {7z,001,rar,bz,bz2,tbz,tbz2,gz,tgz,lzma,tlz,xz,txz,tar,zip,zst,tzst,Z}=unarchive

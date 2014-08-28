<http://vim.wikia.com/wiki/File_Format#Converting_the_current_file>
###Convert from dos/unix to unix
>+ :update  Save any changes.
+ :e ++ff=dos   Edit file again, using dos file format + fileformats' is ignored).[A 1]
+ :setlocal ff=unix This buffer will use LF-only line endings when written.[A 2]
+ :w    Write buffer using unix (LF-only) line endings.

###Convert from dos/unix to dos
>
+ :update   Save any changes.
+ :e ++ff=dos   Edit file again, using dos file format ('fileformats' is ignored).[A 1]
+ :w    Write buffer using dos (CRLF) line endings.

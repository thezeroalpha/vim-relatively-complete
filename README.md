# vim-relatively-complete: insert file completion, relative to the current file
## Why?
By default, Vim's filename insert completion (`i_CTRL-X_CTRL-F`) completes files relative to the current working directory.
I've found that I generally instead want to complete files relative to the file in the current buffer.
That's why this plugin exists.

## What?
This plugin modifies Vim's insert filename completion feature to complete files relative to the file in the current buffer.
When file completion is triggered, it temporarily changes the current working directory of the current buffer to the directory containing the file loaded in the buffer.
On the `CompleteDone` event, the current working directory for the buffer is reset to its original value.
If the cursor is positioned at the end of a (partial) absolute path, files are completed based on that path.
That is, if the cursor is positioned after e.g. `/etc/` in the current buffer, the plugin will complete files/directories in `/etc/` (just like standard insert completion).

The plugin exposes one insert mode mapping:

* `<Plug>RelativelyCompleteFile`: start completing filenames relative to the file in the current buffer

There are no default mappings (by design, so as not to force mappings on users), so you need to map this `<Plug>` yourself.
For example, by putting this line in your .vimrc: `imap <C-x><C-f> <Plug>RelativelyCompleteFile`.

**Disclaimer:** this code is not extensively tested.
It works for me, running Vim 8.2 in the terminal on macOS, but it's not guaranteed to work for others.
It might not work in Neovim, as I don't use Neovim.

## Bastian's Dotfiles

This repo uses [stow][] to manage the symlinks, but you don't **have** to --
you can also just individually symlink the contents of each directory directly
into your home.

If you want to use stow, clone this repository into `~/dotfiles` and do

```sh
cd ~/dotfiles
stow --restow */
```

stow will automatically symlink the contents of each "package" into the parent
directory from where it is invoked (i.e. your home directory), that's why it
is important to clone this repository directly into your home directory. If
you cloned the repository somewhere else, you can use the `--target`
parameter.

```sh
cd ~/path/to/dotfiles
stow --target=$HOME --restow */
```

[stow]: https://www.gnu.org/software/stow/

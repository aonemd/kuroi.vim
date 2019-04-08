<div align="center">
  <h1>
    kuroi.vim
  </h1>

  ![kuroi.vim screenshot](https://user-images.githubusercontent.com/16504838/55715302-c005ab00-59f4-11e9-9c62-0aa4221f9cf8.png)
</div>

A dark Vim colorscheme

## Installation

1.  Copy colors/kuroi.vim to:

    ```bash
    ~/.vim/colors/kuroi.vim
    ```

    or alternatively, use a plugin manger such as
    [vim-plug](https://github.com/junegunn/vim-plug),
    [NeoBundle](https://github.com/Shougo/neobundle.vim),
    [Vundle](https://github.com/gmarik/Vundle.vim), or
    [Pathogen](https://github.com/tpope/vim-pathogen).

2.  Terminal color modes:

    ### 256 color terminal

    To use the colorscheme in a 256 terminal, add this to your ~/.vimrc:

    ```vim
    set t_Co=256
    ```

    to get the correct background color, make sure your terminal background is set
    to `#1b1918`.

    ### True color terminal

    To use the true color mode where you don't have to specify a certain
    background color for your terminal config, make sure to set this in your
    ~/.vimrc:

    ```vim
    set termguicolors
    ```

    This works in both true color terminals and GUI Vim clients such as GVim or
    MacVim.

3.  Add to ~/.vimrc:

    ```vim
    set background=dark   "or use the light theme: set background=light
    colorscheme kuroi
    ```

## Credits

This colorscheme is originally based on
[vim-hybrid](https://github.com/w0ng/vim-hybrid). I only changed the color
palette and some other properties.

## Contribution

Contributions are welcome. If you find something you want to change, open an
issue or send a pull request.

## License

See [LICENSE](https://github.com/aonemd/kuroi.vim/blob/master/LICENSE).

<div align="center">
  <h1>
    kuroi.vim
  </h1>
  <h3>
    黒い
  </h3>

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

    ### 256-color terminal

    To use the colorscheme in a 256-color terminal, add this to your ~/.vimrc:

    ```vim
    set t_Co=256
    ```

    ### True color terminal

    To use the true color mode, make sure to set this in your ~/.vimrc:

    ```vim
    set termguicolors
    ```

    This works in both true color terminals and GUI Vim clients such as GVim or
    MacVim.

    **Tip**: for some reason, Vim with termguicolors set inside Tmux might have
    a different background color (a little off) than the original background
    color. To work around this issue, please make sure you have this `set -g
    terminal-overrides ",xterm-256color:Tc"` in your tmux.conf file.

3.  Add to ~/.vimrc:

    ```vim
    set background=dark   "or use the light theme: set background=light
    colorscheme kuroi
    ```

## Credits

This colorscheme is originally based on
[vim-hybrid](https://github.com/w0ng/vim-hybrid). I only changed the color
palette and some other properties.

## Todos

- [ ] Remove the light theme?
- [ ] Remove hardcoded values
- [ ] Refactor the code

## Contribution

Contributions are welcome. If you find something you want to change, open an
issue or send a pull request.

## License

See [LICENSE](https://github.com/aonemd/kuroi.vim/blob/master/LICENSE).

## Screenshots

**Dark**

![Screenshot Ruby](https://user-images.githubusercontent.com/16504838/55748221-5f02c500-5a3e-11e9-91ed-84e6095ddbf2.png)

![Screenshot Go](https://user-images.githubusercontent.com/16504838/55747648-054dcb00-5a3d-11e9-9c1f-74dd895d4670.png)

![Screenshot Sails.js](https://user-images.githubusercontent.com/16504838/55747682-11398d00-5a3d-11e9-87e4-e6a16332688b.png)

![Screenshot Vim terminal](https://user-images.githubusercontent.com/16504838/58362903-26f3fc00-7e9d-11e9-9b00-cdbdfa8b4e77.png)

![Screenshot Vim diff](https://user-images.githubusercontent.com/16504838/101638578-e7691280-3a36-11eb-84a0-76d53c62e391.png)

**Light**

![Screenshot light Ruby and Go](https://user-images.githubusercontent.com/16504838/55748313-a0937000-5a3e-11e9-832d-4848d23d4621.png)

![Screenshot light Ruby](https://user-images.githubusercontent.com/16504838/55748435-f700ae80-5a3e-11e9-9038-99114d8a9ab9.png)

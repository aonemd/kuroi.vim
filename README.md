<div align="center">
  <h1>
    kuroi.vim (黒い)
  </h1>

  A very dark colorscheme for Vim.

  ![kuroi.vim screenshot](https://user-images.githubusercontent.com/16504838/115910699-6fdbd300-a46d-11eb-8c1e-7c783df01a66.png)

  [Screenshots](https://github.com/aonemd/kuroi.vim#screenshots)
</div>

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

    The colorscheme works in both true color mode and 256-color mode.

    ### True color terminal mode

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

    ### 256-color terminal mode

    To use the colorscheme in a 256-color terminal, add this to your ~/.vimrc:

    ```vim
    set t_Co=256
    ```

3.  Add to ~/.vimrc:

    ```vim
    set background=dark
    colorscheme kuroi
    ```

## Customize

- Background color can be configured:
  ```vim
  let g:kuroi_background_color = "#1b1918"
  ```

- Function name highlight color can be configured:
  ```vim
  let g:kuroi_function_color = "#acbac9"
  ```

## Extras

- The colorscheme has a special group to highlight Vim `popup` window called
    `InfoPopup`. To use the group, add the following to `.vimrc`:
    ```vim
    set completeopt=menu,menuone,popup               "enable popup window
    set completepopup=highlight:InfoPopup,border:off "configure the highlight group
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

## Screenshots

![screenshot_1](https://user-images.githubusercontent.com/16504838/115911033-dd87ff00-a46d-11eb-8a2d-ee16cd4f76c4.png)

![screenshot_2](https://user-images.githubusercontent.com/16504838/115911420-5be4a100-a46e-11eb-94aa-1c4584207cee.png)

![screenshot_3](https://user-images.githubusercontent.com/16504838/101638578-e7691280-3a36-11eb-84a0-76d53c62e391.png)

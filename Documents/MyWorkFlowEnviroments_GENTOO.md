Install Package Gentoo:
https://github.com/craftzdog/dotfiles-public
https://switowski.com/blog/favorite-cli-tools/


## 1. EXA
https://the.exa.website/
Commands: emerge --ask sys-apps/exa

2. FD
https://github.com/sharkdp/fd#installation
emerge -av fd

https://github.com/sharkdp/fd
sudo apt install fd-find

3. BAT
https://github.com/sharkdp/bat
sudo apt install bat

4. GLOW
https://github.com/charmbracelet/glow
sudo snap install glow


5. SHELL FISH
https://wiki.gentoo.org/wiki/Fish

emerge --ask app-shells/fish

6. Fisher Plugin Manager
3.1 Fisher lugins

# Z for fish
Run Comands in Terminal: fisher install jethrokuan/z
https://github.com/jethrokuan/z

https://github.com/jorgebucaran/fisher

--Theme Fish
https://draculatheme.com/fish
fisher install dracula/fish
omf install https://github.com/dracula/fish


7. fzf
https://github.com/PatrickF1/fzf.fish
fisher install PatrickF1/fzf.fish

8. gitnow
fisher install joseluisq/gitnow@2.10.0

9. ghq
https://github.com/x-motemen/ghq
Install: conda install -c conda-forge go-ghq

10. Skim
https://github.com/lotabout/skim
$ git clone --depth 1 git@github.com:lotabout/skim.git ~/.skim
cargo install skim

11. Peco
peco
https://github.com/peco/peco
Install: emerge --ask app-shells/peco

fisher install takashabe/fish-peco

12. oh-my-fish
You can get started right away with the default setup by running this in your terminal:
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

Link: https://github.com/oh-my-fish/oh-my-fish
---------------------------------------------------------------------
https://github.com/h-matsuo/fish-color-scheme-switcher

13. fish-color-scheme-switcher
$ fisher install h-matsuo/fish-color-scheme-switcher
or
$ omf install https://github.com/h-matsuo/fish-color-scheme-switcher
$ omf reload

$ scheme ls | xargs -n1 -I {} fish -c 'scheme preview {} ; echo'

# Set color scheme to `Dracula` automatically on new session
$ echo 'scheme set dracula' >> "$HOME/.config/fish/config.fish"
-----------------------------------------------------------------

14. Nerd Fonts:
https://github.com/ryanoasis/nerd-fonts
emerge --ask app-shells/pec

15. Navi
https://github.com/chd0t/navi
https://github.com/chd0t/navi/blob/master/docs/installation.md

#Manual install
git clone https://github.com/denisidoro/navi ~/.navi
cd ~/.navi
make install

#Bass makes it easy to use utilities written for Bash in fish shell.
#https://medium.com/@joshuacrass/nvm-on-mac-for-fish-users-e00af124c540
https://github.com/edc/bass

fisher install edc/bass


16. gh
https://github.com/cli/cli
conda install gh --channel conda-forge


17. hg
https://www.mercurial-scm.org/wiki/Download
sudo pip install mercurial --upgrade

18.
https://eslint.org/docs/latest/use/getting-started
npm install --save-dev eslint

rubocop
gem install rubocop

Selene
cargo install selene

spell
sudo snap install dataspell --classic


Qt5
https://wiki.gentoo.org/wiki/LXQt
sudo emerge --ask lxqt-base/lxqt-meta

https://wiki.gentoo.org/wiki/GTK_themes_in_Qt_applications
emerge --ask --changed-use --oneshot dev-qt/qtwidgets


emerge --ask x11-misc/qt5ct
emerge --ask x11-themes/qtcurve

GTK
https://wiki.gentoo.org/wiki/GTK
GTK2 and GTK3
emerge --ask x11-libs/gtk+

GTK4
emerge --ask gui-libs/gtk


Rofi-powermenu
https://github.com/lu0/rofi-blurry-powermenu
sudo emerge rofi scrot imagemagick


--NeovIDE Dependencies
sudo emerge --ask app-vim/gnupg app-misc/ca-certificates app-vim/cecutil

--Rust
curl --proto '=https' --tlsv1.2 -sSf "https://sh.rustup.rs" | sh

--config
https://github.com/jdhao/nvim-config
https://mzte.de/git/LordMZTE/dotfiles

https://vimawesome.com/
https://github.com/l-lin/font-awesome-animation

--GuiFont
https://github.com/tonsky/FiraCode
sudo emerge --ask media-fonts/fira-code
sudo emerge --ask media-fonts/powerline-symbols
sudo emerge --ask x11-terms/rxvt-unicode
npm install font-awesome-animation


https://github.com/powerline/fonts- clone
git clone https://github.com/powerline/fonts.git --depth=1
-- install
cd fonts && chmod +x install.sh && ./install.sh:Un

## NEOVIM CONFIG

# Neovim Config Switcher
https://youtu.be/LkHjJlSgKZY
--Config ZSH FISH
https://gist.github.com/elijahmanor/b279553c0132bfad7eae23e34ceb593b

https://github.com/neovim/neovim/pull/22128
https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME

# Modern Neovim
#Best Neovim Config
https://github.com/alpha2phi/modern-neovim/tree/08-pde2

https://github.com/alpha2phi/modern-neovim/tree/02-lsp

https://alpha2phi.medium.com/learn-neovim-the-practical-way-8818fcf4830f#8c31


-- Guide
Подробная статья NEOVIM NEOVIDE LSP
https://alpha2phi.medium.com/modern-neovim-lsp-and-remote-development-9b1250ee6aee
https://alpha2phi.medium.com/learn-neovim-the-practical-way-8818fcf4830f
https://alpha2phi.medium.com/neovim-101-lsp-780b44e2dc96

--  Install

cd /tmp && \
git clone https://github.com/alpha2phi/modern-neovim.git && \
sudo rm -r modern-neovim/.git modern-neovim/.gitignore && \
sudo cp -r modern-neovim ~/.config && \
sudo mkdir -p ~/.config/modern-neovim/nvim && \
sudo mkdir -p ~/.config/modern-

# Neovim2k
https://youtu.be/WfhylGI_F-o
https://github.com/2kabhishek/Dotfiles
https://github.com/2KAbhishek/awesome2k
https://github.com/2KAbhishek/nvim2k

## SWITCH NEOVIM CONFIG
https://youtu.be/LkHjJlSgKZY
https://gist.github.com/elijahmanor/b279553c0132bfad7eae23e34ceb593b

========================================================================================
##switch.sh



========================================================================================

## Neovim Switch Config
#https://gist.github.com/elijahmanor/b279553c0132bfad7eae23e34ceb593b

function nvim_astro
	env NVIM_APPNAME=AstroNvim nvim
end
function nvim_modern
	env NVIM_APPNAME=ModernNvim nvim
l
function nvim_2k
    env NVIM_APPNAME=2kNvim nvim
end
function nvimastro
    env NVIM_APPNAME=nvimastro nvim
end

function nvims
    set items AstroNvim ModernNvim 2kNvim
    set config (printf "%s\n" $items | fzf --prompt=" Neovim Config  " --height=50% --layout=reverse --border --exit-0)
    if [ -z $config ]
        echo "Nothing selected"
        return 0
    else if [ $config = "default" ]
        set config ""
    end
    env NVIM_APPNAME=$config nvim $argv
end

bind \ca 'nvims\n'```

========================================================================================

## TMUX CONFIG
THIS BEST CONFIG TMUX & DOTFILES
https://github.com/2KAbhishek/Dotfiles/blob/main/.tmux.conf
https://github.com/2kabhishek/tmux2k
https://github.com/2KAbhishek/tmux-tilit

#Lolcat Cowsay Figlet
sudo apt install lolcat figlet cowsay


##VisiData
A terminal interface for exploring and arranging tabular data.
VisiData supports tsv, csv, sqlite, json, xlsx (Excel), hdf5, and many other formats.

#Install
pip3 install visidata
vd --version

#VisiData Neovim




##BAT 
https://github.com/sharkdp/bat

cargo install --locked bat
bat --generate-config-file
bat --config-file
bat --list-themes



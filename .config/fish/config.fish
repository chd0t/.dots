set fish_greeting ""
set -gx COLORTERM truecolor

set -g theme_short_path yes

set -gx EDITOR nvim
#set -gx LS_COLORS 'di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

scheme set dracula

#starship init fish | source

#set -gx TERM xterm-256color
set -g fish_autosuggestion_enabled 1

set -g theme_color_scheme dracula
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user no 
set -g theme_hide_hostname no
#set -g theme_hostname always

# colored man pages
set -gx LESS_TERMCAP_mb \e'[1;32m'
set -gx LESS_TERMCAP_md \e'[1;32m'
set -gx LESS_TERMCAP_me \e'[0m'
set -gx LESS_TERMCAP_se \e'[0m'
set -gx LESS_TERMCAP_so \e'[01;33m'
set -gx LESS_TERMCAP_ue \e'[0m'
set -gx LESS_TERMCAP_us \e'[1;4;31m'

# fish
navi widget fish | source
export MOZ_ENABLE_WAYLAND=1



###################################################### [[ Dotfiles ]] ################################

# TODO: copy the below function into your .*rc file
# function config; /usr/bin/git --git-dir='$HOME/.dots/' --work-tree='$HOME'; end


alias config '/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME' 
alias ctm 'commit -a -u -m' 


###################################################### [[ Neovim Config Switch function ]] ################################

function nvims
    set items LazyVim AstroNvim ModernNeovim 2kNvim NormalNVim
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

###################################################### [[ ALIASES ]] ######################################################

abbr -a start 'sudo systemctl start apache2 &&sudo systemctl start mysql'
abbr -a stop 'sudo systemctl stop apache2 &&sudo systemctl stop mysql'
abbr -a xamp 'cd /opt/lampp && sudo ./manager-linux-x64.run'

# aliases
#https://news.ycombinator.com/item?id=32632533
#https://www.atlassian.com/git/tutorials/dotfiles

#if [ -f $HOME/.config/fish/env/index.fish ]
#    source $HOME/.config/fish/env/index.fish
#end

# Main
#if [ -f $HOME/.config/fish/aliases/main.fish ]
#    source $HOME/.config/fish/aliases/main.fish
#end

# Private aliases (e.g. with servers address...)
## aliases/private.fish will be ignored by git (.gitignore)
#if [ -f $HOME/.config/fish/aliases/private.fish ]
#    source $HOME/.config/fish/aliases/private.fish
#end

# Git
#if [ -f $HOME/.config/fish/aliases/git.fish ]
#    source $HOME/.config/fish/aliases/git.fish
#end


alias clear 'echo -en "\x1b[2J\x1b[1;1H" ; echo; echo; seq 1 (tput cols) | sort -R | spark | lolcat; echo; echo'
# \x1b[2J   <- clears tty
# \x1b[1;1H <- goes to (1, 1) (start)
alias files "fzf --preview 'bat --color=always --style=numbers --line-range :500 {}'"

#function nf
#      nvim (FZF_DEFAULT_COMMAND='fd' FZF_DEFAULT_OPTS="--preview 'bat --style=numbers --color=always --line-range :500 {}'" fzf --height 60% --layout reverse --info inline --border --color 'border:#b48ead') $argv
#  end

# root privileges
alias doas "doas --"

# navigation

#alias ..='cd ..'
#alias ...='cd ../..'
#alias .3='cd ../../..'
#alias .4='cd ../../../..'
#alias .5='cd ../../../../..'
# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end


# vim and emacs
alias vim='nvim'
#alias em='/usr/bin/emacs -nw'
#alias emacs="emacsclient -c -a 'emacs'"

# Changing "ls" to "exa"
if type -q exa
  alias ls='exa -al --color=always --group-directories-first' # my preferred listing
  alias la='exa -a --color=always --group-directories-first'  # all files and dirs
  alias ll='exa -l -g --icons --color=always --group-directories-first'  # long format
  alias lt='exa -aT --icons --color=always --group-directories-first' # tree listing
  alias l.='exa -a | egrep "^\."'
  set -U FZF_PREVIEW_DIR_CMD 'exa --tree --group-directories-first -s extension --color always -F -L 2'
  #alias ll "exa -l -g --icons"
  #alias lla "ll -a"
  #alias lsla "exa -a --icons"
end

#if type -q fd
#    set -U FZF_FIND_FILE_COMMAND "fd -t f"
#    set -U FZF_CD_COMMAND "fd -t d"
#    set -U FZF_CD_WITH_HIDDEN_COMMAND "fd -H -t d"
#    set -U FZF_OPEN_COMMAND "fd -H -t f"
#end

if type -q bat
    set -q BAT_THEME; or set -x BAT_THEME 'OneHalfDark'
    set -q BAT_STYLE; or set -x BAT_STYLE 'plain'
    set -U FZF_PREVIEW_FILE_CMD 'bat --color always'
end


#w add alias fish


#alias neo "neovide --multigrid"
#alias l lvim
#alias v nvim
#alias ls "ls -p -G"
#alias la "ls -A"
#alias ll "ls -l"
#alias lla "ll -A"
#alias g git


command -qv nvim && alias vim nvim


#LunarVim
#set -gx PATH ~/.local/bin $PATH

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH


function rbg
    $argv &>/dev/null &
end

#set -gx PATH /usr/bin/env
# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
#
if test -d /usr/local/go/bin
	set -x PATH $PATH /usr/local/go/bin
end

set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end



if status is-interactive
    # Commands to run in interactive sessions can go here
end

# The base environment is activated by default
#conda config --set auto_activate_base True

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval $HOME/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


## Add ro ~/.config/fish/config.fish
function nvm
 	bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
set -x NVM_DIR ~/.nvm
nvm use default --silent



# direnv
if type -q direnv
  direnv hook fish | source
end

# wezterm
if type -q wezterm
   wezterm shell-completion --shell fish | source
end

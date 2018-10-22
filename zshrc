ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="muse"
ZSH_THEME="agnoster"

# # Load rbenv automatically by appending
# # the following to ~/.zshrc:
# eval "$(rbenv init -)"

# # Add ruby version on prompt (float right)
# if [ -x "$(command -v rbenv)" ]; then RPS1='[$(ruby_prompt_info)]$EPS1'; fi

# Useful plugins for Rails development with Sublime Text and other stuff
plugins=(
  # git-extras
  # sudo
  # virtualenvwrapper
  brew
  cake
  coffee
  common-aliases
  django
  docker
  fasd
  gem
  gitfast
  github
  history-substring-search
  httpie
  last-working-dir
  npm
  nvm
  osx
  pip
  rails
  rand-quote
  rbenv
  react-native
  sublime
  thefuck
  virtualenv
  web-search
  yarn
  yeoman
  zsh-better-npm-completion
  zsh-nvm
  zsh-syntax-highlighting
)

# If you have installed hub using Homebrew, its completions may not be on your
# $FPATH if you are using the system zsh
if (( ! ${fpath[(I)/usr/local/share/zsh/site-functions]} )); then
  FPATH=/usr/local/share/zsh/site-functions:$FPATH
fi

# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
export PATH="./bin:${PATH}:/usr/local/sbin"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


# tmuxinator configs
# export EDITOR='vim'
# source /usr/local/lib/ruby/gems/2.3.0/gems/tmuxinator-0.9.0/completion/tmuxinator.zsh

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"

# Installed PostGreSQL from source
export LD_LIBRARY_PATH=/usr/local/pgsql/lib
export PATH=/usr/local/pgsql/bin:$PATH
export MANPATH=/usr/local/pgsql/share/man:$MANPATH

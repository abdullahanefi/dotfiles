ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="muse"
# ZSH_THEME="agnoster"

# Add ruby version on prompt (float right)
RPS1='[$(ruby_prompt_info)]$EPS1'

# Useful plugins for Rails development with Sublime Text and other stuff
plugins=(brew cake coffee common-aliases docker gitfast history-substring-search last-working-dir rbenv react-native sublime sudo web-search zsh-better-npm-completion zsh-nvm zsh-syntax-highlighting)

#load the plugins with dependencies later
plugins+=(yeoman)

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
export PATH="./bin:${PATH}"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"

# adding thefuck support
eval "$(thefuck --alias)"

[[ -s /usr/local/etc/profile.d/autojump.sh ]] && . /usr/local/etc/profile.d/autojump.sh

#chuck_cow

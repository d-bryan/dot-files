HOST_NAME=Gemini

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=$PATH:$HOME/usr/local/bin/bash

shopt -s autocd histappend dirspell cdspell dirspell histverify nocaseglob no_empty_cmd_completion

export HISTSIZE=5000
export HISTFILESIZE=10000

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

function mkcd()
{
	mkdir $1 && cd $1
}

alias ngrok=/Users/dylan/.ngrok/ngrok
alias ls='ls -rthla'

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

source ~/.iterm2_shell_integration.bash

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

export PATH="$HOME/.cargo/bin:$PATH"

# android SDK and emulator
export ANDROID_SDK=$HOME/Library/Android/sdk
export PATH=$ANDROID_SDK/platform-tools:$PATH

# pyenv config
export PYENV_ROOT="$HOME/.pyenv"
export PATH="/Users/dylan/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

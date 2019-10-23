source ~/.profile
# bashrc
if [ -f "$HOME/.bashrc" ] ; then
    . ~/.bashrc
fi

# z.sh
if [ -f "$HOME/.zsh" ] ; then
    . "$HOME/.zsh"
fi

# functions
if [ -f "$HOME/.functions" ] ; then
    . "$HOME/.functions"
fi

# alias
if [ -f "$HOME/.alias" ] ; then
    . "$HOME/.alias"
fi


# platform specific aliases
if [ -f "$HOME/.platform" ] ; then
    . "$HOME/.platform"
fi

# git-completion
if exists brew; then
    if [ -f "$(brew --prefix)/etc/bash_completion" ] ; then
        . "$(brew --prefix)/etc/bash_completion"
    fi
fi

# git flow completion
if [ -f "$HOME/bin/.git-flow-completion.sh" ] ; then
    . "$HOME/bin/.git-flow-completion.sh"
fi


# scripts
if [ -f "$HOME/.scripts" ] ; then
    . "$HOME/.scripts"
fi

PS1="\[$DIRECTORY_COLOR\]\w \[$GIT_COLOR\]\$(parse_git_branch)\[$STAGED_COLOR\]\$(gitstaged)\[$MODIFIED_COLOR\]\$(gitmodified)\[$UNTRACKED_COLOR\]\$(gituntracked)\[$RESET_COLOR\]\n\[$USER_COLOR\]\u\[$RESET_COLOR\]@\[$HOST_COLOR\]\h\[$PROMPT_COLOR\]→ \[$RESET_COLOR\]"

# vim: set sw=4 ts=4 sts=4 et tw=78 nospell:
# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/gregory.varghese/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/gregory.varghese/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/gregory.varghese/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/gregory.varghese/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

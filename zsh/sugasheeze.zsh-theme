# Yay! High voltage and arrows!

prompt_setup_sugasheeze(){
  setopt localoptions extendedglob

  ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$FG[039]%}"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN=""

  base_prompt='%B%{$FG[048]%}shane %{$FG[255]%}|> [%b%{$FG[199]%}%n%B%{$FG[255]%}]%b%{$reset_color%}%{$FG[255]%}%{$FG[255]%}%B[%b%{$reset_color%}%{$FG[212]%}%0~%{$reset_color%}%{$FG[255]%}%B]%b%B[🌵%b%{$reset_color%}'
  post_prompt='%{$FG[255]%}%B] -|%b%{$reset_color%} '

  base_prompt_nocolor=${base_prompt//\%\{[^\}]##\}}
  post_prompt_nocolor=${post_prompt//\%\{[^\}]##\}}

  autoload -U add-zsh-hook
  add-zsh-hook precmd prompt_sugasheeze_precmd
}

prompt_sugasheeze_precmd(){
  setopt localoptions nopromptsubst extendedglob

  local gitinfo=$(git_prompt_info)
  local gitinfo_nocolor=${gitinfo//\%\{[^\}]##\}}
  local exp_nocolor="$(print -P \"${base_prompt_nocolor}${gitinfo_nocolor}${post_prompt_nocolor}\")"
  local prompt_length=${#exp_nocolor}

  PROMPT="${base_prompt}\$(git_prompt_info)${post_prompt}"
}

prompt_setup_sugasheeze

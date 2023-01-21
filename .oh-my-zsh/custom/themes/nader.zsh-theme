function arrow(){
	arrow="%{$fg_bold[yellow]%}%{$FG[214]%}❱%{$reset_color%}";
	echo "${arrow}";
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}| %{$FG[204]%}\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=243'


PROMPT='%{$FG[249]%}[%T] %{$FG[039]%}%f%{$fg_bold[white]%}%{$FG[039]%}%c%{$reset_color%} $(git_prompt_info)$(arrow) '

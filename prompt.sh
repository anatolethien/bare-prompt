
# Prompt
function prompt() {
	local status=$?
	local red="\[\e[1;31m\]"
	local green="\[\e[1;32m\]"
	local cyan="\[\e[1;36m\]"
	local reset="\[\e[m\]"
	if [ -z $VIRTUAL_ENV ]
	then
		local venv=""
	else
		local venv_name=$(echo $VIRTUAL_ENV | awk -F "/" '{print $NF}')
		local venv="$green($venv_name)$reset "
	fi
	if [ $status -eq 0 ]
	then
		local status_color=$green
	else
		local status_color=$red
	fi
	PS1=" $venv$cyan\w$reset\n $status_color❱$reset "
}
PROMPT_COMMAND=prompt

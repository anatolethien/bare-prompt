
# Prompt
function prompt() {
  os=$(uname -s)
  if [[ "$os" == *"MINGW64"* ]]; then
    local sep="\\"
  else
    local sep="/"
  fi
  local status=$?
  local red="\[\e[1;31m\]"
  local green="\[\e[1;32m\]"
  local yellow="\[\e[1;33m\]"
  local cyan="\[\e[1;36m\]"
  local reset="\[\e[m\]"
  if [ -z $VIRTUAL_ENV ]; then
    local venv=""
  else
    local venv_name="$(echo $VIRTUAL_ENV | awk -F "$sep" '{print $NF}')"
    local venv="$green($venv_name)$reset "
  fi
  if [ $status -eq 0 ]; then
    local status_color=$green
  else
    local status_color=$red
  fi
  if [ $(git rev-parse --is-inside-work-tree 2> /dev/null) ]; then
    local branch_name=$(git branch 2> /dev/null | grep "*" | awk '{print $NF}')
    local branch=" $yellow[$branch_name]$reset"
  else
    local branch=""
  fi
  PS1=" $venv$cyan\W$reset$branch $status_color❱$reset "
}
PROMPT_COMMAND=prompt

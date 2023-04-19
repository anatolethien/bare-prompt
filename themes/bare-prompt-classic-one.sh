
# Prompt
function prompt() {
  os=$(uname -s)
  if [[ "$os" == *"MINGW64"* ]]; then
    local sep="\\"
  else
    local sep="/"
  fi
  if [ -z $VIRTUAL_ENV ]; then
    local venv=""
  else
    local venv="($(echo $VIRTUAL_ENV | awk -F "$sep" '{print $NF}')) "
  fi
  if [ $(git rev-parse --is-inside-work-tree 2> /dev/null) ]; then
    local branch=" [$(git branch 2> /dev/null | grep "*" | awk '{print $NF}')]"
  fi
  PS1=" $venv\W$branch > "
}
PROMPT_COMMAND=prompt

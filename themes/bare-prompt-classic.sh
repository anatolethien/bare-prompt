
# Prompt
function prompt() {
  if [ -z $VIRTUAL_ENV ]; then
    local venv=""
  else
    local venv="$(echo $VIRTUAL_ENV | awk -F "\\" '{print $NF}') "
  fi
  if [ $(git rev-parse --is-inside-work-tree 2> /dev/null) ]; then
    local branch=" [$(git branch 2> /dev/null | grep "*" | awk '{print $NF}')]"
  fi
  PS1=" $venv\w$branch\n > "
}
PROMPT_COMMAND=prompt

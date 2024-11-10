# Always run ls after cd
function cd {
  builtin cd "$@" && ls
}

function mainpush() {
  git status
  echo -n "Proceed? (y / n): "
  read -r confirm
  if [[ "$confirm" =~ ^[Yy]$ ]]; then
    git add .
    git commit -m "$@"
    git push origin main
  else
    echo "Aborted."
  fi
}

alias lt='ls --human-readable --size -1 -S --classify'
alias gh='history|grep'
alias left='ls -t -1'
alias count='find . -type f | wc -l'
alias startgit='cd `git rev-parse --show-toplevel` && git checkout main && git pull'
# Always run ls after cd
function cd {
  builtin cd "$@" && ls
}


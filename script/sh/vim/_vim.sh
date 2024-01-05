if [ "$1" != '-S' ]; then
  builtin cd "$(dirname "$1")"
else
  builtin cd "$(dirname "$2")"
fi

export repo_root=$(2>/dev/null git rev-parse --show-toplevel)
export repo=$(2>/dev/null basename "$git_root")
export git_branch=$(2>/dev/null git rev-parse --abbrev-ref HEAD)

>/dev/null builtin cd -

command vim "$@"



unset repo_root
unset repo
unset git_branch

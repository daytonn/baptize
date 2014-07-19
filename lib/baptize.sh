BAPTIZE_CONFIG="$BAPTIZE_CONFIG"
if [ -z "$BAPTIZE_CONFIG" ]; then
  BAPTIZE_CONFIG="$HOME/.holywater"
fi

if [ -f "$BAPTIZE_CONFIG" ]; then
  source "$BAPTIZE_CONFIG"
fi

LIB="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$LIB/colors.sh"
source "$LIB/prompt.sh"
source "$LIB/git_prompt.sh"

function baptize {
  local cmd="$1"
  if [ -z "$cmd" ]; then
    echo "usage: baptize <command>"
    echo ""
    echo "commands:"
    echo "  reload, repent    reload baptize config"
    echo "  update, redeem    update baptize to the latest version"
  else
    if [ "$cmd" == "update" ] || [ "$cmd" == "redeem" ]; then
      cd "$LIB/.."
      git pull origin matser
      source "$LIB/baptize.sh"
      cd - > /dev/null 2>&1
    fi

    if [ "$cmd" == "reload" ] || [ "$cmd" == "repent" ]; then
      source "$LIB/baptize.sh"
    fi
  fi
}

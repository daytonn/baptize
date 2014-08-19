LIB="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ -z $BAPTIZE_ROOT ]; then
  BAPTIZE_ROOT="$HOME/.baptize"
fi

if [ -z $BAPTIZE_CONFIG ]; then
  BAPTIZE_CONFIG="$HOME/.holywater"
fi

source "$LIB/colors.sh"

if [ -f "$BAPTIZE_CONFIG" ]; then
  source "$BAPTIZE_CONFIG"
fi

source "$LIB/prompt.sh"
source "$LIB/git_prompt.sh"
source "$LIB/plugins.sh"

function __baptize_help {
  echo "usage: baptize <command>"
  echo ""
  echo "commands:"
  echo "  reload, repent      reload baptize config"
  echo "  update, redeem      update baptize to the latest version"
  echo "  colors              print a list of baptize colors available"
  echo "  config <command>    view/create configuration"
  echo "    usage: baptize config <command>"
  echo ""
  echo "    commands:"
  echo "      init    initialize a defalt ~/.holywater config file"
  echo "      show    show the current configuration settings"
  echo ""
}

function __baptize_update {
  cd "$LIB/.."
  git pull origin matser
  __baptize_reload
  cd - > /dev/null 2>&1
}

function __baptize_reload {
  source "$LIB/baptize.sh"
}

function __baptize_config {
  local cmd="$1"

  if [ "$cmd" ] && [ "$cmd" != "show" ]; then
    if [ "$cmd" == "init" ]; then
      if [ -f "$BAPTIZE_CONFIG" ]; then
        echo "$BAPTIZE_CONFIG already exists"
      else
        cp "$LIB/.holywater" "$BAPTIZE_CONFIG"
        echo "$BAPTIZE_CONFIG created"
      fi
    else
      echo "Unknown command: baptize config $cmd"
    fi
  else
    echo "# Prompt settings"
    echo -e "PROMPT_ARROW: $PROMPT_ARROW"
    echo -e "${PROMPT_COLOR}PROMPT_COLOR${CEND}"
    echo -e "${PROMPT_ICON_COLOR}PROMPT_ICON_COLOR${CEND}"
    echo -e "PROMPT_ICON: ${PROMPT_ICON}"
    echo -e "PROMPT_CONTENT: ${PROMPT_CONTENT}"
    echo -e "PROMPT_2_ARROW: ${PROMPT_2_ARROW}"
    echo -e "${PROMPT_2_COLOR}PROMPT_2_COLOR${CEND}"

    PR="${PROMPT//\\[/}"
    PR2="${PR//\\]/}"
    echo -e "${PR2}"
    P2R="${PROMPT_2//\\\[/}"
    P2R2="${P2R//\\\]/}"
    echo -e "${P2R2}"

    echo "# Git prompt settings"
    echo -e "GPULL_ICON: $GPULL_ICON"
    echo -e "GPUSH_ICON: $GPUSH_ICON"
    echo -e "GCLEAN_ICON: $GCLEAN_ICON"
    echo -e "${GDIRTY_COLOR}GDIRTY_COLOR${CEND}"
    echo -e "${GCLEAN_COLOR}GCLEAN_COLOR${CEND}"
    echo -e "${GMODIFIED_COLOR}GMODIFIED_COLOR${CEND}"
    echo -e "${GADDED_COLOR}GADDED_COLOR${CEND}"
    echo -e "${GDELETED_COLOR}GDELETED_COLOR${CEND}"
    echo -e "${GSTATS_SEPERATOR_COLOR}GSTATS_SEPERATOR_COLOR${CEND}"
  fi
}

function baptize {
  local cmd="$1"

  if [ -z "$cmd" ]; then
    __baptize_help
  else
    if [ "$cmd" == "reload" ] || [ "$cmd" == "repent" ]; then
      __baptize_reload
    fi

    if [ "$cmd" == "update" ] || [ "$cmd" == "redeem" ]; then
      __baptize_update
    fi

    if [ "$cmd" == "config" ]; then
      __baptize_config "$2"
    fi

    if [ "$cmd" == "colors" ]; then
      __baptize_colors
    fi
  fi
}

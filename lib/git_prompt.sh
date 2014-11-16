if [[ -z ${GSHOW_STATS+x} ]]; then
  GSHOW_STATS="yes"
fi

if [[ -z ${GSHORT_PATH+x} ]]; then
  GSHORT_PATH="yes"
fi

if [[ -z ${GPULL_ICON+x} ]]; then
  GPULL_ICON=" ⇣ "
fi

if [[ -z ${GPUSH_ICON+x} ]]; then
  GPUSH_ICON=" ⇡ "
fi

if [[ -z ${GCLEAN_ICON+x} ]]; then
  GCLEAN_ICON=" ✓ "
fi

if [[ -z ${GCLEAN_COLOR+x} ]]; then
  GCLEAN_COLOR="$BLUEF_GREENB"
fi

if [[ -z ${GMODIFIED_COLOR+x} ]]; then
  GMODIFIED_COLOR="$BLUEF_YELLOWB"
fi

if [[ -z ${GADDED_COLOR+x} ]]; then
  GADDED_COLOR="$GREENF_YELLOWB"
fi

if [[ -z ${GDELETED_COLOR+x} ]]; then
  GDELETED_COLOR="$REDF_YELLOWB"
fi

if [[ -z ${GSTATS_SEPARATOR+x} ]]; then
  GSTATS_SEPARATOR=":"
fi

if [[ -z ${GSTATS_SEPARATOR_COLOR+x} ]]; then
  GSTATS_SEPARATOR_COLOR="$BLUEF_YELLOWB"
fi

GSTATUS_COLOR=""
GWD=""
GSTATS_COUNT=""
GSTATUS_ICON=""
GPROJECT_NAME=""

function is_git_repository {
  git branch > /dev/null 2>&1
}

function git_wd {
  local dir="$PWD"
  local path_found="no"
  local wd

  git_project_name

  if [ $GSHORT_PATH == "yes" ]; then
    wd="$GPROJECT_NAME"
    IFS="/" read -ra ADDR <<< "$dir"
    for i in "${ADDR[@]}"; do
      if [ "$path_found" == "yes" ]; then
        wd="$wd/$i"
      fi
      if [ "$i" == "$GPROJECT_NAME" ]; then
        path_found="yes"
      fi
    done
  else
    wd="\w"
  fi
  GWD=" $wd "
}

function git_stats_count {
  local status="$1"
  GSTATS_COUNT=""
  if [[ `echo -e "$status" | wc -l | tr -d ' '` != "1" ]] && [ $GSHOW_STATS == "yes" ]; then
    local modified=`echo -e "$status" | egrep -o "^\s?M" | wc -l | tr -d ' '`
    local added=`echo -e "$status" | egrep -o "^(\?\?|A)" | wc -l | tr -d ' '`
    local deleted=`echo -e "$status" | egrep -o "^\s?D" | wc -l | tr -d ' '`

    GSTATS_COUNT+="\\[$GMODIFIED_COLOR\\] $modified"
    GSTATS_COUNT+="\\[$GSTATS_SEPARATOR_COLOR\\]$GSTATS_SEPARATOR"
    GSTATS_COUNT+="\\[$GADDED_COLOR\\]$added"
    GSTATS_COUNT+="\\[$GSTATS_SEPARATOR_COLOR\\]$GSTATS_SEPARATOR"
    GSTATS_COUNT+="\\[$GDELETED_COLOR\\]$deleted \\[$CEND\\]"
  fi
}

function git_status_icon {
  local status="$1"
  local icon
  local behind

  if [[ -n "`echo -e "$status" | egrep "behind"`" ]]; then
    behind+="$GMODIFIED_COLOR$GPULL_ICON$CEND"
  fi

  if [[ `echo -e "$status" | wc -l | tr -d ' '` == "1" ]]; then
    icon+="$behind$GCLEAN_COLOR$GCLEAN_ICON"
  else
    icon+="$GMODIFIED_COLOR$GPUSH_ICON$behind"
  fi

  GSTATUS_ICON="$icon"
}

function git_status_color {
  local status="$1"
  if [[ `echo -e "$status" | wc -l | tr -d ' '` == "1" ]]; then
    GSTATUS_COLOR="$GCLEAN_COLOR"
  else
    GSTATUS_COLOR="$GMODIFIED_COLOR"
  fi
}

function git_prompt {
  if is_git_repository ; then
    local status=`git status -sb --porcelain`
    local branch="`echo -e "$status" | egrep -o "##\s(\w|-|_|\/)+" | tr -d "## "` "
    git_stats_count "$status"
    git_status_icon "$status"
    git_status_color "$status"
    git_wd

    PS1="\\[$PROMPT_ICON_COLOR\\]${PROMPT_ICON}${GSTATS_COUNT}${GSTATUS_ICON}\\[$GSTATUS_COLOR\\]$branch\\[$PROMPT_COLOR\\]${GWD}${PROMPT_ARROW}\\[$CEND\\] "
  else
    set_prompt
  fi
}

function git_project_name {
  local project_name
  local dir="$PWD"

  until [[ -z "$dir" ]]; do
    if [ -d "$dir/.git" ]; then
      project_name=$(basename "$dir")
      break
    fi
    dir="${dir%/*}"
  done
  GPROJECT_NAME="$project_name"
}

export PROMPT_COMMAND="git_prompt"

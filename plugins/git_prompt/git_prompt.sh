GBRANCH_ICON=""
if [[ -z ${GSHOW_STATS+x} ]]; then
  GSHOW_STATS="no"
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
  GCLEAN_COLOR="$(eval ${GCLEAN_FG}f_${GCLEAN_BG}b)"
fi

if [[ -z ${GMODIFIED_COLOR+x} ]]; then
  GMODIFIED_COLOR="$(eval ${GMODIFIED_FG}f_${GMODIFIED_BG}b)"
fi

if [[ -z ${GSTATS_SEPARATOR_COLOR+x} ]]; then
  GSTATS_SEPARATOR_COLOR="$GMODIFIED_COLOR"
fi

if [[ -z ${GADDED_COLOR+x} ]]; then
  GADDED_COLOR="$(eval ${GADDED_FG}f_${GADDED_BG}b)"
fi

if [[ -z ${GDELETED_COLOR+x} ]]; then
  GDELETED_COLOR="$(${GDELETED_FG}f_${GDELETED_BG}b)"
fi

GSTATUS_COLOR=""
GWD=""
GSTATS_COUNT=""
GSTATUS_ICON=""
GPROJECT_NAME=""
GMODIFIED_COUNT=""
GDELETED_COUNT=""
GADDED_COUNT=""

function __baptize_is_git_repository {
  git branch > /dev/null 2>&1
}

function __baptize_set_git_wd {
  local dir="$PWD"
  local path_found="no"
  local wd

  _baptize_set_git_project_name

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

function __baptize_set_status_colors {
  local status
  status="$1"
  if [ `echo -e "$status" | wc -l | tr -d ' '` == "1" ]; then
    GSTATUS_BEGIN_COLOR="$(eval ${PROMPT_FG}f_${GCLEAN_BG}b)"
    GSTATUS_BG="$GCLEAN_BG"
    GSTATUS_FG="$PROMPT_FG"
    GSTATUS_END_COLOR="$(eval ${GCLEAN_BG}f_${PROMPT_BG}b)"
  else
    GSTATUS_BEGIN_COLOR=$(eval ${PROMPT_FG}f_${GMODIFIED_BG}b)
    GSTATUS_BG="$GMODIFIED_BG"
    GSTATUS_FG="$PROMPT_FG"
    GSTATUS_END_COLOR=$(eval ${GMODIFIED_BG}f_${PROMPT_BG}b)
  fi
}

function __baptize_render_stats_segment {
  local stats
  stats="$1"
  if [ "$GSHOW_STATS" == "yes" ] && [ `echo -e "$status" | wc -l | tr -d ' '` != "1" ]; then
    local STATS_ADDED_COLOR="$(eval ${GADDED_FG}f_${GMODIFIED_BG}b)";
    local STATS_DELETED_COLOR="$(eval ${GDELETED_FG}f_${GMODIFIED_BG}b)"
    GMODIFIED_COUNT=`echo -e "$status" | egrep -o "^\s?M" | wc -l | tr -d ' '`
    GADDED_COUNT=`echo -e "$status" | egrep -o "^(\?\?|A)" | wc -l | tr -d ' '`
    GDELETED_COUNT=`echo -e "$status" | egrep -o "^\s?D" | wc -l | tr -d ' '`

    PS1+="\\[$GMODIFIED_COLOR\\] ${GMODIFIED_COUNT}"
    PS1+="${GSTATS_SEPARATOR}"
    PS1+="\\[$STATS_ADDED_COLOR\\]${GADDED_COUNT}"
    PS1+="${GSTATS_SEPARATOR}"
    PS1+="\\[$STATS_DELETED_COLOR\\]${GDELETED_COUNT}\\[$GMODIFIED_COLOR\\]"
  fi
}

function __baptize_render_git_icon_segment {
  local status
  status="$1"
  if [[ "$(echo -e "$status" | wc -l | tr -d ' ')" == "1" ]]; then
    PS1+=$GCLEAN_ICON
  else
    PS1+=$GPUSH_ICON
  fi

  if [[ -n "`echo -e "$status" | egrep "behind"`" ]]; then
    PS1+=$GPULL_ICON
  fi
}

function __baptize_git_prompt {
  if __baptize_is_git_repository ; then
    local status
    local branch
    local CONTENT

    CONTENT=$PROMPT_CONTENT
    if [ "$GSHORT_PATH" == "yes" ]; then
      __baptize_set_git_wd
      CONTENT=$GWD
    fi
    status=$(git status -sb --porcelain)
    branch="$(echo -e "$status" | egrep -o "##\s(\w|-|_|\/)+" | tr -d "## ")"

    __baptize_set_status_colors "$status"

    PS1=""

    __baptize_segment "$PROMPT_ICON", "$PROMPT_BG" "$PROMPT_BG" "$GSTATUS_BG"
    __baptize_render_stats_segment "$status"
    __baptize_render_git_icon_segment "$status"
    __baptize_segment "$branch $GBRANCH_ICON " "$GSTATUS_FG" "$GSTATUS_BG" "$PROMPT_BG"
    __baptize_segment "$CONTENT" "$PROMPT_FG" "$PROMPT_BG"

    PS1+="\\[$CEND\\] "
  else
    __baptize_set_prompt
  fi
}

function _baptize_set_git_project_name {
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

export PROMPT_COMMAND="__baptize_git_prompt"

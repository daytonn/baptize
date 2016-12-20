#!/usr/bin/env bash

GBRANCH_ICON=""


if [[ -z ${BAPTIZE_GIT_SHOW_STATS+x} ]]; then
  BAPTIZE_GIT_SHOW_STATS="no"
fi

if [[ -z ${BAPTIZE_GIT_SHORT_PATH+x} ]]; then
  BAPTIZE_GIT_SHORT_PATH="yes"
fi

if [[ -z ${BAPTIZE_GIT_PULL_ICON+x} ]]; then
  BAPTIZE_GIT_PULL_ICON=" ⇣ "
fi

if [[ -z ${BAPTIZE_GIT_PUSH_ICON+x} ]]; then
  BAPTIZE_GIT_PUSH_ICON=" ⇡ "
fi

if [[ -z ${BAPTIZE_GIT_CLEAN_ICON+x} ]]; then
  BAPTIZE_GIT_CLEAN_ICON=" ✓ "
fi

GCLEAN_COLOR="$(eval ${BAPTIZE_GIT_CLEAN_FG}f_${BAPTIZE_GIT_CLEAN_BG}b)"
GMODIFIED_COLOR="$(eval ${BAPTIZE_GIT_MODIFIED_FG}f_${BAPTIZE_GIT_MODIFIED_BG}b)"
GWD=""
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

  if [ $BAPTIZE_GIT_SHORT_PATH == "yes" ]; then
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

}

function __baptize_render_stats_segment {
  local status
  status="$1"
  if [ "$BAPTIZE_GIT_SHOW_STATS" == "yes" ] && [ `echo -e "$status" | wc -l | tr -d ' '` != "1" ]; then
    GMODIFIED_COUNT=`echo -e "$status" | egrep -o "^\s?M" | wc -l | tr -d ' '`
    GADDED_COUNT=`echo -e "$status" | egrep -o "^(\?\?|A)" | wc -l | tr -d ' '`
    GDELETED_COUNT=`echo -e "$status" | egrep -o "^\s?D" | wc -l | tr -d ' '`

    PS1+="\\[$GMODIFIED_COLOR\\] ${GMODIFIED_COUNT}"
    PS1+="${BAPTIZE_GIT_STATS_SEPARATOR}"
    PS1+="\\[$STATS_ADDED_COLOR\\]${GADDED_COUNT}"
    PS1+="${BAPTIZE_GIT_STATS_SEPARATOR}"
    PS1+="\\[$STATS_DELETED_COLOR\\]${GDELETED_COUNT}\\[$GMODIFIED_COLOR\\]"
  fi
}

function __baptize_render_git_icon_segment {
  local status
  status="$1"
  if [[ "$(echo -e "$status" | wc -l | tr -d ' ')" == "1" ]]; then
    PS1+="\\[$GCLEAN_COLOR\\]$BAPTIZE_GIT_CLEAN_ICON"
  else
    PS1+="\\[$GMODIFIED_COLOR\\]$BAPTIZE_GIT_PUSH_ICON"
  fi

  if [[ -n "`echo -e "$status" | egrep "behind"`" ]]; then
    PS1+="\\[$GMODIFIED_COLOR\\]$BAPTIZE_GIT_PULL_ICON"
  fi
}

function __baptize_git_prompt {
  if __baptize_is_git_repository ; then
    local status
    local branch
    local CONTENT

    CONTENT=$BAPTIZE_PROMPT_CONTENT
    if [ "$BAPTIZE_GIT_SHORT_PATH" == "yes" ]; then
      __baptize_set_git_wd
      CONTENT=$GWD
    fi
    status=$(git status -sb --porcelain)
    branch="$(echo -e "$status" | egrep -o "##\s(\w|-|_|\/)+" | tr -d "## ")"

    if [ `echo -e "$status" | wc -l | tr -d ' '` == "1" ]; then
      GSTATUS_BG="$BAPTIZE_GIT_CLEAN_BG"
      GSTATUS_FG="$BAPTIZE_PROMPT_FG"
    else
      GSTATUS_BG="$BAPTIZE_GIT_MODIFIED_BG"
      GSTATUS_FG="$BAPTIZE_PROMPT_FG"
    fi

    PS1=""
    __baptize_segment "$BAPTIZE_PROMPT_ICON" "$BAPTIZE_PROMPT_BG" "$BAPTIZE_PROMPT_FG" "$GSTATUS_BG"
    __baptize_render_stats_segment "$status"
    __baptize_render_git_icon_segment "$status"
    __baptize_segment "$branch $GBRANCH_ICON " "$GSTATUS_FG" "$GSTATUS_BG" "$BAPTIZE_PROMPT_BG"
    __baptize_segment "$CONTENT" "$BAPTIZE_PROMPT_FG" "$BAPTIZE_PROMPT_BG"

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

if [[ -n "$PROMPT_COMMAND" ]]; then
  export PROMPT_COMMAND="$PROMPT_COMMAND;__baptize_git_prompt"
else
  export PROMPT_COMMAND="__baptize_git_prompt"
fi

#!/usr/bin/env bash

HGBRANCH_ICON=""

BAPTIZE_HG_SHOW_STATS="no"

if [[ -z ${BAPTIZE_HG_SHORT_PATH+x} ]]; then
  BAPTIZE_HG_SHORT_PATH="yes"
fi

if [[ -z ${BAPTIZE_HG_PULL_ICON+x} ]]; then
  BAPTIZE_HG_PULL_ICON=" ⇣ "
fi

if [[ -z ${BAPTIZE_HG_PUSH_ICON+x} ]]; then
  BAPTIZE_HG_PUSH_ICON=" ⇡ "
fi

if [[ -z ${BAPTIZE_HG_CLEAN_ICON+x} ]]; then
  BAPTIZE_HG_CLEAN_ICON=" ✓ "
fi

HGCLEAN_COLOR="$(eval "${BAPTIZE_HG_CLEAN_FG}"f_"${BAPTIZE_HG_CLEAN_BG}"b)"
HGMODIFIED_COLOR="$(eval "${BAPTIZE_HG_MODIFIED_FG}"f_"${BAPTIZE_HG_MODIFIED_BG}"b)"

HGWD=""
HGPROJECT_NAME=""
HGMODIFIED_COUNT=""
HGDELETED_COUNT=""
HGADDED_COUNT=""

function __baptize_is_hg_repository {
  hg branch > /dev/null 2>&1
}

function __baptize_set__wd {
  local dir="$PWD"
  local path_found="no"
  local wd

  _baptize_set_hg_project_name

  if [ $BAPTIZE_HG_SHORT_PATH == "yes" ]; then
    wd="$HGPROJECT_NAME"
    IFS="/" read -ra ADDR <<< "$dir"
    for i in "${ADDR[@]}"; do
      if [ "$path_found" == "yes" ]; then
        wd="$wd/$i"
      fi
      if [ "$i" == "$HGPROJECT_NAME" ]; then
        path_found="yes"
      fi
    done
  else
    wd="\w"
  fi
  HGWD=" $wd "
}

function __baptize_set_status_colors {
  local status
  status="$1"
  if [[ "$HG_REPO_IS_CLEAN" == "yes" ]]; then
    HGSTATUS_BG="$BAPTIZE_HG_CLEAN_BG"
    HGSTATUS_FG="$BAPTIZE_PROMPT_FG"
  else
    HGSTATUS_BG="$BAPTIZE_HG_MODIFIED_BG"
    HGSTATUS_FG="$BAPTIZE_PROMPT_FG"
    STATS_ADDED_COLOR="$(eval "${BAPTIZE_HG_ADDED_FG}"f_"${BAPTIZE_HG_MODIFIED_BG}"b)";
    STATS_DELETED_COLOR="$(eval "${BAPTIZE_HG_DELETED_FG}"f_"${BAPTIZE_HG_MODIFIED_BG}"b)"
  fi
}

function __baptize_render_stats_segment {
  local status
  status="$1"

  if [[ "$BAPTIZE_HG_SHOW_STATS" == "yes" ]] && [[ "$HG_REPO_IS_CLEAN" == "no" ]]; then
    HGMODIFIED_COUNT=$(echo -e "$status" | egrep -o "^\s?M" | wc -l | tr -d ' ')
    HGADDED_COUNT=$(echo -e "$status" | egrep -o "^(\?\?|A)" | wc -l | tr -d ' ')
    HGDELETED_COUNT=$(echo -e "$status" | egrep -o "^\s?R" | wc -l | tr -d ' ')
    HGDELETED_COUNT="${HGDELETED_COUNT}/$(echo -e "$status" | egrep -o "^\s?!" | wc -l | tr -d ' ')"

    PS1+="\\[$HGMODIFIED_COLOR\\] ${HGMODIFIED_COUNT}"
    PS1+="${BAPTIZE_HG_STATS_SEPARATOR}"
    PS1+="\\[$STATS_ADDED_COLOR\\]${HGADDED_COUNT}"
    PS1+="${BAPTIZE_HG_STATS_SEPARATOR}"
    PS1+="\\[$STATS_DELETED_COLOR\\]${HGDELETED_COUNT}\\[$HGMODIFIED_COLOR\\]"
  fi
}

function __baptize_render_hg_icon_segment {
  local status
  status="$1"

  if [[ "$HG_REPO_IS_CLEAN" == "yes" ]]; then
    PS1+="\\[$HGCLEAN_COLOR\\]$BAPTIZE_HG_CLEAN_ICON"
  else
    PS1+="\\[$HGMODIFIED_COLOR\\]$BAPTIZE_HG_PUSH_ICON"
  fi
}

function __baptize_set_hg_repo_clean_status {
  if [[ $(echo -e "$status" | sed '/^\s*$/d' | wc -l) -eq 0 ]]; then
    HG_REPO_IS_CLEAN="yes"
  else
    HG_REPO_IS_CLEAN="no"
  fi
}

function __baptize_hg_prompt {
  if [[ -d ./.hg ]] ; then
    local status
    local branch
    local CONTENT

    CONTENT=$BAPTIZE_PROMPT_CONTENT
    if [ "$BAPTIZE_HG_SHORT_PATH" == "yes" ]; then
      __baptize_set__wd
      CONTENT=$HGWD
    fi

    status=$(hg status -a -m -r -u -d)
    branch="$(hg branch)"

    __baptize_set_hg_repo_clean_status "$status"
    __baptize_set_status_colors "$status"

    PS1=""

    __baptize_segment "$BAPTIZE_PROMPT_ICON" "$BAPTIZE_PROMPT_BG" "$BAPTIZE_PROMPT_FG" "$HGSTATUS_BG"
    __baptize_render_stats_segment "$status"
    __baptize_render_hg_icon_segment "$status"
    __baptize_segment " $branch $HGBRANCH_ICON " "$HGSTATUS_FG" "$HGSTATUS_BG" "$BAPTIZE_PROMPT_BG"
    __baptize_segment "$CONTENT" "$BAPTIZE_PROMPT_FG" "$BAPTIZE_PROMPT_BG"

    PS1+="\\[$CEND\\] "
  fi
}

function _baptize_set_hg_project_name {
  local project_name
  local dir="$PWD"

  until [[ -z "$dir" ]]; do
    if [ -d "$dir/.hg" ]; then
      project_name=$(basename "$dir")
      break
    fi
    dir="${dir%/*}"
  done
  HGPROJECT_NAME="$project_name"
}

if [[ -n "$PROMPT_COMMAND" ]]; then
  export PROMPT_COMMAND="$PROMPT_COMMAND;__baptize_hg_prompt"
else
  export PROMPT_COMMAND="__baptize_hg_prompt"
fi

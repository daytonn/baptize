if [[ -z ${GPULL_ICON+x} ]]; then
  GPULL_ICON="\[ ⇣ \]"
fi

if [[ -z ${GPUSH_ICON+x} ]]; then
  GPUSH_ICON="\[ ⇡ \]"
fi

if [[ -z ${GCLEAN_ICON+x} ]]; then
  GCLEAN_ICON="\[ ✓ \]"
fi

if [[ -z ${GDIRTY_COLOR+x} ]]; then
  GDIRTY_COLOR="$BLUEF_YELLOWB"
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

if [[ -z ${GSTATS_SEPERATOR_COLOR+x} ]]; then
  GSTATS_SEPERATOR_COLOR="$BLUEF_YELLOWB"
fi

function is_git_repository {
  git branch > /dev/null 2>&1
}

function git_wd {
  local dir="$PWD"
  local project_name=`git_project_name`
  local path_found="no"
  local wd="$project_name"

  IFS="/" read -ra ADDR <<< "$dir"
  for i in "${ADDR[@]}"; do
    if [ "$path_found" == "yes" ]; then
      wd="$wd/$i"
    fi
    if [ "$i" == "$project_name" ]; then
      path_found="yes"
    fi
  done
  printf " $wd "
}

function git_stats_count {
  local status="$1"
  local status_prompt
  if [ -n "$status" ]; then
    local modified=`echo -e "$status" | egrep -o "^\s?M" | wc -l | tr -d ' '`
    local added=`echo -e "$status" | egrep -o "^\?\?" | wc -l | tr -d ' '`
    local deleted=`echo -e "$status" | egrep -o "^\s?D" | wc -l | tr -d ' '`
    local separator="${GSTATS_SEPERATOR_COLOR}:"
    status_prompt+="$GMODIFIED_COLOR $modified"
    status_prompt+="$separator"
    status_prompt+="$GADDED_COLOR$added"
    status_prompt+="$separator"
    status_prompt+="$GDELETED_COLOR$deleted$CEND"
  fi
  printf "$status_prompt"
}

function git_status_icon {
  local status="$1"
  local icon
  local behind

  if [[ "$status" == *"Your branch is behind"* ]]; then
    behind+="$GMODIFIED_COLOR$GPULL_ICON$CEND"
  fi

  if [[ "$status" == *"working directory clean"* ]]; then
    icon+="$GCLEAN_COLOR$GCLEAN_ICON$behind"
  else
    icon+="$GMODIFIED_COLOR$GPUSH_ICON$behind"
  fi

  printf "$icon"
}

function git_status_color {
  local status="$1"

  if [[ "$status" == *"working directory clean"* ]]; then
    printf "$GCLEAN_COLOR"
  else
    printf "$GMODIFIED_COLOR"
  fi
}

function git_prompt {
  if is_git_repository ; then
    local status=`git status -s`
    local full_status=`git status`
    local branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null) "
    local stats_count=`git_stats_count "$status"`
    local status_icon=`git_status_icon "$full_status"`
    local status_color=`git_status_color "$full_status"`
    local git_wd=`git_wd`

    PS1="$PROMPT_ICON$stats_count$status_icon$status_color$branch$CEND$PROMPT_COLOR$git_wd$PROMPT_ARROW$CEND "
  else
    PS1="$PROMPT"
  fi
}

function git_project_name {
  local project_name
  local dir="$PWD"

  until [[ -z "$dir" ]]; do
    if [ -d "$dir/.git" ]; then
      IFS='/' read -ra ADDR <<< "$dir"
      for i in "${ADDR[@]}"; do
        project_name="$i"
      done
      break
    fi
    dir="${dir%/*}"
  done
  printf "$project_name"
}

export PROMPT_COMMAND="git_prompt"

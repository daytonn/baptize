GPULL_ICON="$GPULL_ICON"
if [ -z "$GPULL_ICON" ]; then
  GPULL_ICON="\[ ⇣ \]"
fi

GPUSH_ICON="$GPUSH_ICON"
if [ -z "$GPUSH_ICON" ]; then
  GPUSH_ICON="\[ ⇡ \]"
fi

GCLEAN_ICON="$GCLEAN_ICON"
if [ -z "$GCLEAN_ICON" ]; then
  GCLEAN_ICON="\[ ✓ \]"
fi

GDIRTY_COLOR="$GDIRTY_COLOR"
if [ -z "$GDIRTY_COLOR" ]; then
  GDIRTY_COLOR="$BLUEF_YELLOWB"
fi

GCLEAN_COLOR="$GCLEAN_COLOR"
if [ -z "$GCLEAN_COLOR" ]; then
  GCLEAN_COLOR="$BLUEF_GREENB"
fi

GMODIFIED_COLOR="$GMODIFIED_COLOR"
if [ -z "$GMODIFIED_COLOR" ]; then
  GMODIFIED_COLOR="$BLUEF_YELLOWB"
fi

GADDED_COLOR="$GADDED_COLOR"
if [ -z "$GADDED_COLOR" ]; then
  GADDED_COLOR="$GREENF_YELLOWB"
fi

GDELETED_COLOR="$GDELETED_COLOR"
if [ -z "$GDELETED_COLOR" ]; then
  GDELETED_COLOR="$REDF_YELLOWB"
fi

GSTATS_SEPERATOR_COLOR="$GSTATS_SEPERATOR_COLOR"
if [ -z "$GSTATS_SEPERATOR_COLOR" ]; then
  GSTATS_SEPERATOR_COLOR="$BLUEF_YELLOWB"
fi

DEV_PATH="$DEV_PATH"
if [ -z "$DEV_PATH" ]; then
  DEV_PATH="Development"
fi

function is_git_repository {
  git branch > /dev/null 2>&1
}

function wd_without_dev_path {
  local wd
  if [[ $PWD == *"${DEV_PATH}"* ]]; then
    wd="${PWD/${HOME}\/${DEV_PATH}\//}"
  else
    wd="${PWD/${HOME}\//}"
  fi
  printf " $wd "
}

function git_stats_count {
  local status="$1"
  local status_prompt
  local modified=`echo -e "$status" | egrep -o "^\s?M" | wc -l | tr -d ' '`
  local added=`echo -e "$status" | egrep -o "^\?\?" | wc -l | tr -d ' '`
  local deleted=`echo -e "$status" | egrep -o "^\s?D" | wc -l | tr -d ' '`
  local separator="${GSTATS_SEPERATOR_COLOR}:"
  status_prompt+="$GMODIFIED_COLOR $modified"
  status_prompt+="$separator"
  status_prompt+="$GADDED_COLOR$added"
  status_prompt+="$separator"
  status_prompt+="$GDELETED_COLOR$deleted$CEND"
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
    local wd=`wd_without_dev_path`

    PS1="$PROMPT_ICON$stats_count$status_icon$status_color$branch$CEND$PROMPT_COLOR$wd$PROMPT_ARROW$CEND "
  else
    PS1="$PROMPT"
  fi
}

export PROMPT_COMMAND="git_prompt"

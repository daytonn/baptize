GDIRTY_COLOR="$GDIRTY_COLOR"
if [ -z "$GDIRTY_COLOR" ]; then
  GDIRTY_COLOR="bluef_yellowb"
fi

GCLEAN_COLOR="$GCLEAN_COLOR"
if [ -z "$GCLEAN_COLOR" ]; then
  GCLEAN_COLOR="bluef_greenb"
fi

GMODIFIED_COLOR="$GMODIFIED_COLOR"
if [ -z "$GMODIFIED_COLOR" ]; then
  GMODIFIED_COLOR="bluef_yellowb"
fi

GADDED_COLOR="$GADDED_COLOR"
if [ -z "$GADDED_COLOR" ]; then
  GADDED_COLOR="greenf_yellowb"
fi

GDELETED_COLOR="$GDELETED_COLOR"
if [ -z "$GDELETED_COLOR" ]; then
  GDELETED_COLOR="redf_yellowb"
fi

GSTATS_SEPERATOR_COLOR="$GSTATS_SEPERATOR_COLOR"
if [ -z "$GSTATS_SEPERATOR_COLOR" ]; then
  GSTATS_SEPERATOR_COLOR="bluef_yellowb"
fi

DEV_PATH="$DEV_PATH"
if [ -z "$DEV_PATH" ]; then
  DEV_PATH="Development"
fi

function is_git_repository {
  local is_git
  if [  -d .git ]; then
    is_git="yes"
  else
    if [ ! $(git rev-parse --git-dir) ]; then
      is_git="no"
    else
      is_git="yes"
    fi
  fi

  printf "$is_git"
}

function wd_without_dev_path {
  local wd
  if [[ $PWD == *"${DEV_PATH}"* ]]; then
    wd="${PWD/${HOME}\/${DEV_PATH}\//}"
  else
    wd="${PWD/${HOME}\//}"
  fi
  printf "$wd"
}

function git_stats_count {
  local status="$1"
  local status_prompt
  if [ -n "$status" ]; then
    local modified=`echo "$status" | egrep -o "^\s?M" | wc -l | tr -d ' '`
    local added=`echo "$status" | egrep -o "^\s?\?\?" | wc -l | tr -d ' '`
    local deleted=`echo "$status" | egrep -o "^\s?D" | wc -l | tr -d ' '`
    local seperator=$(eval $GSTATS_SEPERATOR_COLOR ':')
    status_prompt+=$(eval $GMODIFIED_COLOR '$modified')
    status_prompt+="${seperator}"
    status_prompt+=$(eval $GADDED_COLOR '$added')
    status_prompt+="${seperator}"
    status_prompt+=$(eval $GDELETED_COLOR '$deleted')
  fi
  printf "$status_prompt"
}

# function ngit_status {
#   local status="$1"
#   local status_prompt
#   local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
#   local behind
#   if [[ "$status" == *"Your branch is behind"* ]]; then
#     behind+=$(eval $GMODIFIED_COLOR " ⇣ ")
#   fi
#   if [[ "$status" == *"working directory clean"* ]]; then
#     status_prompt+="$(eval $GCLEAN_COLOR " ✓ ")$behind"
#   else
#     status_prompt+="$(eval $git_modified_color " ⇡ ")$behind"
#   fi
#   printf "$status_prompt$branch "
# }

# function ngit_prompt {
#   local status=`git status -s`
#   if [ $(is_git_repository) == "yes" ]; then
#     PS1="\[${icon}\]\[$(git_stats_count '$status')\]\[$(git_status '$status')\]\[${prompt_color}\] \[$(wd_without_dev_path)\] \[❯\]  "
#   else
#     PS1="${prompt}"
#   fi
# }

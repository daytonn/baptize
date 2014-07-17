#!/usr/bin/env bats

load test_helper

@test "it has a dirty color variable" {
  [ -n "$GDIRTY_COLOR" ]
}

@test "it defers if a dirty color variable is already set" {
  GDIRTY_COLOR="test"
  source "$HOME/Development/baptize/lib/git_prompt.sh"
  [ "$GDIRTY_COLOR" == "test" ]
}

@test "it has a clean color variable" {
  [ -n "$GCLEAN_COLOR" ]
}

@test "it defers if a clean color variable is already set" {
  GCLEAN_COLOR="test"
  source "$HOME/Development/baptize/lib/git_prompt.sh"
  [ "$GCLEAN_COLOR" == "test" ]
}

@test "it has a modified color variable" {
  [ -n "$GMODIFIED_COLOR" ]
}

@test "it defers a modified color variable is already set" {
  GMODIFIED_COLOR="test"
  source "$HOME/Development/baptize/lib/git_prompt.sh"
  [ "$GMODIFIED_COLOR" == "test" ]
}

@test "it has an added color variable" {
  [ -n "$GADDED_COLOR" ]
}

@test "it defers if an added color variable is already set" {
  GADDED_COLOR="test"
  source "$HOME/Development/baptize/lib/git_prompt.sh"
  [ "$GADDED_COLOR" == "test" ]
}

@test "it has a deleted color variable" {
  [ -n "$GDELETED_COLOR" ]
}

@test "it defers if a deleted color variable is already set" {
  GDELETED_COLOR="test"
  source "$HOME/Development/baptize/lib/git_prompt.sh"
  [ "$GDELETED_COLOR" == "test" ]
}

@test "it has a stats seperator color variable" {
  [ -n "$GSTATS_SEPERATOR_COLOR" ]
}

@test "it defers if a stats seperator color variable is already set" {
  GSTATS_SEPERATOR_COLOR="test"
  source "$HOME/Development/baptize/lib/git_prompt.sh"
  [ "$GSTATS_SEPERATOR_COLOR" == "test" ]
}

@test "it has a development path variable" {
  [ -n "$DEV_PATH" ]
}

@test "it defers if the development path is already set" {
  DEV_PATH="test"
  source "$HOME/Development/baptize/lib/git_prompt.sh"
  [ "$DEV_PATH" == "test" ]
}

@test "is_git_repository determines if currently in a git repo" {
  echo $(is_git_repository)
  [ "$(is_git_repository)" == "yes" ]
  mv .git .git.original
  [ "$(is_git_repository)" == "no" ]
  mv .git.original .git
}

@test "wd_without_dev_path removes the $DEV_PATH from the working directory" {
  [ "$(wd_without_dev_path)" == "baptize" ]
}

@test "git_stats_count returns a modified count in a formatted status block" {
  skip
  local status_prompt
  local modified=`echo "$status" | egrep -o "^\s?M" | wc -l | tr -d ' '`
  local added=`echo "$status" | egrep -o "^\s?\?\?" | wc -l | tr -d ' '`
  local deleted=`echo "$status" | egrep -o "^\s?D" | wc -l | tr -d ' '`
  local seperator=$(eval $GSTATS_SEPERATOR_COLOR ':')
  status_prompt+=$(eval $GMODIFIED_COLOR '$modified')
  status_prompt+="${seperator}"
  status_prompt+=$(eval $GADDED_COLOR '$added')
  status_prompt+="${seperator}"
  status_prompt+=$(eval $GDELETED_COLOR '$deleted')

  [ $(ngit_stats_count "$( echo -e "M somefile\nD someotherfile\n?? some new file" )") == "$status_prompt" ]
}

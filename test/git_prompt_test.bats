#!/usr/bin/env bats

load test_helper

@test "it has a show stats variable" {
  [ -n "$GSHOW_STATS" ]
}

@test "it defers if a show stats variable is already set" {
  GSHOW_STATS="no"
  source "$ROOT/lib/git_prompt.sh"
  [ "$GSHOW_STATS" == "no" ]
}

@test "it has a short path variable" {
  [ -n "$GSHORT_PATH" ]
}

@test "it defers if a short path variable is already set" {
  GSHORT_PATH="no"
  source "$ROOT/lib/git_prompt.sh"
  [ "$GSHORT_PATH" == "no" ]
}

@test "it has a dirty color variable" {
  [ -n "$GDIRTY_COLOR" ]
}

@test "it defers if a dirty color variable is already set" {
  GDIRTY_COLOR=""
  source "$ROOT/lib/git_prompt.sh"
  [ "$GDIRTY_COLOR" == "" ]
}

@test "it has a clean color variable" {
  [ -n "$GCLEAN_COLOR" ]
}

@test "it defers if a clean color variable is already set" {
  GCLEAN_COLOR=""
  source "$ROOT/lib/git_prompt.sh"
  [ "$GCLEAN_COLOR" == "" ]
}

@test "it has a modified color variable" {
  [ -n "$GMODIFIED_COLOR" ]
}

@test "it defers a modified color variable is already set" {
  GMODIFIED_COLOR=""
  source "$ROOT/lib/git_prompt.sh"
  [ "$GMODIFIED_COLOR" == "" ]
}

@test "it has an added color variable" {
  [ -n "$GADDED_COLOR" ]
}

@test "it defers if an added color variable is already set" {
  GADDED_COLOR=""
  source "$ROOT/lib/git_prompt.sh"
  [ "$GADDED_COLOR" == "" ]
}

@test "it has a deleted color variable" {
  [ -n "$GDELETED_COLOR" ]
}

@test "it defers if a deleted color variable is already set" {
  GDELETED_COLOR=""
  source "$ROOT/lib/git_prompt.sh"
  [ "$GDELETED_COLOR" == "" ]
}

@test "it has a stats separator color variable" {
  [ -n "$GSTATS_SEPERATOR_COLOR" ]
}

@test "it defers if a stats separator color variable is already set" {
  GSTATS_SEPERATOR_COLOR=""
  source "$ROOT/lib/git_prompt.sh"
  [ "$GSTATS_SEPERATOR_COLOR" == "" ]
}

@test "it has a pull icon" {
  [ "$GPULL_ICON" == " ⇣ " ]
}

@test "it defers if a pull icon is already set" {
  GPULL_ICON=""
  source "$ROOT/lib/git_prompt.sh"
  [ "$GPULL_ICON" == "" ]
}

@test "it has a push icon" {
  [ "$GPUSH_ICON" == " ⇡ " ]
}

@test "it defers if a push icon is already set" {
  GPUSH_ICON=""
  source "$ROOT/lib/git_prompt.sh"
  [ "$GPUSH_ICON" == "" ]
}

@test "it has a clean icon" {
  [ "$GCLEAN_ICON" == " ✓ " ]
}

@test "it defers if a clean icon is already set" {
  GCLEAN_ICON=""
  source "$ROOT/lib/git_prompt.sh"
  [ "$GCLEAN_ICON" == "" ]
}

@test "is_git_repository determines if currently in a git repo" {
  run is_git_repository
  [ "$status" -eq 0 ]
}

@test "git_stats_count returns a modified count in a formatted status block" {
  local expected_prompt
  local separator="\[${GSTATS_SEPERATOR_COLOR}\]:"
  expected_prompt+="\[$GMODIFIED_COLOR\] 1"
  expected_prompt+="$separator"
  expected_prompt+="\[$GADDED_COLOR\]1"
  expected_prompt+="$separator"
  expected_prompt+="\[$GDELETED_COLOR\]1\[$CEND\]"

  run git_stats_count " M something\n D something\n?? something"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "$expected_prompt"` ]
}

@test "git_stats_count returns an empty string when clean" {
  run git_stats_count ""
  [ "$status" -eq 0 ]
  [ "$output" = "" ]
}

@test "git_stats_count returns an empty_string when show status is no" {
  GSHOW_STATS="no"
  run git_stats_count " M something\n D something\n?? something"
  [ "$status" -eq 0 ]
  [ "$output" = "" ]
}

@test "git_status_icon returns the clean icon when the repo is clean" {
  run git_status_icon "working directory clean"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "$GCLEAN_COLOR$GCLEAN_ICON"` ]
}

@test "git_status_icon returns the push icon when the repo is dirty" {
  run git_status_icon ""
  [ "$status" -eq 0 ]
  [ "$output" = `printf "$GMODIFIED_COLOR$GPUSH_ICON"` ]
}

@test "git_status_icon returns the pull icon and the clean icon when the remote has changes but the working directory is clean" {
  run git_status_icon "Your branch is behind but your working directory clean"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "$GCLEAN_COLOR$GCLEAN_ICON$GMODIFIED_COLOR$GPULL_ICON$CEND"` ]
}

@test "git_status_icon returns the pull icon and the push icon when the remote has changes and the working directory is dirty" {
  run git_status_icon "Your branch is behind"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "$GMODIFIED_COLOR$GPUSH_ICON$GMODIFIED_COLOR$GPULL_ICON$CEND"` ]
}

@test "git_project_name function returns the git project folder name" {
  run git_project_name
  [ "$status" -eq 0 ]
  [ "$output" = "baptize" ]
}

@test "git_wd removes everything preceding the git root in the path" {
  run git_wd
  [ "$status" -eq 0 ]
  [ "$output" = " baptize " ]
}

@test "git_wd returns the PWD when short path is no" {
  GSHORT_PATH="no"
  run git_wd
  [ "$status" -eq 0 ]
  [ "$output" = " $PWD " ]
}

#!/usr/bin/env bats

load test_helper

MOCK_STATUS="## master\nA  something\n M something\n D something\n?? something"
MOCK_BEHIND_STATUS="## master...origin/master [behind 1]\nA  something\n M something\n D something\n?? something"

@test "it has a show stats variable" {
  [ "$GSHOW_STATS" == "yes" ]
}

@test "it defers if a show stats variable is already set" {
  GSHOW_STATS="no"
  source "$ROOT/lib/git_prompt.sh"
  [ "$GSHOW_STATS" == "no" ]
}

@test "it has a short path variable" {
  [ "$GSHORT_PATH" == "yes" ]
}

@test "it defers if a short path variable is already set" {
  GSHORT_PATH="no"
  source "$ROOT/lib/git_prompt.sh"
  [ "$GSHORT_PATH" == "no" ]
}

@test "it has a clean color variable" {
  [ "$GCLEAN_COLOR" == "$BLUEF_GREENB" ]
}

@test "it defers if a clean color variable is already set" {
  GCLEAN_COLOR=""
  source "$ROOT/lib/git_prompt.sh"
  [ "$GCLEAN_COLOR" == "" ]
}

@test "it has a modified color variable" {
  [ "$GMODIFIED_COLOR" == "$BLUEF_YELLOWB" ]
}

@test "it defers a modified color variable is already set" {
  GMODIFIED_COLOR=""
  source "$ROOT/lib/git_prompt.sh"
  [ "$GMODIFIED_COLOR" == "" ]
}

@test "it has an added color variable" {
  [ "$GADDED_COLOR" == "$GREENF_YELLOWB" ]
}

@test "it defers if an added color variable is already set" {
  GADDED_COLOR=""
  source "$ROOT/lib/git_prompt.sh"
  [ "$GADDED_COLOR" == "" ]
}

@test "it has a deleted color variable" {
  [ "$GDELETED_COLOR" == "$REDF_YELLOWB" ]
}

@test "it defers if a deleted color variable is already set" {
  GDELETED_COLOR=""
  source "$ROOT/lib/git_prompt.sh"
  [ "$GDELETED_COLOR" == "" ]
}

@test "it has a stats separator variable" {
  [ $GSTATS_SEPARATOR == ":" ]
}

@test "it defers if a stats separator variable is already set" {
  GSTATS_SEPARATOR=""
  source "$ROOT/lib/git_prompt.sh"
  [ "$GSTATS_SEPARATOR" == "" ]
}

@test "it has a stats separator color variable" {
  [ "$GSTATS_SEPARATOR_COLOR" == "$BLUEF_YELLOWB" ]
}

@test "it defers if a stats separator color variable is already set" {
  GSTATS_SEPARATOR_COLOR=""
  source "$ROOT/lib/git_prompt.sh"
  [ "$GSTATS_SEPARATOR_COLOR" == "" ]
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
  GSTATS_COUNT=""
  expected_prompt+="\[$GMODIFIED_COLOR\] 1"
  expected_prompt+="\[$GSTATS_SEPARATOR_COLOR\]$GSTATS_SEPARATOR"
  expected_prompt+="\[$GADDED_COLOR\]2"
  expected_prompt+="\[$GSTATS_SEPARATOR_COLOR\]$GSTATS_SEPARATOR"
  expected_prompt+="\[$GDELETED_COLOR\]1 \[$CEND\]"
  git_stats_count "$MOCK_STATUS"

  [ "$GSTATS_COUNT" = "$expected_prompt" ]
}

@test "git_stats_count returns an empty string when clean" {
  run git_stats_count ""
  [ "$status" -eq 0 ]
  [ "$output" = "" ]
}

@test "git_stats_count returns an empty_string when show status is no" {
  GSHOW_STATS="no"
  run git_stats_count "$MOCK_STATUS"
  [ "$status" -eq 0 ]
  [ "$output" = "" ]
}

@test "git_status_icon returns the clean icon when the repo is clean" {
  git_status_icon "## master"
  [ "$GSTATUS_ICON" = "$GCLEAN_COLOR$GCLEAN_ICON" ]
}

@test "git_status_icon returns the push icon when the repo is dirty" {
  git_status_icon "$MOCK_STATUS"
  [ "$GSTATUS_ICON" = "$GMODIFIED_COLOR$GPUSH_ICON" ]
}

@test "git_status_icon returns the pull icon and the clean icon when the remote has changes but the working directory is clean" {
  git_status_icon "## master...origin/master [behind 1]"
  [ "$GSTATUS_ICON" = "$GMODIFIED_COLOR$GPULL_ICON$CEND$GCLEAN_COLOR$GCLEAN_ICON" ]
}

@test "git_status_icon returns the pull icon and the push icon when the remote has changes and the working directory is dirty" {
  git_status_icon "$MOCK_BEHIND_STATUS"
  [ "$GSTATUS_ICON" = "$GMODIFIED_COLOR$GPUSH_ICON$GMODIFIED_COLOR$GPULL_ICON$CEND" ]
}

@test "git_project_name function returns the git project folder name" {
  git_project_name
  [ "$GPROJECT_NAME" = "baptize" ]
}

@test "git_wd removes everything preceding the git root in the path" {
  git_wd
  [ "$GWD" = " baptize " ]
}

@test "git_wd returns the PWD when short path is no" {
  GSHORT_PATH="no"
  git_wd
  [ "$GWD" = " \w " ]
}

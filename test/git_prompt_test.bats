#!/usr/bin/env bats

load test_helper

@test "it has a dirty color variable" {
  [ -n "$GDIRTY_COLOR" ]
}

@test "it defers if a dirty color variable is already set" {
  GDIRTY_COLOR="test"
  source "$ROOT/lib/git_prompt.sh"
  [ "$GDIRTY_COLOR" == "test" ]
}

@test "it has a clean color variable" {
  [ -n "$GCLEAN_COLOR" ]
}

@test "it defers if a clean color variable is already set" {
  GCLEAN_COLOR="test"
  source "$ROOT/lib/git_prompt.sh"
  [ "$GCLEAN_COLOR" == "test" ]
}

@test "it has a modified color variable" {
  [ -n "$GMODIFIED_COLOR" ]
}

@test "it defers a modified color variable is already set" {
  GMODIFIED_COLOR="test"
  source "$ROOT/lib/git_prompt.sh"
  [ "$GMODIFIED_COLOR" == "test" ]
}

@test "it has an added color variable" {
  [ -n "$GADDED_COLOR" ]
}

@test "it defers if an added color variable is already set" {
  GADDED_COLOR="test"
  source "$ROOT/lib/git_prompt.sh"
  [ "$GADDED_COLOR" == "test" ]
}

@test "it has a deleted color variable" {
  [ -n "$GDELETED_COLOR" ]
}

@test "it defers if a deleted color variable is already set" {
  GDELETED_COLOR="test"
  source "$ROOT/lib/git_prompt.sh"
  [ "$GDELETED_COLOR" == "test" ]
}

@test "it has a stats separator color variable" {
  [ -n "$GSTATS_SEPERATOR_COLOR" ]
}

@test "it defers if a stats separator color variable is already set" {
  GSTATS_SEPERATOR_COLOR="test"
  source "$ROOT/lib/git_prompt.sh"
  [ "$GSTATS_SEPERATOR_COLOR" == "test" ]
}

@test "it has a development path variable" {
  [ -n "$DEV_PATH" ]
}

@test "it defers if the development path is already set" {
  DEV_PATH="test"
  source "$ROOT/lib/git_prompt.sh"
  [ "$DEV_PATH" == "test" ]
}

@test "it has a pull icon" {
  [ "$GPULL_ICON" == "\[ ⇣ \]" ]
}

@test "it defers if a pull icon is already set" {
  GPULL_ICON="test"
  source "$ROOT/lib/git_prompt.sh"
  [ "$GPULL_ICON" == "test" ]
}

@test "it has a push icon" {
  [ "$GPUSH_ICON" == "\[ ⇡ \]" ]
}

@test "it defers if a push icon is already set" {
  GPUSH_ICON="test"
  source "$ROOT/lib/git_prompt.sh"
  [ "$GPUSH_ICON" == "test" ]
}

@test "it has a clean icon" {
  [ "$GCLEAN_ICON" == "\[ ✓ \]" ]
}

@test "it defers if a clean icon is already set" {
  GCLEAN_ICON="test"
  source "$ROOT/lib/git_prompt.sh"
  [ "$GCLEAN_ICON" == "test" ]
}

@test "is_git_repository determines if currently in a git repo" {
  run is_git_repository
  [ "$status" -eq 0 ]
}

@test "wd_without_dev_path removes the $DEV_PATH from the working directory" {
  run wd_without_dev_path
  [ "$status" -eq 0 ]
  [ "$output" = " baptize " ]
}

@test "git_stats_count returns a modified count in a formatted status block" {
  local expected_prompt
  local separator="${GSTATS_SEPERATOR_COLOR}:"
  expected_prompt+="${GMODIFIED_COLOR} 1"
  expected_prompt+="$separator"
  expected_prompt+="${GADDED_COLOR}1"
  expected_prompt+="$separator"
  expected_prompt+="${GDELETED_COLOR}1${CEND}"

  run git_stats_count " M something\n D something\n?? something"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "$expected_prompt"` ]
}

@test "git_stats_count returns an empty string when clean" {
  run git_stats_count ""
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

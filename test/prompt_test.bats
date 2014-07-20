#!/usr/bin/env bats

load test_helper

@test "it sets a prompt color" {
  [ "$PROMPT_COLOR" == "$BLUEF_CYANB" ]
}

@test "it defers if a prompt color variable is already set" {
  PROMPT_COLOR=""
  source "$ROOT/lib/prompt.sh"
  [ "$PROMPT_COLOR" == "" ]
}

@test "it sets an icon color" {
  [ "$PROMPT_ICON_COLOR" == "$CYANF_BLUEB" ]
}

@test "it defers if an icon color variable is already set" {
  PROMPT_ICON_COLOR=""
  source "$ROOT/lib/prompt.sh"
  [ "$PROMPT_ICON_COLOR" == "" ]
}

@test "it sets a star icon" {
  [ "$STAR_ICON" == "\[☆ \]" ]
}

@test "it sets an apple icon" {
  [ "$APPLE_ICON" == "\[  \]" ]
}

@test "it sets a heart icon" {
  [ "$HEART_ICON" == "\[❤︎ \]" ]
}

@test "it sets a prompt arrow" {
  [ "$PROMPT_ARROW" == "\[❯  \]" ]
}

@test "it defers if a prompt arrow variable is already set" {
  PROMPT_ARROW=""
  source "$ROOT/lib/prompt.sh"
  [ "$PROMPT_ARROW" == "" ]
}

@test "it sets a prompt icon variable" {
  [ "$PROMPT_ICON" == "$STAR_ICON" ]
}

@test "it defers if a prompt icon variable is already set" {
  PROMPT_ICON=""
  source "$ROOT/lib/prompt.sh"
  [ "$PROMPT_ICON" == "" ]
}

@test "it sets a prompt content variable" {
  [ "$PROMPT_CONTENT" == " \w " ]
}

@test "it defers if a prompt content variable is already set" {
  PROMPT_CONTENT=""
  source "$ROOT/lib/prompt.sh"
  [ "$PROMPT_CONTENT" == "" ]
}

@test "it sets a prompt variable" {
  [ "$PROMPT" == "$PROMPT_ICON_COLOR$PROMPT_ICON$PROMPT_COLOR$PROMPT_CONTENT$PROMPT_ARROW$CEND" ]
}

@test "it defers if a prompt variable is already set" {
  PROMPT=""
  source "$ROOT/lib/prompt.sh"
  [ "$PROMPT" == "" ]
}

@test "it sets the PS1 to the prompt variable" {
  [ "$PS1" == "$PROMPT" ]
}

@test "it has a prompt 2 color variable" {
  [ "$PROMPT_2_COLOR" == "$YELLOW" ]
}

@test "it defers if a prompt 2 color variable is already set" {
  PROMPT_2_COLOR=""
  source "$ROOT/lib/prompt.sh"
  [ "$PROMPT_2_COLOR" == "" ]
}

@test "it has a prompt 2 arrow variable" {
  [ "$PROMPT_2_ARROW" == "\[❯❯ \]" ]
}

@test "it defers if a prompt 2 color variable is already set" {
  PROMPT_2_ARROW=""
  source "$ROOT/lib/prompt.sh"
  [ "$PROMPT_2_ARROW" == "" ]
}

@test "it sets a prompt 2 variable" {
  [ "$PROMPT_2" == "$PROMPT_2_COLOR$PROMPT_2_ARROW$CEND" ]
}

@test "it defers if a prompt 2 variable is already set" {
  PROMPT_2=""
  source "$ROOT/lib/prompt.sh"
  [ "$PROMPT_2" == "" ]
}

@test "it sets the PS2 to the prompt 2 variable" {
  [ "$PS2" == "$PROMPT_2" ]
}

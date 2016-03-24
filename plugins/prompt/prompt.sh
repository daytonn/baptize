#!/usr/bin/env bash
BAPTIZE_PROMPT_COLOR="$(eval ${BAPTIZE_PROMPT_FG}f_${BAPTIZE_PROMPT_BG}b)"
BAPTIZE_BAPTIZE_PROMPT_ICON_COLOR="$(eval ${BAPTIZE_PROMPT_BG}f_${BAPTIZE_PROMPT_FG}b)"
BAPTIZE_PROMPT_END_COLOR="$(eval ${BAPTIZE_PROMPT_BG})"
BAPTIZE_PROMPT2_COLOR="$(eval "$BAPTIZE_PROMPT2_COLOR")"
if [[ -z ${BAPTIZE_PROMPT_CONTENT+x} ]]; then
  BAPTIZE_PROMPT_CONTENT=" \w "
fi

if [[ -z ${BAPTIZE_PROMPT_2_ARROW+x} ]]; then
  BAPTIZE_PROMPT_2_ARROW="❯❯ "
fi

function __baptize_set_prompt {
  PS1=""
  __baptize_segment "$BAPTIZE_PROMPT_ICON" "$BAPTIZE_PROMPT_BG" "$BAPTIZE_PROMPT_FG" "$BAPTIZE_PROMPT_BG"
  __baptize_segment "$BAPTIZE_PROMPT_CONTENT " "$BAPTIZE_PROMPT_FG" "$BAPTIZE_PROMPT_BG"
  PS1+=" "
}

function __baptize_set_prompt2 {
  PS2="\\[$BAPTIZE_PROMPT2_COLOR\\]${BAPTIZE_PROMPT_2_ARROW}\\[$CEND\\] "
}

__baptize_set_prompt
__baptize_set_prompt2

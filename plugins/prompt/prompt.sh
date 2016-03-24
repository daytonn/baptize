PROMPT_COLOR="$(eval ${PROMPT_FG}f_${PROMPT_BG}b)"
PROMPT_ICON_COLOR="$(eval ${PROMPT_BG}f_${PROMPT_FG}b)"
PROMPT_END_COLOR="$(eval ${PROMPT_BG})"
PROMPT2_COLOR="$(eval "$PROMPT2_COLOR")"
if [[ -z ${PROMPT_CONTENT+x} ]]; then
  PROMPT_CONTENT=" \w "
fi

if [[ -z ${PROMPT_2_ARROW+x} ]]; then
  PROMPT_2_ARROW="❯❯ "
fi

function __baptize_set_prompt {
  PS1=""
  __baptize_segment "$PROMPT_ICON" "$PROMPT_BG" "$PROMPT_FG" "$PROMPT_BG"
  __baptize_segment "$PROMPT_CONTENT " "$PROMPT_FG" "$PROMPT_BG"
  PS1+=" "
}

function __baptize_set_prompt2 {
  PS2="\\[$PROMPT2_COLOR\\]${PROMPT_2_ARROW}\\[$CEND\\] "
}

__baptize_set_prompt
__baptize_set_prompt2

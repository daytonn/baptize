PROMPT_COLOR="$(eval ${PROMPT_FG}f_${PROMPT_BG}b)"
PROMPT_ICON_COLOR="$(eval ${PROMPT_BG}f_${PROMPT_FG}b)"
PROMPT_END_COLOR="$(eval ${PROMPT_BG})"
PROMPT_2_COLOR="$(eval ${PROMPT_BG})"

if [[ -z ${PROMPT_CONTENT+x} ]]; then
  PROMPT_CONTENT=" \w "
fi

if [[ -z ${PROMPT_2_ARROW+x} ]]; then
  PROMPT_2_ARROW="❯❯ "
fi

function set_prompt {
  PS1="\\[$PROMPT_ICON_COLOR\\]${PROMPT_ICON}\\[$PROMPT_COLOR\\]${PROMPT_CONTENT}\\[$PROMPT_END_COLOR\\]\\[$CEND\\] "
}

function set_prompt2 {
  PS2="\\[$PROMPT_2_COLOR\\]${PROMPT_2_ARROW}\\[$CEND\\] "
}

set_prompt
set_prompt2

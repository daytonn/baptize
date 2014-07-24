STAR_ICON="☆ "
APPLE_ICON="  "
HEART_ICON="❤︎ "

if [[ -z ${PROMPT_ARROW+x} ]]; then
  PROMPT_ARROW="❯ "
fi

if [[ -z ${PROMPT_COLOR+x} ]]; then
  PROMPT_COLOR="$BLUEF_CYANB"
fi

if [[ -z ${PROMPT_ICON_COLOR+x} ]]; then
  PROMPT_ICON_COLOR="$CYANF_BLUEB"
fi

if [[ -z ${PROMPT_ICON+x} ]]; then
  PROMPT_ICON="$STAR_ICON"
fi

if [[ -z ${PROMPT_CONTENT+x} ]]; then
  PROMPT_CONTENT=" \w "
fi

if [[ -z ${PROMPT_2_COLOR+x} ]]; then
  PROMPT_2_COLOR="$YELLOW"
fi

if [[ -z ${PROMPT_2_ARROW+x} ]]; then
  PROMPT_2_ARROW="❯❯ "
fi

if [[ -z ${PROMPT+x} ]]; then
  PROMPT="\\[$PROMPT_ICON_COLOR\\]\\[$PROMPT_ICON\\]\\[$PROMPT_COLOR\\]$PROMPT_CONTENT\\[$PROMPT_ARROW\\]\\[$CEND\\] "
fi

if [[ -z ${PROMPT_2+x} ]]; then
  PROMPT_2="\\[$PROMPT_2_COLOR\\]\\[$PROMPT_2_ARROW\\]\\[$CEND\\] "
fi

function set_prompt {
  PS1="\\[$PROMPT_ICON_COLOR\\]\\[$PROMPT_ICON\\]\\[$PROMPT_COLOR\\]$PROMPT_CONTENT\\[$PROMPT_ARROW\\]\\[$CEND\\] "
}

PS1="$PROMPT"
PS2="$PROMPT_2"

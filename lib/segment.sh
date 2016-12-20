#!/usr/bin/env bash
if [[ -z $BAPTIZE_POWERLINE_THEME ]]; then
  BAPTIZE_POWERLINE_THEME="yes"
fi

function __baptize_segment {
  local content
  local sep
  local fgr
  local bgr

  content="$1"
  fgr="$2"
  bgr="$3"
  sep=""

  if [[ "$BAPTIZE_POWERLINE_THEME" == "yes" ]]; then
    sep=""
  fi

  color="$(eval "$fgr"f_"$bgr"b)"

  if [[ -z $4 ]]; then
    sep_color="$(eval "$bgr")"
  else
    sep_color="$(eval "$bgr"f_"$4"b)"
  fi

  PS1+="\\[$color\\]${content}\\[$sep_color\\]$sep\\[$CEND\\]"
}

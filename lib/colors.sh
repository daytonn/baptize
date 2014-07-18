CEND="\[\033[0m\]"
BLACK="\[\033[0;30m\]"
WHITE="\[\033[37m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
MAGENTA="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"

BLACKB="\[\033[1;30m\]"
WHITEB="\[\033[1;1m\]"
REDB="\[\033[1;31m\]"
GREENB="\[\033[1;32m\]"
YELLOWB="\[\033[1;33m\]"
BLUEB="\[\033[1;34m\]"
MAGENTAB="\[\033[1;35m\]"
CYANB="\[\033[1;36m\]"

WHITEF_BLACKB="\[\033[40;37m\]"
WHITEF_REDB="\[\033[41;37m\]"
WHITEF_GREENB="\[\033[42;37m\]"
WHITEF_YELLOWB="\[\033[43;37m\]"
WHITEF_BLUEB="\[\033[44;37m\]"
WHITEF_MAGENTAB="\[\033[45;37m\]"
WHITEF_CYANB="\[\033[46;37m\]"

BLACKF_BLACKB="\[\033[40;30m\]"
BLACKF_REDB="\[\033[41;30m\]"
BLACKF_GREENB="\[\033[42;30m\]"
BLACKF_YELLOWB="\[\033[43;30m\]"
BLACKF_BLUEB="\[\033[44;30m\]"
BLACKF_MAGENTAB="\[\033[45;30m\]"
BLACKF_CYANB="\[\033[46;30m\]"

REDF_BLACKB="\[\033[40;31m\]"
REDF_REDB="\[\033[41;31m\]"
REDF_GREENB="\[\033[42;31m\]"
REDF_YELLOWB="\[\033[43;31m\]"
REDF_BLUEB="\[\033[44;31m\]"
REDF_MAGENTAB="\[\033[45;31m\]"
REDF_CYANB="\[\033[46;31m\]"

GREENF_BLACKB="\[\033[40;32m\]"
GREENF_REDB="\[\033[41;32m\]"
GREENF_GREENB="\[\033[42;32m\]"
GREENF_YELLOWB="\[\033[43;32m\]"
GREENF_BLUEB="\[\033[44;32m\]"
GREENF_MAGENTAB="\[\033[45;32m\]"
GREENF_CYANB="\[\033[46;32m\]"

YELLOWF_BLACKB="\[\033[40;33m\]"
YELLOWF_REDB="\[\033[41;33m\]"
YELLOWF_GREENB="\[\033[42;33m\]"
YELLOWF_YELLOWB="\[\033[43;33m\]"
YELLOWF_BLUEB="\[\033[44;33m\]"
YELLOWF_MAGENTAB="\[\033[45;33m\]"
YELLOWF_CYANB="\[\033[46;33m\]"

BLUEF_BLACKB="\[\033[40;34m\]"
BLUEF_REDB="\[\033[41;34m\]"
BLUEF_GREENB="\[\033[42;34m\]"
BLUEF_YELLOWB="\[\033[43;34m\]"
BLUEF_BLUEB="\[\033[44;34m\]"
BLUEF_MAGENTAB="\[\033[45;34m\]"
BLUEF_CYANB="\[\033[46;34m\]"

MAGENTAF_BLACKB="\[\033[40;35m\]"
MAGENTAF_REDB="\[\033[41;35m\]"
MAGENTAF_GREENB="\[\033[42;35m\]"
MAGENTAF_YELLOWB="\[\033[43;35m\]"
MAGENTAF_BLUEB="\[\033[44;35m\]"
MAGENTAF_MAGENTAB="\[\033[45;35m\]"
MAGENTAF_CYANB="\[\033[46;35m\]"

CYANF_BLACKB="\[\033[40;36m\]"
CYANF_REDB="\[\033[41;36m\]"
CYANF_GREENB="\[\033[42;36m\]"
CYANF_YELLOWB="\[\033[43;36m\]"
CYANF_BLUEB="\[\033[44;36m\]"
CYANF_MAGENTAB="\[\033[45;36m\]"
CYANF_CYANB="\[\033[46;36m\]"

function black {
  printf "${BLACK}${1}${CEND}"
}

function blackb {
  printf "${BLACKB}${1}${CEND}"
}

function white {
  printf "${WHITE}${1}${CEND}"
}

function whiteb {
  printf "${WHITEB}${1}${CEND}"
}

function red {
  printf "${RED}${1}${CEND}"
}

function redb {
  printf "${REDB}${1}${CEND}"
}

function green {
  printf "${GREEN}${1}${CEND}"
}

function greenb {
  printf "${GREENB}${1}${CEND}"
}

function yellow {
  printf "${YELLOW}${1}${CEND}"
}

function yellowb {
  printf "${YELLOWB}${1}${CEND}"
}

function blue {
  local text="${BLUE}${1}${CEND}"
  printf "$text"
}

function blueb {
  printf "${BLUEB}${1}${CEND}"
}

function magenta {
  printf "${MAGENTA}${1}${CEND}"
}

function magentab {
  printf "${MAGENTAB}${1}${CEND}"
}

function cyan {
  printf "${CYAN}${1}${CEND}"
}

function cyanb {
  printf "${CYANB}${1}${CEND}"
}

function whitef_blackb {
  printf "${WHITEF_BLACKB}${1}${CEND}"
}

function whitef_redb {
  printf "${WHITEF_REDB}${1}${CEND}"
}

function whitef_greenb {
  printf "${WHITEF_GREENB}${1}${CEND}"
}

function whitef_yellowb {
  printf "${WHITEF_YELLOWB}${1}${CEND}"
}

function whitef_blueb {
  printf "${WHITEF_BLUEB}${1}${CEND}"
}

function whitef_magentab {
  printf "${WHITEF_MAGENTAB}${1}${CEND}"
}

function whitef_lightblueb {
  printf "${WHITEF_CYANB}${1}${CEND}"
}

function blackf_blackb {
  printf "${BLACKF_BLACKB}${1}${CEND}"
}

function blackf_redb {
  printf "${BLACKF_REDB}${1}${CEND}"
}

function blackf_greenb {
  printf "${BLACKF_GREENB}${1}${CEND}"
}

function blackf_yellowb {
  printf "${BLACKF_YELLOWB}${1}${CEND}"
}

function blackf_blueb {
  printf "${BLACKF_BLUEB}${1}${CEND}"
}

function blackf_magentab {
  printf "${BLACKF_MAGENTAB}${1}${CEND}"
}

function blackf_lightblueb {
  printf "${BLACKF_CYANB}${1}${CEND}"
}

function redf_blackb {
  printf "${REDF_BLACKB}${1}${CEND}"
}

function redf_redb {
  printf "${REDF_REDB}${1}${CEND}"
}

function redf_greenb {
  printf "${REDF_GREENB}${1}${CEND}"
}

function redf_yellowb {
  printf "${REDF_YELLOWB}${1}${CEND}"
}

function redf_blueb {
  printf "${REDF_BLUEB}${1}${CEND}"
}

function redf_magentab {
  printf "${REDF_MAGENTAB}${1}${CEND}"
}

function redf_lightblueb {
  printf "${REDF_CYANB}${1}${CEND}"
}

function greenf_blackb {
  printf "${GREENF_BLACKB}${1}${CEND}"
}

function greenf_redb {
  printf "${GREENF_REDB}${1}${CEND}"
}

function greenf_greenb {
  printf "${GREENF_GREENB}${1}${CEND}"
}

function greenf_yellowb {
  printf "${GREENF_YELLOWB}${1}${CEND}"
}

function greenf_blueb {
  printf "${GREENF_BLUEB}${1}${CEND}"
}

function greenf_magentab {
  printf "${GREENF_MAGENTAB}${1}${CEND}"
}

function greenf_lightblueb {
  printf "${GREENF_CYANB}${1}${CEND}"
}

function yellowf_blackb {
  printf "${YELLOWF_BLACKB}${1}${CEND}"
}

function yellowf_redb {
  printf "${YELLOWF_REDB}${1}${CEND}"
}

function yellowf_greenb {
  printf "${YELLOWF_GREENB}${1}${CEND}"
}

function yellowf_yellowb {
  printf "${YELLOWF_YELLOWB}${1}${CEND}"
}

function yellowf_blueb {
  printf "${YELLOWF_BLUEB}${1}${CEND}"
}

function yellowf_magentab {
  printf "${YELLOWF_MAGENTAB}${1}${CEND}"
}

function yellowf_lightblueb {
  printf "${YELLOWF_CYANB}${1}${CEND}"
}

function bluef_blackb {
  printf "${BLUEF_BLACKB}${1}${CEND}"
}

function bluef_redb {
  printf "${BLUEF_REDB}${1}${CEND}"
}

function bluef_greenb {
  printf "${BLUEF_GREENB}${1}${CEND}"
}

function bluef_yellowb {
  printf "${BLUEF_YELLOWB}${1}${CEND}"
}

function bluef_blueb {
  printf "${BLUEF_BLUEB}${1}${CEND}"
}

function bluef_magentab {
  printf "${BLUEF_MAGENTAB}${1}${CEND}"
}

function bluef_lightblueb {
  printf "${BLUEF_CYANB}${1}${CEND}"
}

function magentaf_blackb {
  printf "${MAGENTAF_BLACKB}${1}${CEND}"
}

function magentaf_redb {
  printf "${MAGENTAF_REDB}${1}${CEND}"
}

function magentaf_greenb {
  printf "${MAGENTAF_GREENB}${1}${CEND}"
}

function magentaf_yellowb {
  printf "${MAGENTAF_YELLOWB}${1}${CEND}"
}

function magentaf_blueb {
  printf "${MAGENTAF_BLUEB}${1}${CEND}"
}

function magentaf_magentab {
  printf "${MAGENTAF_MAGENTAB}${1}${CEND}"
}

function magentaf_lightblueb {
  printf "${MAGENTAF_CYANB}${1}${CEND}"
}

function cyanf_blackb {
  printf "${CYANF_BLACKB}${1}${CEND}"
}

function cyanf_redb {
  printf "${CYANF_REDB}${1}${CEND}"
}

function cyanf_greenb {
  printf "${CYANF_GREENB}${1}${CEND}"
}

function cyanf_yellowb {
  printf "${CYANF_YELLOWB}${1}${CEND}"
}

function cyanf_blueb {
  printf "${CYANF_BLUEB}${1}${CEND}"
}

function cyanf_magentab {
  printf "${CYANF_MAGENTAB}${1}${CEND}"
}

function cyanf_lightblueb {
  printf "${CYANF_CYANB}${1}${CEND}"
}

function colors {
  black "black\n"
  blackb "blackb\n"
  white "white\n"
  whiteb "whiteb\n"
  red "red\n"
  redb "redb\n"
  green "green\n"
  greenb "greenb\n"
  yellow "yellow\n"
  yellowb "yellowb\n"
  blue "blue\n"
  blueb "blueb\n"
  magenta "magenta\n"
  magentab "magentab\n"
  cyan "cyan\n"
  cyanb "cyanb\n"
  whitef_blackb "whitef_blackb\n"
  whitef_redb "whitef_redb\n"
  whitef_greenb "whitef_greenb\n"
  whitef_yellowb "whitef_yellowb\n"
  whitef_blueb "whitef_blueb\n"
  whitef_magentab "whitef_magentab\n"
  whitef_lightblueb "whitef_lightblueb\n"
  blackf_blackb "blackf_blackb\n"
  blackf_redb "blackf_redb\n"
  blackf_greenb "blackf_greenb\n"
  blackf_yellowb "blackf_yellowb\n"
  blackf_blueb "blackf_blueb\n"
  blackf_magentab "blackf_magentab\n"
  blackf_lightblueb "blackf_lightblueb\n"
  redf_blackb "redf_blackb\n"
  redf_redb "redf_redb\n"
  redf_greenb "redf_greenb\n"
  redf_yellowb "redf_yellowb\n"
  redf_blueb "redf_blueb\n"
  redf_magentab "redf_magentab\n"
  redf_lightblueb "redf_lightblueb\n"
  greenf_blackb "greenf_blackb\n"
  greenf_redb "greenf_redb\n"
  greenf_greenb "greenf_greenb\n"
  greenf_yellowb "greenf_yellowb\n"
  greenf_blueb "greenf_blueb\n"
  greenf_magentab "greenf_magentab\n"
  greenf_lightblueb "greenf_lightblueb\n"
  yellowf_blackb "yellowf_blackb\n"
  yellowf_redb "yellowf_redb\n"
  yellowf_greenb "yellowf_greenb\n"
  yellowf_yellowb "yellowf_yellowb\n"
  yellowf_blueb "yellowf_blueb\n"
  yellowf_magentab "yellowf_magentab\n"
  yellowf_lightblueb "yellowf_lightblueb\n"
  bluef_blackb "bluef_blackb\n"
  bluef_redb "bluef_redb\n"
  bluef_greenb "bluef_greenb\n"
  bluef_yellowb "bluef_yellowb\n"
  bluef_blueb "bluef_blueb\n"
  bluef_magentab "bluef_magentab\n"
  bluef_lightblueb "bluef_lightblueb\n"
  magentaf_blackb "magentaf_blackb\n"
  magentaf_redb "magentaf_redb\n"
  magentaf_greenb "magentaf_greenb\n"
  magentaf_yellowb "magentaf_yellowb\n"
  magentaf_blueb "magentaf_blueb\n"
  magentaf_magentab "magentaf_magentab\n"
  magentaf_lightblueb "magentaf_lightblueb\n"
  cyanf_blackb "cyanf_blackb\n"
  cyanf_redb "cyanf_redb\n"
  cyanf_greenb "cyanf_greenb\n"
  cyanf_yellowb "cyanf_yellowb\n"
  cyanf_blueb "cyanf_blueb\n"
  cyanf_magentab "cyanf_magentab\n"
  cyanf_lightblueb "cyanf_lightblueb\n"
  tput sgr0
}

function colortest {
  if [[ -n "$1" ]]; then
    T="$1"
  fi
  T='gYw'   # The test text

  echo -e "\n                 40m     41m     42m     43m\
       44m     45m     46m     47m";

  for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
             '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
             '  36m' '1;36m' '  37m' '1;37m';
    do FG=${FGs// /}
    echo -en " $FGs \033[$FG  $T  "
    for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
      do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
    done
    echo;
  done
  echo
}

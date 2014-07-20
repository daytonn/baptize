CEND="\033[0m"
BLACK="\033[0;30m"
WHITE="\033[37m"
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
MAGENTA="\033[0;35m"
CYAN="\033[0;36m"

BLACKB="\033[1;30m"
WHITEB="\033[1;1m"
REDB="\033[1;31m"
GREENB="\033[1;32m"
YELLOWB="\033[1;33m"
BLUEB="\033[1;34m"
MAGENTAB="\033[1;35m"
CYANB="\033[1;36m"

WHITEF_BLACKB="\033[40;37m"
WHITEF_REDB="\033[41;37m"
WHITEF_GREENB="\033[42;37m"
WHITEF_YELLOWB="\033[43;37m"
WHITEF_BLUEB="\033[44;37m"
WHITEF_MAGENTAB="\033[45;37m"
WHITEF_CYANB="\033[46;37m"

BLACKF_BLACKB="\033[40;30m"
BLACKF_REDB="\033[41;30m"
BLACKF_GREENB="\033[42;30m"
BLACKF_YELLOWB="\033[43;30m"
BLACKF_BLUEB="\033[44;30m"
BLACKF_MAGENTAB="\033[45;30m"
BLACKF_CYANB="\033[46;30m"

REDF_BLACKB="\033[40;31m"
REDF_REDB="\033[41;31m"
REDF_GREENB="\033[42;31m"
REDF_YELLOWB="\033[43;31m"
REDF_BLUEB="\033[44;31m"
REDF_MAGENTAB="\033[45;31m"
REDF_CYANB="\033[46;31m"

GREENF_BLACKB="\033[40;32m"
GREENF_REDB="\033[41;32m"
GREENF_GREENB="\033[42;32m"
GREENF_YELLOWB="\033[43;32m"
GREENF_BLUEB="\033[44;32m"
GREENF_MAGENTAB="\033[45;32m"
GREENF_CYANB="\033[46;32m"

YELLOWF_BLACKB="\033[40;33m"
YELLOWF_REDB="\033[41;33m"
YELLOWF_GREENB="\033[42;33m"
YELLOWF_YELLOWB="\033[43;33m"
YELLOWF_BLUEB="\033[44;33m"
YELLOWF_MAGENTAB="\033[45;33m"
YELLOWF_CYANB="\033[46;33m"

BLUEF_BLACKB="\033[40;34m"
BLUEF_REDB="\033[41;34m"
BLUEF_GREENB="\033[42;34m"
BLUEF_YELLOWB="\033[43;34m"
BLUEF_BLUEB="\033[44;34m"
BLUEF_MAGENTAB="\033[45;34m"
BLUEF_CYANB="\033[46;34m"

MAGENTAF_BLACKB="\033[40;35m"
MAGENTAF_REDB="\033[41;35m"
MAGENTAF_GREENB="\033[42;35m"
MAGENTAF_YELLOWB="\033[43;35m"
MAGENTAF_BLUEB="\033[44;35m"
MAGENTAF_MAGENTAB="\033[45;35m"
MAGENTAF_CYANB="\033[46;35m"

CYANF_BLACKB="\033[40;36m"
CYANF_REDB="\033[41;36m"
CYANF_GREENB="\033[42;36m"
CYANF_YELLOWB="\033[43;36m"
CYANF_BLUEB="\033[44;36m"
CYANF_MAGENTAB="\033[45;36m"
CYANF_CYANB="\033[46;36m"

function black {
  echo -e "${BLACK}${1}${CEND}"
}

function blackb {
  echo -e "${BLACKB}${1}${CEND}"
}

function white {
  echo -e "${WHITE}${1}${CEND}"
}

function whiteb {
  echo -e "${WHITEB}${1}${CEND}"
}

function red {
  echo -e "${RED}${1}${CEND}"
}

function redb {
  echo -e "${REDB}${1}${CEND}"
}

function green {
  echo -e "${GREEN}${1}${CEND}"
}

function greenb {
  echo -e "${GREENB}${1}${CEND}"
}

function yellow {
  echo -e "${YELLOW}${1}${CEND}"
}

function yellowb {
  echo -e "${YELLOWB}${1}${CEND}"
}

function blue {
  echo -e "${BLUE}${1}${CEND}"
}

function blueb {
  echo -e "${BLUEB}${1}${CEND}"
}

function magenta {
  echo -e "${MAGENTA}${1}${CEND}"
}

function magentab {
  echo -e "${MAGENTAB}${1}${CEND}"
}

function cyan {
  echo -e "${CYAN}${1}${CEND}"
}

function cyanb {
  echo -e "${CYANB}${1}${CEND}"
}

function whitef_blackb {
  echo -e "${WHITEF_BLACKB}${1}${CEND}"
}

function whitef_redb {
  echo -e "${WHITEF_REDB}${1}${CEND}"
}

function whitef_greenb {
  echo -e "${WHITEF_GREENB}${1}${CEND}"
}

function whitef_yellowb {
  echo -e "${WHITEF_YELLOWB}${1}${CEND}"
}

function whitef_blueb {
  echo -e "${WHITEF_BLUEB}${1}${CEND}"
}

function whitef_magentab {
  echo -e "${WHITEF_MAGENTAB}${1}${CEND}"
}

function whitef_lightblueb {
  echo -e "${WHITEF_CYANB}${1}${CEND}"
}

function blackf_blackb {
  echo -e "${BLACKF_BLACKB}${1}${CEND}"
}

function blackf_redb {
  echo -e "${BLACKF_REDB}${1}${CEND}"
}

function blackf_greenb {
  echo -e "${BLACKF_GREENB}${1}${CEND}"
}

function blackf_yellowb {
  echo -e "${BLACKF_YELLOWB}${1}${CEND}"
}

function blackf_blueb {
  echo -e "${BLACKF_BLUEB}${1}${CEND}"
}

function blackf_magentab {
  echo -e "${BLACKF_MAGENTAB}${1}${CEND}"
}

function blackf_lightblueb {
  echo -e "${BLACKF_CYANB}${1}${CEND}"
}

function redf_blackb {
  echo -e "${REDF_BLACKB}${1}${CEND}"
}

function redf_redb {
  echo -e "${REDF_REDB}${1}${CEND}"
}

function redf_greenb {
  echo -e "${REDF_GREENB}${1}${CEND}"
}

function redf_yellowb {
  echo -e "${REDF_YELLOWB}${1}${CEND}"
}

function redf_blueb {
  echo -e "${REDF_BLUEB}${1}${CEND}"
}

function redf_magentab {
  echo -e "${REDF_MAGENTAB}${1}${CEND}"
}

function redf_lightblueb {
  echo -e "${REDF_CYANB}${1}${CEND}"
}

function greenf_blackb {
  echo -e "${GREENF_BLACKB}${1}${CEND}"
}

function greenf_redb {
  echo -e "${GREENF_REDB}${1}${CEND}"
}

function greenf_greenb {
  echo -e "${GREENF_GREENB}${1}${CEND}"
}

function greenf_yellowb {
  echo -e "${GREENF_YELLOWB}${1}${CEND}"
}

function greenf_blueb {
  echo -e "${GREENF_BLUEB}${1}${CEND}"
}

function greenf_magentab {
  echo -e "${GREENF_MAGENTAB}${1}${CEND}"
}

function greenf_lightblueb {
  echo -e "${GREENF_CYANB}${1}${CEND}"
}

function yellowf_blackb {
  echo -e "${YELLOWF_BLACKB}${1}${CEND}"
}

function yellowf_redb {
  echo -e "${YELLOWF_REDB}${1}${CEND}"
}

function yellowf_greenb {
  echo -e "${YELLOWF_GREENB}${1}${CEND}"
}

function yellowf_yellowb {
  echo -e "${YELLOWF_YELLOWB}${1}${CEND}"
}

function yellowf_blueb {
  echo -e "${YELLOWF_BLUEB}${1}${CEND}"
}

function yellowf_magentab {
  echo -e "${YELLOWF_MAGENTAB}${1}${CEND}"
}

function yellowf_lightblueb {
  echo -e "${YELLOWF_CYANB}${1}${CEND}"
}

function bluef_blackb {
  echo -e "${BLUEF_BLACKB}${1}${CEND}"
}

function bluef_redb {
  echo -e "${BLUEF_REDB}${1}${CEND}"
}

function bluef_greenb {
  echo -e "${BLUEF_GREENB}${1}${CEND}"
}

function bluef_yellowb {
  echo -e "${BLUEF_YELLOWB}${1}${CEND}"
}

function bluef_blueb {
  echo -e "${BLUEF_BLUEB}${1}${CEND}"
}

function bluef_magentab {
  echo -e "${BLUEF_MAGENTAB}${1}${CEND}"
}

function bluef_lightblueb {
  echo -e "${BLUEF_CYANB}${1}${CEND}"
}

function magentaf_blackb {
  echo -e "${MAGENTAF_BLACKB}${1}${CEND}"
}

function magentaf_redb {
  echo -e "${MAGENTAF_REDB}${1}${CEND}"
}

function magentaf_greenb {
  echo -e "${MAGENTAF_GREENB}${1}${CEND}"
}

function magentaf_yellowb {
  echo -e "${MAGENTAF_YELLOWB}${1}${CEND}"
}

function magentaf_blueb {
  echo -e "${MAGENTAF_BLUEB}${1}${CEND}"
}

function magentaf_magentab {
  echo -e "${MAGENTAF_MAGENTAB}${1}${CEND}"
}

function magentaf_lightblueb {
  echo -e "${MAGENTAF_CYANB}${1}${CEND}"
}

function cyanf_blackb {
  echo -e "${CYANF_BLACKB}${1}${CEND}"
}

function cyanf_redb {
  echo -e "${CYANF_REDB}${1}${CEND}"
}

function cyanf_greenb {
  echo -e "${CYANF_GREENB}${1}${CEND}"
}

function cyanf_yellowb {
  echo -e "${CYANF_YELLOWB}${1}${CEND}"
}

function cyanf_blueb {
  echo -e "${CYANF_BLUEB}${1}${CEND}"
}

function cyanf_magentab {
  echo -e "${CYANF_MAGENTAB}${1}${CEND}"
}

function cyanf_lightblueb {
  echo -e "${CYANF_CYANB}${1}${CEND}"
}

function colors {
  black "black"
  blackb "blackb"
  white "white"
  whiteb "whiteb"
  red "red"
  redb "redb"
  green "green"
  greenb "greenb"
  yellow "yellow"
  yellowb "yellowb"
  blue "blue"
  blueb "blueb"
  magenta "magenta"
  magentab "magentab"
  cyan "cyan"
  cyanb "cyanb"
  whitef_blackb "whitef_blackb"
  whitef_redb "whitef_redb"
  whitef_greenb "whitef_greenb"
  whitef_yellowb "whitef_yellowb"
  whitef_blueb "whitef_blueb"
  whitef_magentab "whitef_magentab"
  whitef_lightblueb "whitef_lightblueb"
  blackf_blackb "blackf_blackb"
  blackf_redb "blackf_redb"
  blackf_greenb "blackf_greenb"
  blackf_yellowb "blackf_yellowb"
  blackf_blueb "blackf_blueb"
  blackf_magentab "blackf_magentab"
  blackf_lightblueb "blackf_lightblueb"
  redf_blackb "redf_blackb"
  redf_redb "redf_redb"
  redf_greenb "redf_greenb"
  redf_yellowb "redf_yellowb"
  redf_blueb "redf_blueb"
  redf_magentab "redf_magentab"
  redf_lightblueb "redf_lightblueb"
  greenf_blackb "greenf_blackb"
  greenf_redb "greenf_redb"
  greenf_greenb "greenf_greenb"
  greenf_yellowb "greenf_yellowb"
  greenf_blueb "greenf_blueb"
  greenf_magentab "greenf_magentab"
  greenf_lightblueb "greenf_lightblueb"
  yellowf_blackb "yellowf_blackb"
  yellowf_redb "yellowf_redb"
  yellowf_greenb "yellowf_greenb"
  yellowf_yellowb "yellowf_yellowb"
  yellowf_blueb "yellowf_blueb"
  yellowf_magentab "yellowf_magentab"
  yellowf_lightblueb "yellowf_lightblueb"
  bluef_blackb "bluef_blackb"
  bluef_redb "bluef_redb"
  bluef_greenb "bluef_greenb"
  bluef_yellowb "bluef_yellowb"
  bluef_blueb "bluef_blueb"
  bluef_magentab "bluef_magentab"
  bluef_lightblueb "bluef_lightblueb"
  magentaf_blackb "magentaf_blackb"
  magentaf_redb "magentaf_redb"
  magentaf_greenb "magentaf_greenb"
  magentaf_yellowb "magentaf_yellowb"
  magentaf_blueb "magentaf_blueb"
  magentaf_magentab "magentaf_magentab"
  magentaf_lightblueb "magentaf_lightblueb"
  cyanf_blackb "cyanf_blackb"
  cyanf_redb "cyanf_redb"
  cyanf_greenb "cyanf_greenb"
  cyanf_yellowb "cyanf_yellowb"
  cyanf_blueb "cyanf_blueb"
  cyanf_magentab "cyanf_magentab"
  cyanf_lightblueb "cyanf_lightblueb"
  echo -e "$CEND"
}

function colortest {
  if [[ -n "$1" ]]; then
    T="$1"
  else
    T='gYw'
  fi

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

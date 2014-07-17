CEND="$(tput sgr0)"
BOLD="$(tput bold)"
BLACK="$(tput setaf 0)"
WHITE="$(tput setaf 7)"
RED="$(tput setaf 1)"
GREEN="$(tput setaf 2)"
YELLOW="$(tput setaf 3)"
BLUE="$(tput setaf 4)"
MAGENTA="$(tput setaf 5)"
CYAN="$(tput setaf 6)"

BLACKB="$BOLD$BLACK"
WHITEB="$BOLD$WHITE"
REDB="$BOLD$RED"
GREENB="$BOLD$GREEN"
YELLOWB="$BOLD$YELLOW"
BLUEB="$BOLD$BLUE"
MAGENTAB="$BOLD$MAGENTA"
CYANB="$BOLD$CYAN"

BG_BLACK="$(tput setab 0)"
BG_RED="$(tput setab 1)"
BG_GREEN="$(tput setab 2)"
BG_YELLOW="$(tput setab 3)"
BG_BLUE="$(tput setab 4)"
BG_MAGENTA="$(tput setab 5)"
BG_CYAN="$(tput setab 6)"

WHITE_BLACK="$WHITE$BG_BLACK"
WHITE_RED="$WHITE$BG_RED"
WHITE_GREEN="$WHITE$BG_GREEN"
WHITE_YELLOW="$WHITE$BG_YELLOW"
WHITE_BLUE="$WHITE$BG_BLUE"
WHITE_MAGENTA="$WHITE$BG_MAGENTA"
WHITE_CYAN="$WHITE$BG_CYAN"

BLACK_BLACK="$BLACK$BG_BLACK"
BLACK_RED="$BLACK$BG_RED"
BLACK_GREEN="$BLACK$BG_GREEN"
BLACK_YELLOW="$BLACK$BG_YELLOW"
BLACK_BLUE="$BLACK$BG_BLUE"
BLACK_MAGENTA="$BLACK$BG_MAGENTA"
BLACK_CYAN="$BLACK$BG_CYAN"

RED_BLACK="$RED$BG_BLACK"
RED_RED="$RED$BG_RED"
RED_GREEN="$RED$BG_GREEN"
RED_YELLOW="$RED$BG_YELLOW"
RED_BLUE="$RED$BG_BLUE"
RED_MAGENTA="$RED$BG_MAGENTA"
RED_CYAN="$RED$BG_CYAN"

GREEN_BLACK="$GREEN$BG_BLACK"
GREEN_RED="$GREEN$BG_RED"
GREEN_GREEN="$GREEN$BG_GREEN"
GREEN_YELLOW="$GREEN$BG_YELLOW"
GREEN_BLUE="$GREEN$BG_BLUE"
GREEN_MAGENTA="$GREEN$BG_MAGENTA"
GREEN_CYAN="$GREEN$BG_CYAN"

YELLOW_BLACK="$YELLOW$BG_BLACK"
YELLOW_RED="$YELLOW$BG_RED"
YELLOW_GREEN="$YELLOW$BG_GREEN"
YELLOW_YELLOW="$YELLOW$BG_YELLOW"
YELLOW_BLUE="$YELLOW$BG_BLUE"
YELLOW_MAGENTA="$YELLOW$BG_MAGENTA"
YELLOW_CYAN="$YELLOW$BG_CYAN"

BLUE_BLACK="$BLUE$BG_BLACK"
BLUE_RED="$BLUE$BG_RED"
BLUE_GREEN="$BLUE$BG_GREEN"
BLUE_YELLOW="$BLUE$BG_YELLOW"
BLUE_BLUE="$BLUE$BG_BLUE"
BLUE_MAGENTA="$BLUE$BG_MAGENTA"
BLUE_CYAN="$BLUE$BG_CYAN"

MAGENTA_BLACK="$MAGENTA$BG_BLACK"
MAGENTA_RED="$MAGENTA$BG_RED"
MAGENTA_GREEN="$MAGENTA$BG_GREEN"
MAGENTA_YELLOW="$MAGENTA$BG_YELLOW"
MAGENTA_BLUE="$MAGENTA$BG_BLUE"
MAGENTA_MAGENTA="$MAGENTA$BG_MAGENTA"
MAGENTA_CYAN="$MAGENTA$BG_CYAN"

CYAN_BLACK="$CYAN$BG_BLACK"
CYAN_RED="$CYAN$BG_RED"
CYAN_GREEN="$CYAN$BG_GREEN"
CYAN_YELLOW="$CYAN$BG_YELLOW"
CYAN_BLUE="$CYAN$BG_BLUE"
CYAN_MAGENTA="$CYAN$BG_MAGENTA"
CYAN_CYAN="$CYAN$BG_CYAN"


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
  printf "${BLUE}${1}${CEND}"
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
  printf "${WHITE_BLACK}${1}${CEND}"
}

function whitef_redb {
  printf "${WHITE_RED}${1}${CEND}"
}

function whitef_greenb {
  printf "${WHITE_GREEN}${1}${CEND}"
}

function whitef_yellowb {
  printf "${WHITE_YELLOW}${1}${CEND}"
}

function whitef_blueb {
  printf "${WHITE_BLUE}${1}${CEND}"
}

function whitef_magentab {
  printf "${WHITE_MAGENTA}${1}${CEND}"
}

function whitef_lightblueb {
  printf "${WHITE_CYAN}${1}${CEND}"
}

function blackf_blackb {
  printf "${BLACK_BLACK}${1}${CEND}"
}

function blackf_redb {
  printf "${BLACK_RED}${1}${CEND}"
}

function blackf_greenb {
  printf "${BLACK_GREEN}${1}${CEND}"
}

function blackf_yellowb {
  printf "${BLACK_YELLOW}${1}${CEND}"
}

function blackf_blueb {
  printf "${BLACK_BLUE}${1}${CEND}"
}

function blackf_magentab {
  printf "${BLACK_MAGENTA}${1}${CEND}"
}

function blackf_lightblueb {
  printf "${BLACK_CYAN}${1}${CEND}"
}

function redf_blackb {
  printf "${RED_BLACK}${1}${CEND}"
}

function redf_redb {
  printf "${RED_RED}${1}${CEND}"
}

function redf_greenb {
  printf "${RED_GREEN}${1}${CEND}"
}

function redf_yellowb {
  printf "${RED_YELLOW}${1}${CEND}"
}

function redf_blueb {
  printf "${RED_BLUE}${1}${CEND}"
}

function redf_magentab {
  printf "${RED_MAGENTA}${1}${CEND}"
}

function redf_lightblueb {
  printf "${RED_CYAN}${1}${CEND}"
}

function greenf_blackb {
  printf "${GREEN_BLACK}${1}${CEND}"
}

function greenf_redb {
  printf "${GREEN_RED}${1}${CEND}"
}

function greenf_greenb {
  printf "${GREEN_GREEN}${1}${CEND}"
}

function greenf_yellowb {
  printf "${GREEN_YELLOW}${1}${CEND}"
}

function greenf_blueb {
  printf "${GREEN_BLUE}${1}${CEND}"
}

function greenf_magentab {
  printf "${GREEN_MAGENTA}${1}${CEND}"
}

function greenf_lightblueb {
  printf "${GREEN_CYAN}${1}${CEND}"
}

function yellowf_blackb {
  printf "${YELLOW_BLACK}${1}${CEND}"
}

function yellowf_redb {
  printf "${YELLOW_RED}${1}${CEND}"
}

function yellowf_greenb {
  printf "${YELLOW_GREEN}${1}${CEND}"
}

function yellowf_yellowb {
  printf "${YELLOW_YELLOW}${1}${CEND}"
}

function yellowf_blueb {
  printf "${YELLOW_BLUE}${1}${CEND}"
}

function yellowf_magentab {
  printf "${YELLOW_MAGENTA}${1}${CEND}"
}

function yellowf_lightblueb {
  printf "${YELLOW_CYAN}${1}${CEND}"
}

function bluef_blackb {
  printf "${BLUE_BLACK}${1}${CEND}"
}

function bluef_redb {
  printf "${BLUE_RED}${1}${CEND}"
}

function bluef_greenb {
  printf "${BLUE_GREEN}${1}${CEND}"
}

function bluef_yellowb {
  printf "${BLUE_YELLOW}${1}${CEND}"
}

function bluef_blueb {
  printf "${BLUE_BLUE}${1}${CEND}"
}

function bluef_magentab {
  printf "${BLUE_MAGENTA}${1}${CEND}"
}

function bluef_lightblueb {
  printf "${BLUE_CYAN}${1}${CEND}"
}

function magentaf_blackb {
  printf "${MAGENTA_BLACK}${1}${CEND}"
}

function magentaf_redb {
  printf "${MAGENTA_RED}${1}${CEND}"
}

function magentaf_greenb {
  printf "${MAGENTA_GREEN}${1}${CEND}"
}

function magentaf_yellowb {
  printf "${MAGENTA_YELLOW}${1}${CEND}"
}

function magentaf_blueb {
  printf "${MAGENTA_BLUE}${1}${CEND}"
}

function magentaf_magentab {
  printf "${MAGENTA_MAGENTA}${1}${CEND}"
}

function magentaf_lightblueb {
  printf "${MAGENTA_CYAN}${1}${CEND}"
}

function cyanf_blackb {
  printf "${CYAN_BLACK}${1}${CEND}"
}

function cyanf_redb {
  printf "${CYAN_RED}${1}${CEND}"
}

function cyanf_greenb {
  printf "${CYAN_GREEN}${1}${CEND}"
}

function cyanf_yellowb {
  printf "${CYAN_YELLOW}${1}${CEND}"
}

function cyanf_blueb {
  printf "${CYAN_BLUE}${1}${CEND}"
}

function cyanf_magentab {
  printf "${CYAN_MAGENTA}${1}${CEND}"
}

function cyanf_lightblueb {
  printf "${CYAN_CYAN}${1}${CEND}"
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

#!/usr/bin/env bats

load test_helper

@test "it has a CEND variable" {
    [ "$CEND" == "$(tput sgr0)" ]
}

@test "it has a BOLD variable" {
    [ "$BOLD" == "$(tput bold)" ]
}

@test "it has a BLACK variable" {
    [ "$BLACK" == "$(tput setaf 0)" ]
}

@test "it has a WHITE variable" {
    [ "$WHITE" == "$(tput setaf 7)" ]
}

@test "it has a RED variable" {
    [ "$RED" == "$(tput setaf 1)" ]
}

@test "it has a GREEN variable" {
    [ "$GREEN" == "$(tput setaf 2)" ]
}

@test "it has a YELLOW variable" {
    [ "$YELLOW" == "$(tput setaf 3)" ]
}

@test "it has a BLUE variable" {
    [ "$BLUE" == "$(tput setaf 4)" ]
}

@test "it has a MAGENTA variable" {
    [ "$MAGENTA" == "$(tput setaf 5)" ]
}

@test "it has a CYAN variable" {
    [ "$CYAN" == "$(tput setaf 6)" ]
}

@test "it has a BLACKB variable" {
    [ "$BLACKB" == "$BOLD$BLACK" ]
}

@test "it has a WHITEB variable" {
    [ "$WHITEB" == "$BOLD$WHITE" ]
}

@test "it has a REDB variable" {
    [ "$REDB" == "$BOLD$RED" ]
}

@test "it has a GREENB variable" {
    [ "$GREENB" == "$BOLD$GREEN" ]
}

@test "it has a YELLOWB variable" {
    [ "$YELLOWB" == "$BOLD$YELLOW" ]
}

@test "it has a BLUEB variable" {
    [ "$BLUEB" == "$BOLD$BLUE" ]
}

@test "it has a MAGENTAB variable" {
    [ "$MAGENTAB" == "$BOLD$MAGENTA" ]
}

@test "it has a CYANB variable" {
    [ "$CYANB" == "$BOLD$CYAN" ]
}

@test "it has a BG_WHITE variable" {
    [ "$BG_WHITE" == "$(tput setab 7)" ]
}

@test "it has a BG_VIOLET variable" {
    [ "$BG_VIOLET" == "$(tput setab 13)" ]
}

@test "it has a BG_BLACK variable" {
    [ "$BG_BLACK" == "$(tput setab 0)" ]
}

@test "it has a BG_RED variable" {
    [ "$BG_RED" == "$(tput setab 1)" ]
}

@test "it has a BG_GREEN variable" {
    [ "$BG_GREEN" == "$(tput setab 2)" ]
}

@test "it has a BG_YELLOW variable" {
    [ "$BG_YELLOW" == "$(tput setab 3)" ]
}

@test "it has a BG_BLUE variable" {
    [ "$BG_BLUE" == "$(tput setab 4)" ]
}

@test "it has a BG_MAGENTA variable" {
    [ "$BG_MAGENTA" == "$(tput setab 5)" ]
}

@test "it has a BG_CYAN variable" {
    [ "$BG_CYAN" == "$(tput setab 6)" ]
}

@test "it has a WHITE_BLACK variable" {
    [ "$WHITE_BLACK" == "$WHITE$BG_BLACK" ]
}

@test "it has a WHITE_RED variable" {
    [ "$WHITE_RED" == "$WHITE$BG_RED" ]
}

@test "it has a WHITE_GREEN variable" {
    [ "$WHITE_GREEN" == "$WHITE$BG_GREEN" ]
}

@test "it has a WHITE_YELLOW variable" {
    [ "$WHITE_YELLOW" == "$WHITE$BG_YELLOW" ]
}

@test "it has a WHITE_BLUE variable" {
    [ "$WHITE_BLUE" == "$WHITE$BG_BLUE" ]
}

@test "it has a WHITE_MAGENTA variable" {
    [ "$WHITE_MAGENTA" == "$WHITE$BG_MAGENTA" ]
}

@test "it has a WHITE_CYAN variable" {
    [ "$WHITE_CYAN" == "$WHITE$BG_CYAN" ]
}

@test "it has a BLACK_BLACK variable" {
    [ "$BLACK_BLACK" == "$BLACK$BG_BLACK" ]
}

@test "it has a BLACK_RED variable" {
    [ "$BLACK_RED" == "$BLACK$BG_RED" ]
}

@test "it has a BLACK_GREEN variable" {
    [ "$BLACK_GREEN" == "$BLACK$BG_GREEN" ]
}

@test "it has a BLACK_YELLOW variable" {
    [ "$BLACK_YELLOW" == "$BLACK$BG_YELLOW" ]
}

@test "it has a BLACK_BLUE variable" {
    [ "$BLACK_BLUE" == "$BLACK$BG_BLUE" ]
}

@test "it has a BLACK_MAGENTA variable" {
    [ "$BLACK_MAGENTA" == "$BLACK$BG_MAGENTA" ]
}

@test "it has a BLACK_CYAN variable" {
    [ "$BLACK_CYAN" == "$BLACK$BG_CYAN" ]
}

@test "it has a RED_BLACK variable" {
    [ "$RED_BLACK" == "$RED$BG_BLACK" ]
}

@test "it has a RED_RED variable" {
    [ "$RED_RED" == "$RED$BG_RED" ]
}

@test "it has a RED_GREEN variable" {
    [ "$RED_GREEN" == "$RED$BG_GREEN" ]
}

@test "it has a RED_YELLOW variable" {
    [ "$RED_YELLOW" == "$RED$BG_YELLOW" ]
}

@test "it has a RED_BLUE variable" {
    [ "$RED_BLUE" == "$RED$BG_BLUE" ]
}

@test "it has a RED_MAGENTA variable" {
    [ "$RED_MAGENTA" == "$RED$BG_MAGENTA" ]
}

@test "it has a RED_CYAN variable" {
    [ "$RED_CYAN" == "$RED$BG_CYAN" ]
}

@test "it has a GREEN_BLACK variable" {
    [ "$GREEN_BLACK" == "$GREEN$BG_BLACK" ]
}

@test "it has a GREEN_RED variable" {
  [ "$GREEN_RED" == "$GREEN$BG_RED" ]
}

@test "it has a GREEN_GREEN variable" {
  [ "$GREEN_GREEN" == "$GREEN$BG_GREEN" ]
}

@test "it has a GREEN_YELLOW variable" {
  [ "$GREEN_YELLOW" == "$GREEN$BG_YELLOW" ]
}

@test "it has a GREEN_BLUE variable" {
  [ "$GREEN_BLUE" == "$GREEN$BG_BLUE" ]
}

@test "it has a GREEN_MAGENTA variable" {
  [ "$GREEN_MAGENTA" == "$GREEN$BG_MAGENTA" ]
}

@test "it has a GREEN_CYAN variable" {
  [ "$GREEN_CYAN" == "$GREEN$BG_CYAN" ]
}

@test "it has a YELLOW_BLACK variable" {
  [ "$YELLOW_BLACK" == "$YELLOW$BG_BLACK" ]
}

@test "it has a YELLOW_RED variable" {
  [ "$YELLOW_RED" == "$YELLOW$BG_RED" ]
}

@test "it has a YELLOW_GREEN variable" {
  [ "$YELLOW_GREEN" == "$YELLOW$BG_GREEN" ]
}

@test "it has a YELLOW_YELLOW variable" {
  [ "$YELLOW_YELLOW" == "$YELLOW$BG_YELLOW" ]
}

@test "it has a YELLOW_BLUE variable" {
  [ "$YELLOW_BLUE" == "$YELLOW$BG_BLUE" ]
}

@test "it has a YELLOW_MAGENTA variable" {
  [ "$YELLOW_MAGENTA" == "$YELLOW$BG_MAGENTA" ]
}

@test "it has a YELLOW_CYAN variable" {
  [ "$YELLOW_CYAN" == "$YELLOW$BG_CYAN" ]
}

@test "it has a BLUE_BLACK variable" {
  [ "$BLUE_BLACK" == "$BLUE$BG_BLACK" ]
}

@test "it has a BLUE_RED variable" {
  [ "$BLUE_RED" == "$BLUE$BG_RED" ]
}

@test "it has a BLUE_GREEN variable" {
  [ "$BLUE_GREEN" == "$BLUE$BG_GREEN" ]
}

@test "it has a BLUE_YELLOW variable" {
  [ "$BLUE_YELLOW" == "$BLUE$BG_YELLOW" ]
}

@test "it has a BLUE_BLUE variable" {
  [ "$BLUE_BLUE" == "$BLUE$BG_BLUE" ]
}

@test "it has a BLUE_MAGENTA variable" {
  [ "$BLUE_MAGENTA" == "$BLUE$BG_MAGENTA" ]
}

@test "it has a BLUE_CYAN variable" {
  [ "$BLUE_CYAN" == "$BLUE$BG_CYAN" ]
}

@test "it has a MAGENTA_BLACK variable" {
  [ "$MAGENTA_BLACK" == "$MAGENTA$BG_BLACK" ]
}

@test "it has a MAGENTA_RED variable" {
  [ "$MAGENTA_RED" == "$MAGENTA$BG_RED" ]
}

@test "it has a MAGENTA_GREEN variable" {
  [ "$MAGENTA_GREEN" == "$MAGENTA$BG_GREEN" ]
}

@test "it has a MAGENTA_YELLOW variable" {
  [ "$MAGENTA_YELLOW" == "$MAGENTA$BG_YELLOW" ]
}

@test "it has a MAGENTA_BLUE variable" {
  [ "$MAGENTA_BLUE" == "$MAGENTA$BG_BLUE" ]
}

@test "it has a MAGENTA_MAGENTA variable" {
  [ "$MAGENTA_MAGENTA" == "$MAGENTA$BG_MAGENTA" ]
}

@test "it has a MAGENTA_CYAN variable" {
  [ "$MAGENTA_CYAN" == "$MAGENTA$BG_CYAN" ]
}

@test "it has a CYAN_BLACK variable" {
  [ "$CYAN_BLACK" == "$CYAN$BG_BLACK" ]
}

@test "it has a CYAN_RED variable" {
  [ "$CYAN_RED" == "$CYAN$BG_RED" ]
}

@test "it has a CYAN_GREEN variable" {
  [ "$CYAN_GREEN" == "$CYAN$BG_GREEN" ]
}

@test "it has a CYAN_YELLOW variable" {
  [ "$CYAN_YELLOW" == "$CYAN$BG_YELLOW" ]
}

@test "it has a CYAN_BLUE variable" {
  [ "$CYAN_BLUE" == "$CYAN$BG_BLUE" ]
}

@test "it has a CYAN_MAGENTA variable" {
  [ "$CYAN_MAGENTA" == "$CYAN$BG_MAGENTA" ]
}

@test "it has a CYAN_CYAN variable" {
  [ "$CYAN_CYAN" == "$CYAN$BG_CYAN" ]
}

@test "it has a black function to colorize a string" {
  [ "$(black 'test')" == "${BLACK}test${CEND}" ]
}

@test "it has a blackb function to colorize a string" {
  [ "$(blackb 'test')" == "${BLACKB}test${CEND}" ]
}

@test "it has a white function to colorize a string" {
  [ "$(white 'test')" == "${WHITE}test${CEND}" ]
}

@test "it has a whiteb function to colorize a string" {
  [ "$(whiteb 'test')" == "${WHITEB}test${CEND}" ]
}

@test "it has a red function to colorize a string" {
  [ "$(red 'test')" == "${RED}test${CEND}" ]
}

@test "it has a redb function to colorize a string" {
  [ "$(redb 'test')" == "${REDB}test${CEND}" ]
}

@test "it has a green function to colorize a string" {
  [ "$(green 'test')" == "${GREEN}test${CEND}" ]
}

@test "it has a greenb function to colorize a string" {
  [ "$(greenb 'test')" == "${GREENB}test${CEND}" ]
}

@test "it has a yellow function to colorize a string" {
  [ "$(yellow 'test')" == "${YELLOW}test${CEND}" ]
}

@test "it has a yellowb function to colorize a string" {
  [ "$(yellowb 'test')" == "${YELLOWB}test${CEND}" ]
}

@test "it has a blue function to colorize a string" {
  [ "$(blue 'test')" == "${BLUE}test${CEND}" ]
}

@test "it has a blueb function to colorize a string" {
  [ "$(blueb 'test')" == "${BLUEB}test${CEND}" ]
}

@test "it has a magenta function to colorize a string" {
  [ "$(magenta 'test')" == "${MAGENTA}test${CEND}" ]
}

@test "it has a magentab function to colorize a string" {
  [ "$(magentab 'test')" == "${MAGENTAB}test${CEND}" ]
}

@test "it has a cyan function to colorize a string" {
  [ "$(cyan 'test')" == "${CYAN}test${CEND}" ]
}

@test "it has a cyanb function to colorize a string" {
  [ "$(cyanb 'test')" == "${CYANB}test${CEND}" ]
}

@test "it has a whitef_blackb function to colorize the foreground and background"  {
  [ "$(whitef_blackb 'test')" == "${WHITE_BLACK}test${CEND}" ]
}

@test "it has a whitef_redb function to colorize the foreground and background"  {
  [ "$(whitef_redb 'test')" == "${WHITE_RED}test${CEND}" ]
}

@test "it has a whitef_greenb function to colorize the foreground and background"  {
  [ "$(whitef_greenb 'test')" == "${WHITE_GREEN}test${CEND}" ]
}

@test "it has a whitef_yellowb function to colorize the foreground and background"  {
  [ "$(whitef_yellowb 'test')" == "${WHITE_YELLOW}test${CEND}" ]
}

@test "it has a whitef_blueb function to colorize the foreground and background"  {
  [ "$(whitef_blueb 'test')" == "${WHITE_BLUE}test${CEND}" ]
}

@test "it has a whitef_magentab function to colorize the foreground and background"  {
  [ "$(whitef_magentab 'test')" == "${WHITE_MAGENTA}test${CEND}" ]
}

@test "it has a whitef_lightblueb function to colorize the foreground and background"  {
  [ "$(whitef_lightblueb 'test')" == "${WHITE_CYAN}test${CEND}" ]
}

@test "it has a blackf_blackb function to colorize the foreground and background"  {
  [ "$(blackf_blackb 'test')" == "${BLACK_BLACK}test${CEND}" ]
}

@test "it has a blackf_redb function to colorize the foreground and background"  {
  [ "$(blackf_redb 'test')" == "${BLACK_RED}test${CEND}" ]
}

@test "it has a blackf_greenb function to colorize the foreground and background"  {
  [ "$(blackf_greenb 'test')" == "${BLACK_GREEN}test${CEND}" ]
}

@test "it has a blackf_yellowb function to colorize the foreground and background"  {
  [ "$(blackf_yellowb 'test')" == "${BLACK_YELLOW}test${CEND}" ]
}

@test "it has a blackf_blueb function to colorize the foreground and background"  {
  [ "$(blackf_blueb 'test')" == "${BLACK_BLUE}test${CEND}" ]
}

@test "it has a blackf_magentab function to colorize the foreground and background"  {
  [ "$(blackf_magentab 'test')" == "${BLACK_MAGENTA}test${CEND}" ]
}

@test "it has a blackf_lightblueb function to colorize the foreground and background"  {
  [ "$(blackf_lightblueb 'test')" == "${BLACK_CYAN}test${CEND}" ]
}

@test "it has a redf_blackb function to colorize the foreground and background"  {
  [ "$(redf_blackb 'test')" == "${RED_BLACK}test${CEND}" ]
}

@test "it has a redf_redb function to colorize the foreground and background"  {
  [ "$(redf_redb 'test')" == "${RED_RED}test${CEND}" ]
}

@test "it has a redf_greenb function to colorize the foreground and background"  {
  [ "$(redf_greenb 'test')" == "${RED_GREEN}test${CEND}" ]
}

@test "it has a redf_yellowb function to colorize the foreground and background"  {
  [ "$(redf_yellowb 'test')" == "${RED_YELLOW}test${CEND}" ]
}

@test "it has a redf_blueb function to colorize the foreground and background"  {
  [ "$(redf_blueb 'test')" == "${RED_BLUE}test${CEND}" ]
}

@test "it has a redf_magentab function to colorize the foreground and background"  {
  [ "$(redf_magentab 'test')" == "${RED_MAGENTA}test${CEND}" ]
}

@test "it has a redf_lightblueb function to colorize the foreground and background"  {
  [ "$(redf_lightblueb 'test')" == "${RED_CYAN}test${CEND}" ]
}

@test "it has a greenf_blackb function to colorize the foreground and background"  {
  [ "$(greenf_blackb 'test')" == "${GREEN_BLACK}test${CEND}" ]
}

@test "it has a greenf_redb function to colorize the foreground and background"  {
  [ "$(greenf_redb 'test')" == "${GREEN_RED}test${CEND}" ]
}

@test "it has a greenf_greenb function to colorize the foreground and background"  {
  [ "$(greenf_greenb 'test')" == "${GREEN_GREEN}test${CEND}" ]
}

@test "it has a greenf_yellowb function to colorize the foreground and background"  {
  [ "$(greenf_yellowb 'test')" == "${GREEN_YELLOW}test${CEND}" ]
}

@test "it has a greenf_blueb function to colorize the foreground and background"  {
  [ "$(greenf_blueb 'test')" == "${GREEN_BLUE}test${CEND}" ]
}

@test "it has a greenf_magentab function to colorize the foreground and background"  {
  [ "$(greenf_magentab 'test')" == "${GREEN_MAGENTA}test${CEND}" ]
}

@test "it has a greenf_lightblueb function to colorize the foreground and background"  {
  [ "$(greenf_lightblueb 'test')" == "${GREEN_CYAN}test${CEND}" ]
}

@test "it has a yellowf_blackb function to colorize the foreground and background"  {
  [ "$(yellowf_blackb 'test')" == "${YELLOW_BLACK}test${CEND}" ]
}

@test "it has a yellowf_redb function to colorize the foreground and background"  {
  [ "$(yellowf_redb 'test')" == "${YELLOW_RED}test${CEND}" ]
}

@test "it has a yellowf_greenb function to colorize the foreground and background"  {
  [ "$(yellowf_greenb 'test')" == "${YELLOW_GREEN}test${CEND}" ]
}

@test "it has a yellowf_yellowb function to colorize the foreground and background"  {
  [ "$(yellowf_yellowb 'test')" == "${YELLOW_YELLOW}test${CEND}" ]
}

@test "it has a yellowf_blueb function to colorize the foreground and background"  {
  [ "$(yellowf_blueb 'test')" == "${YELLOW_BLUE}test${CEND}" ]
}

@test "it has a yellowf_magentab function to colorize the foreground and background"  {
  [ "$(yellowf_magentab 'test')" == "${YELLOW_MAGENTA}test${CEND}" ]
}

@test "it has a yellowf_lightblueb function to colorize the foreground and background"  {
  [ "$(yellowf_lightblueb 'test')" == "${YELLOW_CYAN}test${CEND}" ]
}

@test "it has a bluef_blackb function to colorize the foreground and background"  {
  [ "$(bluef_blackb 'test')" == "${BLUE_BLACK}test${CEND}" ]
}

@test "it has a bluef_redb function to colorize the foreground and background"  {
  [ "$(bluef_redb 'test')" == "${BLUE_RED}test${CEND}" ]
}

@test "it has a bluef_greenb function to colorize the foreground and background"  {
  [ "$(bluef_greenb 'test')" == "${BLUE_GREEN}test${CEND}" ]
}

@test "it has a bluef_yellowb function to colorize the foreground and background"  {
  [ "$(bluef_yellowb 'test')" == "${BLUE_YELLOW}test${CEND}" ]
}

@test "it has a bluef_blueb function to colorize the foreground and background"  {
  [ "$(bluef_blueb 'test')" == "${BLUE_BLUE}test${CEND}" ]
}

@test "it has a bluef_magentab function to colorize the foreground and background"  {
  [ "$(bluef_magentab 'test')" == "${BLUE_MAGENTA}test${CEND}" ]
}

@test "it has a bluef_lightblueb function to colorize the foreground and background"  {
  [ "$(bluef_lightblueb 'test')" == "${BLUE_CYAN}test${CEND}" ]
}

@test "it has a magentaf_blackb function to colorize the foreground and background"  {
  [ "$(magentaf_blackb 'test')" == "${MAGENTA_BLACK}test${CEND}" ]
}

@test "it has a magentaf_redb function to colorize the foreground and background"  {
  [ "$(magentaf_redb 'test')" == "${MAGENTA_RED}test${CEND}" ]
}

@test "it has a magentaf_greenb function to colorize the foreground and background"  {
  [ "$(magentaf_greenb 'test')" == "${MAGENTA_GREEN}test${CEND}" ]
}

@test "it has a magentaf_yellowb function to colorize the foreground and background"  {
  [ "$(magentaf_yellowb 'test')" == "${MAGENTA_YELLOW}test${CEND}" ]
}

@test "it has a magentaf_blueb function to colorize the foreground and background"  {
  [ "$(magentaf_blueb 'test')" == "${MAGENTA_BLUE}test${CEND}" ]
}

@test "it has a magentaf_magentab function to colorize the foreground and background"  {
  [ "$(magentaf_magentab 'test')" == "${MAGENTA_MAGENTA}test${CEND}" ]
}

@test "it has a magentaf_lightblueb function to colorize the foreground and background"  {
  [ "$(magentaf_lightblueb 'test')" == "${MAGENTA_CYAN}test${CEND}" ]
}

@test "it has a cyanf_blackb function to colorize the foreground and background"  {
  [ "$(cyanf_blackb 'test')" == "${CYAN_BLACK}test${CEND}" ]
}

@test "it has a cyanf_redb function to colorize the foreground and background"  {
  [ "$(cyanf_redb 'test')" == "${CYAN_RED}test${CEND}" ]
}

@test "it has a cyanf_greenb function to colorize the foreground and background"  {
  [ "$(cyanf_greenb 'test')" == "${CYAN_GREEN}test${CEND}" ]
}

@test "it has a cyanf_yellowb function to colorize the foreground and background"  {
  [ "$(cyanf_yellowb 'test')" == "${CYAN_YELLOW}test${CEND}" ]
}

@test "it has a cyanf_blueb function to colorize the foreground and background"  {
  [ "$(cyanf_blueb 'test')" == "${CYAN_BLUE}test${CEND}" ]
}

@test "it has a cyanf_magentab function to colorize the foreground and background"  {
  [ "$(cyanf_magentab 'test')" == "${CYAN_MAGENTA}test${CEND}" ]
}

@test "it has a cyanf_lightblueb function to colorize the foreground and background"  {
  [ "$(cyanf_lightblueb 'test')" == "${CYAN_CYAN}test${CEND}" ]
}

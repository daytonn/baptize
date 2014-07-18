#!/usr/bin/env bats

load test_helper

@test "it has a reset escape sequence variable" {
  [ "$CEND" == "\[\033[0m\]" ]
}

@test "it has a black escape sequence variable" {
  [ "$BLACK" == "\[\033[0;30m\]" ]
}

@test "it has a white escape sequence variable" {
  [ "$WHITE" == "\[\033[37m\]" ]
}

@test "it has a red escape sequence variable" {
  [ "$RED" == "\[\033[0;31m\]" ]
}

@test "it has a green escape sequence variable" {
  [ "$GREEN" == "\[\033[0;32m\]" ]
}

@test "it has a yellow escape sequence variable" {
  [ "$YELLOW" == "\[\033[0;33m\]" ]
}

@test "it has a blue escape sequence variable" {
  [ "$BLUE" == "\[\033[0;34m\]" ]
}

@test "it has a magenta escape sequence variable" {
  [ "$MAGENTA" == "\[\033[0;35m\]" ]
}

@test "it has a cyan escape sequence variable" {
  [ "$CYAN" == "\[\033[0;36m\]" ]
}

@test "it has a bold black escape sequence variable" {
  [ "$BLACKB" == "\[\033[1;30m\]" ]
}

@test "it has a bold white escape sequence variable" {
  [ "$WHITEB" == "\[\033[1;1m\]" ]
}

@test "it has a bold red escape sequence variable" {
  [ "$REDB" == "\[\033[1;31m\]" ]
}

@test "it has a bold green escape sequence variable" {
  [ "$GREENB" == "\[\033[1;32m\]" ]
}

@test "it has a bold yellow escape sequence variable" {
  [ "$YELLOWB" == "\[\033[1;33m\]" ]
}

@test "it has a bold blue escape sequence variable" {
  [ "$BLUEB" == "\[\033[1;34m\]" ]
}

@test "it has a bold magenta escape sequence variable" {
  [ "$MAGENTAB" == "\[\033[1;35m\]" ]
}

@test "it has a bold cyan escape sequence variable" {
  [ "$CYANB" == "\[\033[1;36m\]" ]
}

@test "it has a white foreground, black background escape sequence variable" {
  [ "$WHITEF_BLACKB" == "\[\033[40;37m\]" ]
}

@test "it has a white foreground, red background escape sequence variable" {
  [ "$WHITEF_REDB" == "\[\033[41;37m\]" ]
}

@test "it has a white foreground, green background escape sequence variable" {
  [ "$WHITEF_GREENB" == "\[\033[42;37m\]" ]
}

@test "it has a white foreground, yellow background escape sequence variable" {
  [ "$WHITEF_YELLOWB" == "\[\033[43;37m\]" ]
}

@test "it has a white foreground, blue background escape sequence variable" {
  [ "$WHITEF_BLUEB" == "\[\033[44;37m\]" ]
}

@test "it has a white foreground, magenta background escape sequence variable" {
  [ "$WHITEF_MAGENTAB" == "\[\033[45;37m\]" ]
}

@test "it has a white foreground, cyan background escape sequence variable" {
  [ "$WHITEF_CYANB" == "\[\033[46;37m\]" ]
}

@test "it has a black foreground, black background escape sequence variable" {
  [ "$BLACKF_BLACKB" == "\[\033[40;30m\]" ]
}

@test "it has a black foreground, red background escape sequence variable" {
  [ "$BLACKF_REDB" == "\[\033[41;30m\]" ]
}

@test "it has a black foreground, green background escape sequence variable" {
  [ "$BLACKF_GREENB" == "\[\033[42;30m\]" ]
}

@test "it has a black foreground, yellow background escape sequence variable" {
  [ "$BLACKF_YELLOWB" == "\[\033[43;30m\]" ]
}

@test "it has a black foreground, blue background escape sequence variable" {
  [ "$BLACKF_BLUEB" == "\[\033[44;30m\]" ]
}

@test "it has a black foreground, magenta background escape sequence variable" {
  [ "$BLACKF_MAGENTAB" == "\[\033[45;30m\]" ]
}

@test "it has a black foreground, cyan background escape sequence variable" {
  [ "$BLACKF_CYANB" == "\[\033[46;30m\]" ]
}

@test "it has a red foreground, black background escape sequence variable" {
  [ "$REDF_BLACKB" == "\[\033[40;31m\]" ]
}

@test "it has a red foreground, red background escape sequence variable" {
  [ "$REDF_REDB" == "\[\033[41;31m\]" ]
}

@test "it has a red foreground, green background escape sequence variable" {
  [ "$REDF_GREENB" == "\[\033[42;31m\]" ]
}

@test "it has a red foreground, yellow background escape sequence variable" {
  [ "$REDF_YELLOWB" == "\[\033[43;31m\]" ]
}

@test "it has a red foreground, blue background escape sequence variable" {
  [ "$REDF_BLUEB" == "\[\033[44;31m\]" ]
}

@test "it has a red foreground, magenta background escape sequence variable" {
  [ "$REDF_MAGENTAB" == "\[\033[45;31m\]" ]
}

@test "it has a red foreground, cyan background escape sequence variable" {
  [ "$REDF_CYANB" == "\[\033[46;31m\]" ]
}

@test "it has a green foreground, black background escape sequence variable" {
  [ "$GREENF_BLACKB" == "\[\033[40;32m\]" ]
}

@test "it has a green foreground, red background escape sequence variable" {
  [ "$GREENF_REDB" == "\[\033[41;32m\]" ]
}

@test "it has a green foreground, green background escape sequence variable" {
  [ "$GREENF_GREENB" == "\[\033[42;32m\]" ]
}

@test "it has a green foreground, yellow background escape sequence variable" {
  [ "$GREENF_YELLOWB" == "\[\033[43;32m\]" ]
}

@test "it has a green foreground, blue background escape sequence variable" {
  [ "$GREENF_BLUEB" == "\[\033[44;32m\]" ]
}

@test "it has a green foreground, magenta background escape sequence variable" {
  [ "$GREENF_MAGENTAB" == "\[\033[45;32m\]" ]
}

@test "it has a green foreground, cyan background escape sequence variable" {
  [ "$GREENF_CYANB" == "\[\033[46;32m\]" ]
}

@test "it has a yellow foreground, black background escape sequence variable" {
  [ "$YELLOWF_BLACKB" == "\[\033[40;33m\]" ]
}

@test "it has a yellow foreground, red background escape sequence variable" {
  [ "$YELLOWF_REDB" == "\[\033[41;33m\]" ]
}

@test "it has a yellow foreground, green background escape sequence variable" {
  [ "$YELLOWF_GREENB" == "\[\033[42;33m\]" ]
}

@test "it has a yellow foreground, yellow background escape sequence variable" {
  [ "$YELLOWF_YELLOWB" == "\[\033[43;33m\]" ]
}

@test "it has a yellow foreground, blue background escape sequence variable" {
  [ "$YELLOWF_BLUEB" == "\[\033[44;33m\]" ]
}

@test "it has a yellow foreground, magenta background escape sequence variable" {
  [ "$YELLOWF_MAGENTAB" == "\[\033[45;33m\]" ]
}

@test "it has a yellow foreground, cyan background escape sequence variable" {
  [ "$YELLOWF_CYANB" == "\[\033[46;33m\]" ]
}

@test "it has a blue foreground, black background escape sequence variable" {
  [ "$BLUEF_BLACKB" == "\[\033[40;34m\]" ]
}

@test "it has a blue foreground, red background escape sequence variable" {
  [ "$BLUEF_REDB" == "\[\033[41;34m\]" ]
}

@test "it has a blue foreground, green background escape sequence variable" {
  [ "$BLUEF_GREENB" == "\[\033[42;34m\]" ]
}

@test "it has a blue foreground, yellow background escape sequence variable" {
  [ "$BLUEF_YELLOWB" == "\[\033[43;34m\]" ]
}

@test "it has a blue foreground, blue background escape sequence variable" {
  [ "$BLUEF_BLUEB" == "\[\033[44;34m\]" ]
}

@test "it has a blue foreground, magenta background escape sequence variable" {
  [ "$BLUEF_MAGENTAB" == "\[\033[45;34m\]" ]
}

@test "it has a blue foreground, cyan background escape sequence variable" {
  [ "$BLUEF_CYANB" == "\[\033[46;34m\]" ]
}

@test "it has a magenta foreground, black background escape sequence variable" {
  [ "$MAGENTAF_BLACKB" == "\[\033[40;35m\]" ]
}

@test "it has a magenta foreground, red background escape sequence variable" {
  [ "$MAGENTAF_REDB" == "\[\033[41;35m\]" ]
}

@test "it has a magenta foreground, green background escape sequence variable" {
  [ "$MAGENTAF_GREENB" == "\[\033[42;35m\]" ]
}

@test "it has a magenta foreground, yellow background escape sequence variable" {
  [ "$MAGENTAF_YELLOWB" == "\[\033[43;35m\]" ]
}

@test "it has a magenta foreground, blue background escape sequence variable" {
  [ "$MAGENTAF_BLUEB" == "\[\033[44;35m\]" ]
}

@test "it has a magenta foreground, magenta background escape sequence variable" {
  [ "$MAGENTAF_MAGENTAB" == "\[\033[45;35m\]" ]
}

@test "it has a magenta foreground, cyan background escape sequence variable" {
  [ "$MAGENTAF_CYANB" == "\[\033[46;35m\]" ]
}

@test "it has a cyan foreground, black background  escape sequence variable" {
  [ "$CYANF_BLACKB" == "\[\033[40;36m\]" ]
}

@test "it has a cyan foreground, red background  escape sequence variable" {
  [ "$CYANF_REDB" == "\[\033[41;36m\]" ]
}

@test "it has a cyan foreground, green background  escape sequence variable" {
  [ "$CYANF_GREENB" == "\[\033[42;36m\]" ]
}

@test "it has a cyan foreground, yellow background  escape sequence variable" {
  [ "$CYANF_YELLOWB" == "\[\033[43;36m\]" ]
}

@test "it has a cyan foreground, blue background  escape sequence variable" {
  [ "$CYANF_BLUEB" == "\[\033[44;36m\]" ]
}

@test "it has a cyan foreground, magenta background  escape sequence variable" {
  [ "$CYANF_MAGENTAB" == "\[\033[45;36m\]" ]
}

@test "it has a cyan foreground, cyan background  escape sequence variable" {
  [ "$CYANF_CYANB" == "\[\033[46;36m\]" ]
}

@test "it has a black function to colorize text" {
  run black "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLACK}test${CEND}"` ]
}

@test "it has a blackb function to colorize text" {
  run blackb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLACKB}test${CEND}"` ]
}

@test "it has a white function to colorize text" {
  run white "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${WHITE}test${CEND}"` ]
}

@test "it has a whiteb function to colorize text" {
  run whiteb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${WHITEB}test${CEND}"` ]
}

@test "it has a red function to colorize text" {
  run red "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${RED}test${CEND}"` ]
}

@test "it has a redb function to colorize text" {
  run redb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${REDB}test${CEND}"` ]
}

@test "it has a green function to colorize text" {
  run green "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${GREEN}test${CEND}"` ]
}

@test "it has a greenb function to colorize text" {
  run greenb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${GREENB}test${CEND}"` ]
}

@test "it has a yellow function to colorize text" {
  run yellow "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${YELLOW}test${CEND}"` ]
}

@test "it has a yellowb function to colorize text" {
  run yellowb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${YELLOWB}test${CEND}"` ]
}

@test "it has a blue function to colorize text" {
  run blue "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLUE}test${CEND}"` ]
}

@test "it has a blueb function to colorize text" {
  run blueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLUEB}test${CEND}"` ]
}

@test "it has a magenta function to colorize text" {
  run magenta "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${MAGENTA}test${CEND}"` ]
}

@test "it has a magentab function to colorize text" {
  run magentab "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${MAGENTAB}test${CEND}"` ]
}

@test "it has a cyan function to colorize text" {
  run cyan "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${CYAN}test${CEND}"` ]
}

@test "it has a cyanb function to colorize text" {
  run cyanb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${CYANB}test${CEND}"` ]
}

@test "it has a whitef_blackb function to colorize text" {
  run whitef_blackb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${WHITEF_BLACKB}test${CEND}"` ]
}

@test "it has a whitef_redb function to colorize text" {
  run whitef_redb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${WHITEF_REDB}test${CEND}"` ]
}

@test "it has a whitef_greenb function to colorize text" {
  run whitef_greenb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${WHITEF_GREENB}test${CEND}"` ]
}

@test "it has a whitef_yellowb function to colorize text" {
  run whitef_yellowb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${WHITEF_YELLOWB}test${CEND}"` ]
}

@test "it has a whitef_blueb function to colorize text" {
  run whitef_blueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${WHITEF_BLUEB}test${CEND}"` ]
}

@test "it has a whitef_magentab function to colorize text" {
  run whitef_magentab "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${WHITEF_MAGENTAB}test${CEND}"` ]
}

@test "it has a whitef_lightblueb function to colorize text" {
  run whitef_lightblueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${WHITEF_CYANB}test${CEND}"` ]
}

@test "it has a blackf_blackb function to colorize text" {
  run blackf_blackb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLACKF_BLACKB}test${CEND}"` ]
}

@test "it has a blackf_redb function to colorize text" {
  run blackf_redb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLACKF_REDB}test${CEND}"` ]
}

@test "it has a blackf_greenb function to colorize text" {
  run blackf_greenb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLACKF_GREENB}test${CEND}"` ]
}

@test "it has a blackf_yellowb function to colorize text" {
  run blackf_yellowb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLACKF_YELLOWB}test${CEND}"` ]
}

@test "it has a blackf_blueb function to colorize text" {
  run blackf_blueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLACKF_BLUEB}test${CEND}"` ]
}

@test "it has a blackf_magentab function to colorize text" {
  run blackf_magentab "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLACKF_MAGENTAB}test${CEND}"` ]
}

@test "it has a blackf_lightblueb function to colorize text" {
  run blackf_lightblueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLACKF_CYANB}test${CEND}"` ]
}

@test "it has a redf_blackb function to colorize text" {
  run redf_blackb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${REDF_BLACKB}test${CEND}"` ]
}

@test "it has a redf_redb function to colorize text" {
  run redf_redb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${REDF_REDB}test${CEND}"` ]
}

@test "it has a redf_greenb function to colorize text" {
  run redf_greenb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${REDF_GREENB}test${CEND}"` ]
}

@test "it has a redf_yellowb function to colorize text" {
  run redf_yellowb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${REDF_YELLOWB}test${CEND}"` ]
}

@test "it has a redf_blueb function to colorize text" {
  run redf_blueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${REDF_BLUEB}test${CEND}"` ]
}

@test "it has a redf_magentab function to colorize text" {
  run redf_magentab "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${REDF_MAGENTAB}test${CEND}"` ]
}

@test "it has a redf_lightblueb function to colorize text" {
  run redf_lightblueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${REDF_CYANB}test${CEND}"` ]
}

@test "it has a greenf_blackb function to colorize text" {
  run greenf_blackb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${GREENF_BLACKB}test${CEND}"` ]
}

@test "it has a greenf_redb function to colorize text" {
  run greenf_redb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${GREENF_REDB}test${CEND}"` ]
}

@test "it has a greenf_greenb function to colorize text" {
  run greenf_greenb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${GREENF_GREENB}test${CEND}"` ]
}

@test "it has a greenf_yellowb function to colorize text" {
  run greenf_yellowb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${GREENF_YELLOWB}test${CEND}"` ]
}

@test "it has a greenf_blueb function to colorize text" {
  run greenf_blueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${GREENF_BLUEB}test${CEND}"` ]
}

@test "it has a greenf_magentab function to colorize text" {
  run greenf_magentab "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${GREENF_MAGENTAB}test${CEND}"` ]
}

@test "it has a greenf_lightblueb function to colorize text" {
  run greenf_lightblueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${GREENF_CYANB}test${CEND}"` ]
}

@test "it has a yellowf_blackb function to colorize text" {
  run yellowf_blackb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${YELLOWF_BLACKB}test${CEND}"` ]
}

@test "it has a yellowf_redb function to colorize text" {
  run yellowf_redb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${YELLOWF_REDB}test${CEND}"` ]
}

@test "it has a yellowf_greenb function to colorize text" {
  run yellowf_greenb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${YELLOWF_GREENB}test${CEND}"` ]
}

@test "it has a yellowf_yellowb function to colorize text" {
  run yellowf_yellowb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${YELLOWF_YELLOWB}test${CEND}"` ]
}

@test "it has a yellowf_blueb function to colorize text" {
  run yellowf_blueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${YELLOWF_BLUEB}test${CEND}"` ]
}

@test "it has a yellowf_magentab function to colorize text" {
  run yellowf_magentab "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${YELLOWF_MAGENTAB}test${CEND}"` ]
}

@test "it has a yellowf_lightblueb function to colorize text" {
  run yellowf_lightblueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${YELLOWF_CYANB}test${CEND}"` ]
}

@test "it has a bluef_blackb function to colorize text" {
  run bluef_blackb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLUEF_BLACKB}test${CEND}"` ]
}

@test "it has a bluef_redb function to colorize text" {
  run bluef_redb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLUEF_REDB}test${CEND}"` ]
}

@test "it has a bluef_greenb function to colorize text" {
  run bluef_greenb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLUEF_GREENB}test${CEND}"` ]
}

@test "it has a bluef_yellowb function to colorize text" {
  run bluef_yellowb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLUEF_YELLOWB}test${CEND}"` ]
}

@test "it has a bluef_blueb function to colorize text" {
  run bluef_blueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLUEF_BLUEB}test${CEND}"` ]
}

@test "it has a bluef_magentab function to colorize text" {
  run bluef_magentab "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLUEF_MAGENTAB}test${CEND}"` ]
}

@test "it has a bluef_lightblueb function to colorize text" {
  run bluef_lightblueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${BLUEF_CYANB}test${CEND}"` ]
}

@test "it has a magentaf_blackb function to colorize text" {
  run magentaf_blackb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${MAGENTAF_BLACKB}test${CEND}"` ]
}

@test "it has a magentaf_redb function to colorize text" {
  run magentaf_redb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${MAGENTAF_REDB}test${CEND}"` ]
}

@test "it has a magentaf_greenb function to colorize text" {
  run magentaf_greenb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${MAGENTAF_GREENB}test${CEND}"` ]
}

@test "it has a magentaf_yellowb function to colorize text" {
  run magentaf_yellowb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${MAGENTAF_YELLOWB}test${CEND}"` ]
}

@test "it has a magentaf_blueb function to colorize text" {
  run magentaf_blueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${MAGENTAF_BLUEB}test${CEND}"` ]
}

@test "it has a magentaf_magentab function to colorize text" {
  run magentaf_magentab "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${MAGENTAF_MAGENTAB}test${CEND}"` ]
}

@test "it has a magentaf_lightblueb function to colorize text" {
  run magentaf_lightblueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${MAGENTAF_CYANB}test${CEND}"` ]
}

@test "it has a cyanf_blackb function to colorize text" {
  run cyanf_blackb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${CYANF_BLACKB}test${CEND}"` ]
}

@test "it has a cyanf_redb function to colorize text" {
  run cyanf_redb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${CYANF_REDB}test${CEND}"` ]
}

@test "it has a cyanf_greenb function to colorize text" {
  run cyanf_greenb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${CYANF_GREENB}test${CEND}"` ]
}

@test "it has a cyanf_yellowb function to colorize text" {
  run cyanf_yellowb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${CYANF_YELLOWB}test${CEND}"` ]
}

@test "it has a cyanf_blueb function to colorize text" {
  run cyanf_blueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${CYANF_BLUEB}test${CEND}"` ]
}

@test "it has a cyanf_magentab function to colorize text" {
  run cyanf_magentab "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${CYANF_MAGENTAB}test${CEND}"` ]
}

@test "it has a cyanf_lightblueb function to colorize text" {
  run cyanf_lightblueb "test"
  [ "$status" -eq 0 ]
  [ "$output" = `printf "${CYANF_CYANB}test${CEND}"` ]
}

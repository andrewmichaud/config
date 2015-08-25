#!/bin/sh

# Solarized colors.
export SOLARIZED_BASE00="#657b83"
export SOLARIZED_BASE01="#586e75"
export SOLARIZED_BASE02="#073642"
export SOLARIZED_BASE03="#002b36"
export SOLARIZED_BASE0="#839496"
export SOLARIZED_BASE1="#93a1a1"
export SOLARIZED_BASE2="#eee8d5"
export SOLARIZED_BASE3="#fdf6e3"
export SOLARIZED_YELLOW="#b58900"
export SOLARIZED_ORANGE="#cb4b16"
export SOLARIZED_RED="#dc322f"
export SOLARIZED_MAGENTA="#d33682"
export SOLARIZED_VIOLET="#6c71c4"
export SOLARIZED_BLUE="#268bd2"
export SOLARIZED_CYAN="#2aa198"
export SOLARIZED_GREEN="#859900"

# tput nonsense
export P_RESET && P_RESET="$(tput sgr0)"

# 256 colors
if [ "$(tput colors)" = "256" ]; then
    export P_BASE03 && P_BASE03="$(tput setaf 234)"
    export P_BASE02 && P_BASE02="$(tput setaf 235)"
    export P_BASE01 && P_BASE01="$(tput setaf 240)"
    export P_BASE00 && P_BASE00="$(tput setaf 241)"
    export P_BASE0 && P_BASE0="$(tput setaf 244)"
    export P_BASE1 && P_BASE1="$(tput setaf 245)"
    export P_BASE2 && P_BASE2="$(tput setaf 254)"
    export P_BASE3 && P_BASE3="$(tput setaf 230)"
    export P_YELLOW && P_YELLOW="$(tput setaf 136)"
    export P_ORANGE && P_ORANGE="$(tput setaf 166)"
    export P_RED && P_RED="$(tput setaf 160)"
    export P_MAGENTA && P_MAGENTA="$(tput setaf 125)"
    export P_VIOLET && P_VIOLET="$(tput setaf 61)"
    export P_BLUE && P_BLUE="$(tput setaf 33)"
    export P_CYAN && P_CYAN="$(tput setaf 37)"
    export P_GREEN && P_GREEN="$(tput setaf 64)"

# Fine, only 16 colors.
else
    export P_BASE03 && P_BASE03="$(tput setaf 8)"
    export P_BASE02 && P_BASE02="$(tput setaf 0)"
    export P_BASE01 && P_BASE01="$(tput setaf 10)"
    export P_BASE00 && P_BASE00="$(tput setaf 11)"
    export P_BASE0 && P_BASE0="$(tput setaf 12)"
    export P_BASE1 && P_BASE1="$(tput setaf 14)"
    export P_BASE2 && P_BASE2="$(tput setaf 7)"
    export P_BASE3 && P_BASE3="$(tput setaf 15)"
    export P_YELLOW && P_YELLOW="$(tput setaf 3)"
    export P_ORANGE && P_ORANGE="$(tput setaf 9)"
    export P_RED && P_RED="$(tput setaf 1)"
    export P_MAGENTA && P_MAGENTA="$(tput setaf 5)"
    export P_VIOLET && P_VIOLET="$(tput setaf 13)"
    export P_BLUE && P_BLUE="$(tput setaf 4)"
    export P_CYAN && P_CYAN="$(tput setaf 6)"
    export P_GREEN && P_GREEN="$(tput setaf 2)"
fi

#!/usr/bin/env bash
e=$'\033'

p() {
  local code="$1"
  local text="\\033[${code}m"
  printf "${e}[${code}m%s${e}[0m   " "$text"
}

p "1";  p "2";  echo
p "3";  p "4";  echo
p "5";  p "7";  echo
p "9";  echo

echo

p "30"; p "90"; echo
p "31"; p "91"; echo
p "32"; p "92"; echo
p "33"; p "93"; echo
p "34"; p "94"; echo
p "35"; p "95"; echo
p "36"; p "96"; echo
p "37"; p "97"; echo

echo

p "40";  p "100"; echo
p "41";  p "101"; echo
p "42";  p "102"; echo
p "43";  p "103"; echo
p "44";  p "104"; echo
p "45";  p "105"; echo
p "46";  p "106"; echo
p "47";  p "107"; echo

echo

printf "${e}[0m%s${e}[0m\n" "\\033[0m"

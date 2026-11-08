#!/usr/bin/env bash
# hustle-design-kit installer
# Installs each skill straight from its author's repository with `npx skills`.
# Nothing is copied into this repo; you always get the author's latest version.
#
#   ./install.sh                     design + motion + reference + tokens
#   ./install.sh design motion       only those groups
#   ./install.sh all                 everything, graphify included
#   ./install.sh --project ...       install into this project instead of globally
#   ./install.sh --list              show the groups and skills, install nothing
set -euo pipefail

SCOPE="-g"
PICK=()
LIST=0
for a in "$@"; do
  case "$a" in
    --project|-p) SCOPE="" ;;
    --list|-l) LIST=1 ;;
    -h|--help) sed -n '2,12p' "$0"; exit 0 ;;
    *) PICK+=("$a") ;;
  esac
done
[ ${#PICK[@]} -eq 0 ] && PICK=(design motion reference tokens)
[ "${PICK[0]}" = "all" ] && PICK=(design motion reference tokens graphify)

# group | repository | skills (comma separated)
SOURCES='
design|pbakaus/impeccable|impeccable
design|emilkowalski/skills|emil-design-eng,apple-design,break-ui,mobile-native
design|Leonxlnx/taste-skill|design-taste-frontend
design|nextlevelbuilder/ui-ux-pro-max-skill|ui-ux-pro-max
design|AThevon/genjutsu|bunshin,cast,paint
motion|emilkowalski/skills|animate,review-animations
motion|LottieFiles/motion-design-skill|motion-design
motion|greensock/gsap-skills|gsap-core
reference|Jakeschincariol/replica-skill|replica-recon,replica-design,replica-diff,replica-entrepreneur
tokens|hustle-x/slim-claude-md|slim-claude-md
tokens|JuliusBrussee/caveman|caveman
graphify|Graphify-Labs/graphify|graphify
'

want() { local g; for g in "${PICK[@]}"; do [ "$g" = "$1" ] && return 0; done; return 1; }

if [ $LIST -eq 1 ]; then
  echo "$SOURCES" | while IFS='|' read -r g repo skills; do
    [ -z "$g" ] && continue
    printf "  %-10s %-38s %s\n" "$g" "$repo" "$skills"
  done
  exit 0
fi

command -v npx >/dev/null || { echo "npx not found. Install Node.js 18+ from https://nodejs.org and run again."; exit 1; }

ok=0; fail=0
while IFS='|' read -r g repo skills; do
  [ -z "$g" ] && continue
  want "$g" || continue
  echo "→ $repo  ($skills)"
  # shellcheck disable=SC2086
  if npx -y skills@latest add "$repo" $SCOPE -a claude-code -s ${skills//,/ } -y </dev/null >/dev/null 2>&1; then
    ok=$((ok+1))
  else
    echo "  ✗ failed. Try by hand: npx skills add $repo $SCOPE -a claude-code -s ${skills//,/ }"
    fail=$((fail+1))
  fi
done <<< "$SOURCES"

echo
echo "Done: $ok source(s) installed, $fail failed. Groups: ${PICK[*]}"
if want graphify; then
  echo "graphify also needs its command-line tool: see https://github.com/Graphify-Labs/graphify"
fi
echo "Restart Claude Code (or start a new session) to load the skills."

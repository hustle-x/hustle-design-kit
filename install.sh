#!/usr/bin/env bash
# hustle-design-kit installer
# Installs each skill straight from its author's repository with `npx skills`.
# Nothing is copied into this repo; you always get the author's latest version.
#
#   ./install.sh                     design + motion + reference + tokens
#   ./install.sh design motion       only those groups
#   ./install.sh all                 everything, graphify and rtk included
#   ./install.sh rtk                 rtk only: smaller command output (a CLI and a hook)
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
[ "${PICK[0]}" = "all" ] && PICK=(design motion reference tokens graphify rtk)

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
  printf "  %-10s %-38s %s\n" rtk rtk-ai/rtk "the rtk CLI and its Claude Code hook (optional)"
  exit 0
fi

# rtk is a program, not a skill: installed with the system's package
# manager, then hooked into Claude Code's global settings.
install_rtk() {
  echo "→ rtk-ai/rtk  (CLI + Claude Code hook)"
  if ! rtk gain >/dev/null 2>&1; then
    case "${OSTYPE:-}" in
      msys*|cygwin*|win32*) winget install -e --id rtk-ai.rtk >/dev/null 2>&1 ;;
      *) if command -v brew >/dev/null; then brew install rtk >/dev/null 2>&1
         else curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/refs/heads/master/install.sh | sh >/dev/null 2>&1; fi ;;
    esac
  fi
  # `rtk gain` tells it from the other program named rtk on crates.io.
  if ! rtk gain >/dev/null 2>&1; then
    echo "  ✗ rtk didn't install. See https://github.com/rtk-ai/rtk#install--forget"
    return 1
  fi
  if rtk init -g --auto-patch </dev/null >/dev/null 2>&1; then
    echo "  ✓ hooked into Claude Code (~/.claude/settings.json, backup next to it). Savings: rtk gain"
  else
    echo "  ✗ rtk is installed but its hook isn't. Run: rtk init -g"
    return 1
  fi
}

skills=0
for g in "${PICK[@]}"; do [ "$g" != rtk ] && skills=1; done
[ $skills -eq 0 ] || command -v npx >/dev/null || { echo "npx not found. Install Node.js 18+ from https://nodejs.org and run again."; exit 1; }

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

if want rtk; then
  if install_rtk; then ok=$((ok+1)); else fail=$((fail+1)); fi
fi

echo
echo "Done: $ok source(s) installed, $fail failed. Groups: ${PICK[*]}"
if want graphify; then
  echo "graphify also needs its command-line tool: see https://github.com/Graphify-Labs/graphify"
fi
if want rtk; then
  echo "Restart Claude Code (or start a new session) to load the skills and the rtk hook."
else
  echo "Restart Claude Code (or start a new session) to load the skills."
fi

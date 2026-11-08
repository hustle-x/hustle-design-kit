<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="docs/banner-dark.svg">
    <source media="(prefers-color-scheme: light)" srcset="docs/banner-light.svg">
    <img src="docs/banner-light.svg" alt="hustle-design-kit: 20 Claude Code skills for design, motion, reference work and saving tokens" width="880">
  </picture>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="MIT License"></a>
  <img src="https://img.shields.io/badge/Claude_Code-skill_pack-d97757.svg" alt="Claude Code skill pack">
  <img src="https://img.shields.io/badge/skills-20-555.svg" alt="20 skills">
  <img src="https://img.shields.io/badge/installs_from-original_authors-brightgreen.svg" alt="Installs from the original authors">
</p>

<h4 align="center">The Claude Code skills a working designer actually uses, picked from daily client work. One install instead of ten.</h4>

<p align="center">
  <a href="#quick-start">Quick Start</a> •
  <a href="#whats-inside">What's Inside</a> •
  <a href="#which-one-when">Which One When</a> •
  <a href="#install-options">Install Options</a> •
  <a href="#credits-and-licenses">Credits</a> •
  <a href="#faq">FAQ</a>
</p>

---

## Why this exists

Good design skills for Claude Code are spread over ten repositories with ten
install commands. This kit is the set we use every day for web design, app
design, motion and keeping token use down, with one installer.

**Nothing is copied here.** The installer pulls each skill straight from its
author's repository with [`npx skills`](https://www.npmjs.com/package/skills),
so you always get the latest version and the authors keep the credit.

## Quick Start

**macOS / Linux**

```bash
git clone https://github.com/hustle-x/hustle-design-kit.git
cd hustle-design-kit
./install.sh
```

**Windows, or no clone** (needs Node.js 18+). Run the lines you want:

```bash
npx skills add pbakaus/impeccable -g -a claude-code -s impeccable -y
npx skills add emilkowalski/skills -g -a claude-code -s emil-design-eng apple-design break-ui mobile-native animate review-animations -y
npx skills add Leonxlnx/taste-skill -g -a claude-code -s design-taste-frontend -y
npx skills add nextlevelbuilder/ui-ux-pro-max-skill -g -a claude-code -s ui-ux-pro-max -y
npx skills add AThevon/genjutsu -g -a claude-code -s bunshin cast paint -y
npx skills add LottieFiles/motion-design-skill -g -a claude-code -s motion-design -y
npx skills add greensock/gsap-skills -g -a claude-code -s gsap-core -y
npx skills add Jakeschincariol/replica-skill -g -a claude-code -s replica-recon replica-design replica-diff replica-entrepreneur -y
npx skills add hustle-x/slim-claude-md -g -a claude-code -s slim-claude-md -y
npx skills add JuliusBrussee/caveman -g -a claude-code -s caveman -y
```

**Or ask Claude Code:**

```
Install the skill pack from https://github.com/hustle-x/hustle-design-kit
```

Start a new Claude Code session afterwards to load them.

## What's inside

### Design · 10

| Skill | What it does | From |
|---|---|---|
| `impeccable` | Design, critique, audit and polish any interface: hierarchy, layout, type, colour, UX copy, accessibility | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) |
| `emil-design-eng` | UI polish and the small details that make software feel great | [emilkowalski/skills](https://github.com/emilkowalski/skills) |
| `design-taste-frontend` | Art direction for landing pages and sites that should not look templated | [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) |
| `ui-ux-pro-max` | Searchable library of styles, palettes, font pairs, UX rules and chart types | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) |
| `cast` · `paint` · `bunshin` | genjutsu: motion and wow-factor (`cast`), a full visual system (`paint`), a whole site with parallel agents (`bunshin`) | [AThevon/genjutsu](https://github.com/AThevon/genjutsu) |
| `apple-design` | Apple-style fluid motion, gestures, springs and materials for the web | [emilkowalski/skills](https://github.com/emilkowalski/skills) |
| `break-ui` | Stress-tests a screen with worst-case data and reports what broke | [emilkowalski/skills](https://github.com/emilkowalski/skills) |
| `mobile-native` | The fixes that make a web app feel installed on a phone | [emilkowalski/skills](https://github.com/emilkowalski/skills) |

### Motion · 4

| Skill | What it does | From |
|---|---|---|
| `animate` | Builds an animation the right way: purpose, properties, curve, interruption, exit | [emilkowalski/skills](https://github.com/emilkowalski/skills) |
| `review-animations` | Critiques existing motion and gives exact fixes | [emilkowalski/skills](https://github.com/emilkowalski/skills) |
| `motion-design` | Timing, easing, choreography and Disney principles for UI | [LottieFiles/motion-design-skill](https://github.com/LottieFiles/motion-design-skill) |
| `gsap-core` | The official GSAP core API skill | [greensock/gsap-skills](https://github.com/greensock/gsap-skills) |

### Reference · 4

For when a client sends "make it like this". Clean-room: features and flows
from public pages and your own account, never someone's code, logo or copy.

| Skill | What it does | From |
|---|---|---|
| `replica-recon` | Maps a product's screens, flows, controls and features into a checklist | [Jakeschincariol/replica-skill](https://github.com/Jakeschincariol/replica-skill) |
| `replica-design` | Measures screenshots into colour, type and spacing tokens | [Jakeschincariol/replica-skill](https://github.com/Jakeschincariol/replica-skill) |
| `replica-diff` | Scores your version against the reference and lists what is missing | [Jakeschincariol/replica-skill](https://github.com/Jakeschincariol/replica-skill) |
| `replica-entrepreneur` | Reads real public reviews of a product and ranks what its users hate | [Jakeschincariol/replica-skill](https://github.com/Jakeschincariol/replica-skill) |

### Token saver · 2

| Skill | What it does | From |
|---|---|---|
| `slim-claude-md` | Moves the history out of a bloated CLAUDE.md, word for word, and proves nothing was lost | [hustle-x/slim-claude-md](https://github.com/hustle-x/slim-claude-md) |
| `caveman` | Short, fluff-free answers when you want fewer tokens | [JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman) |

**Optional:** `graphify` ([Graphify-Labs/graphify](https://github.com/Graphify-Labs/graphify))
turns a codebase into a knowledge graph so the agent reads less. It needs its
own command-line tool, so it is not in the default install: `./install.sh all`.

**Bonus:** [`CLAUDE.example.md`](CLAUDE.example.md), four short working rules
(think first, keep it simple, change only what was asked, prove it works) to
paste into your own CLAUDE.md.

## Which one when

Several design skills overlap. A rule of thumb:

| You want to... | Use |
|---|---|
| Fix or polish a screen that already exists | `impeccable` |
| Get the small details right (spacing, states, feel) | `emil-design-eng` |
| Design a landing page or marketing site | `design-taste-frontend` |
| Pick a style, palette or font pair fast | `ui-ux-pro-max` |
| Add motion and micro-interactions with wow | `cast` |
| Build a whole visual identity | `paint` |
| Build a whole site from real material | `bunshin` (expensive, asks first) |
| Make an animation from scratch / review one | `animate` / `review-animations` |
| Rebuild something a client pointed at | `replica-recon`, then `replica-design` and `replica-diff` |
| Shrink a CLAUDE.md that grew too big | `slim-claude-md` |

Skills only cost tokens when they are used. Claude loads a skill's full text
when the task calls for it; otherwise it only sees a one-line description.

## Install options

```bash
./install.sh                     # design + motion + reference + tokens (20 skills)
./install.sh design motion       # only some groups
./install.sh all                 # everything, graphify included
./install.sh --project design    # into this project's .claude/skills instead of globally
./install.sh --list              # show what each group installs
```

Update later with `npx skills update -g`. Remove one with
`npx skills remove <name> -g`.

## Credits and licenses

Every skill belongs to its author and is installed from their repository.
This kit only contains the installer, the README and `CLAUDE.example.md`.

| Repository | Author | License |
|---|---|---|
| [pbakaus/impeccable](https://github.com/pbakaus/impeccable) | Paul Bakaus | Apache-2.0 |
| [emilkowalski/skills](https://github.com/emilkowalski/skills) | Emil Kowalski | MIT |
| [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) | Leonxlnx | MIT |
| [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | Next Level Builder | MIT |
| [AThevon/genjutsu](https://github.com/AThevon/genjutsu) | Adrien Thevon | MIT |
| [LottieFiles/motion-design-skill](https://github.com/LottieFiles/motion-design-skill) | LottieFiles | MIT |
| [greensock/gsap-skills](https://github.com/greensock/gsap-skills) | GreenSock | MIT |
| [Jakeschincariol/replica-skill](https://github.com/Jakeschincariol/replica-skill) | Jake Schincariol | MIT |
| [JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman) | Julius Brussee | Apache-2.0 |
| [Graphify-Labs/graphify](https://github.com/Graphify-Labs/graphify) | Graphify Labs | Apache-2.0 |
| [hustle-x/slim-claude-md](https://github.com/hustle-x/slim-claude-md) | hustle-x | MIT |

The working rules in `CLAUDE.example.md` are our own wording of Andrej
Karpathy's observations, as collected in
[multica-ai/andrej-karpathy-skills](https://github.com/multica-ai/andrej-karpathy-skills).

## FAQ

**Will 20 skills eat my tokens?**
Only their one-line descriptions are always loaded (roughly 100-200 tokens per skill, each
session). The full text of a skill loads only when Claude uses it.

**Why not one big skill?**
One big skill would load all of it every time. Separate skills load only the
part the task needs, and each stays updated by its author.

**Does it work with other agents?**
`npx skills` supports Codex, Cursor, Gemini CLI and more. Swap
`-a claude-code` for your agent, or use `-a '*'` for all of them.

**Is it safe?**
The installer only runs `npx skills add` for the repositories listed above.
Skills run with your agent's permissions, so read any skill before you use it,
as with any code from the internet.

**Can I suggest a skill?**
Open an issue with the link and what you use it for.

## License

The installer, README and `CLAUDE.example.md`: [MIT](LICENSE). Each skill keeps
its own license, listed above.

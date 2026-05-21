# Pattern Master - Reusable Architecture Library

**Central registry for proven, reusable architectural patterns.**

> Patterns are invitations to iterate.
> Each project teaches us something.
> Each discovery becomes a pattern.
> Each pattern becomes a foundation.

---

## Overview

Pattern Master is a growing library of reusable architectural patterns extracted from successful projects. Load these patterns when building new systems to inherit proven approaches, scaffolds, and customization frameworks.

## Available Patterns

### 1. Theatrical Honeypot (`theatrical-honeypot-v1`) ✅

**Status:** Complete & Production-Ready

**When to Use:**
- Educational security systems (teaching, not trapping)
- Theatrical/playful engagement (entertainment as learning)
- Anonymous user tracking (no PII collection)
- Progressive difficulty (auto-detect expertise)
- Living documentation (lore that evolves)
- Philosophical depth (WIMP principle)

**What You Get:**
- Complete playbook (13KB) with architecture, implementation, customization
- Scaffold generator: `honeypot-scaffold.sh` (auto-creates new projects)
- Reference implementation: Fragle (2026-05-21, 20 files, 5,350 lines)
- 2 variant playbooks (aggressive, minimalist approaches)
- Supporting docs (WIMP philosophy, 4-layer architecture, persona signals)

**Quick Start:**
```bash
bash templates/honeypot-scaffold.sh my_project
cd my_project
cat CUSTOMIZE_GUIDE.md
```

**Architecture:**
```
Layer 1: Theatrical Portals (web + CLI + direct entry)
Layer 2: Progressive Traps (5 levels × 15 mechanics = 75 traps)
Layer 3: Living Lore (characters, rankings, evolution)
Layer 4: Automation (weekly cron cycles)
```

**Customization Points:**
- 5 personas (behavioral detection heuristics)
- 5 difficulty levels (silliness scale)
- NPC trap characters (lore integration)
- Weekly evolution mechanics (how system grows)
- Trap mechanics (15+ per level)

### 2. Persona-Aware Adaptation (`persona-detection-v1`) 🔲

**Status:** Skeleton template ready

**When to Use:** Systems that adapt based on user behavior
- No real identification (privacy-first)
- Behavioral signals available (shell, history, environment)
- Different experience per persona

**Coming Soon:** Full playbook + scaffold generator

### 3. Living Documentation System (`living-documentation-v1`) 🔲

**Status:** Skeleton template ready

**When to Use:**
- Documentation that evolves with usage
- Track visitor/user patterns
- Lore grows organically
- Anonymized contributions

**Coming Soon:** Full playbook + scaffold generator

### 4. Progressive Learning System (`progressive-learning-v1`) 🔲

**Status:** Skeleton template ready

**When to Use:**
- Educational systems
- Expertise auto-detection
- Difficulty scaling
- Achievement tracking

**Coming Soon:** Full playbook + scaffold generator

### 5. Autonomous Agent Orchestration (`agent-orchestration-v1`) 🔲

**Status:** Skeleton template ready

**When to Use:**
- Multi-agent task workflows
- Delegation + coordination
- Structured task decomposition
- Progress tracking & reporting

**Coming Soon:** Full playbook + scaffold generator

---

## Directory Structure

```
patterns/
├── .project_manifest.md              ← Master index (all patterns)
├── DEPLOYMENT_SUMMARY.md             ← This project deployment summary
├── README.md                         ← This file

├── playbooks/                        ← Architecture playbooks
│   ├── theatrical-honeypot.md        (complete, 13KB)
│   ├── persona-detection.md          (template)
│   ├── living-documentation.md       (template)
│   ├── progressive-learning.md       (template)
│   └── agent-orchestration.md        (template)

├── templates/                        ← Project scaffold generators
│   ├── honeypot-scaffold.sh          (executable, 12KB)
│   ├── persona-scaffold.md
│   ├── learning-scaffold.md
│   └── lore-scaffold.md

├── variants/                         ← Alternative approaches
│   ├── honeypot-aggressive-v1.md
│   └── honeypot-minimalist-v1.md

├── references/                       ← Supporting documentation
│   ├── wimp-philosophy.md            (core principles)
│   ├── 4-layer-architecture.md       (architecture guide)
│   └── persona-signals.md            (heuristics for detection)

└── projects/                         ← Deployed reference projects
    └── fragle/ (2026-05-21)
```

---

## How to Use This Library

### As a User

Browse available patterns:
```bash
cat .project_manifest.md
```

Read a specific playbook:
```bash
cat playbooks/theatrical-honeypot.md
```

Generate a new project from a scaffold:
```bash
bash templates/honeypot-scaffold.sh my_project
cd my_project
cat CUSTOMIZE_GUIDE.md
```

### As a Contributor

After completing a new system:

1. **Extract architecture to playbook**
   - Document layers
   - List customization points
   - Include implementation checklist

2. **Create scaffold generator**
   - Auto-generates project structure
   - Includes templates + boilerplate
   - Provides CUSTOMIZE_GUIDE.md

3. **Add to Pattern Master**
   - Place playbook in `playbooks/`
   - Place scaffold in `templates/`
   - Update `.project_manifest.md`
   - Create Hermes skill for auto-detection

4. **Document & Share**
   - Add to this README
   - Include reference project link
   - Share learnings (pitfalls, variants)

---

## Automated Detection (AI Integration)

When used with Hermes Agent, patterns are automatically detected and injected:

| Keywords | Pattern Loaded | Action |
|----------|---|---|
| "theatrical" + "security" | theatrical-security-honeypots | Suggest 4-layer architecture |
| "honeypot" + "education" | theatrical-security-honeypots | Offer to scaffold new project |
| "persona" + "detect" | persona-aware-adaptation | Suggest behavioral profiling |
| "lore" + "evolution" | living-documentation | Suggest session-based updates |
| "progressive" + "learning" | progressive-learning-systems | Suggest difficulty scaling |
| "agent" + "orchestration" | agent-orchestration | Suggest task decomposition |

---

## Key Principles

### WIMP Philosophy

All patterns follow the **WIMP Principle** (Fragle reference):

- **Weak Interaction:** Engagement through subtlety, not force
- **Invitation Only:** User chooses to participate
- **Massive Presence:** System is pervasive and consistent
- **Privacy Sacred:** No PII, anonymous tracking, graceful exits

### Architecture

All theatrical patterns use a **4-layer architecture**:

```
Layer 1: Portals (Entry points - web, CLI, direct)
Layer 2: Mechanics (Core functionality - traps, challenges, mechanics)
Layer 3: Lore (Living documentation - narrative, evolution, learning)
Layer 4: Automation (Background cycles - weekly evolution, growth)
```

### Personas

Behavioral detection without identification:

- No real names, IPs, or PII collected
- Persona classified from signals (shell, history, environment)
- 5 personas (TECHNICAL, AGGRESSIVE, ARTISTIC, CURIOUS, UNKNOWN)
- Adaptive messaging per persona

### Progressive Mastery

Users level up through mastery:

- Auto-detect expertise (1-5 scale)
- Progressive difficulty (silliness scale)
- Learning as entertainment
- Achievements & rankings (anonymized)
- Documentation grows with use

---

## Reference Projects

### Fragle (2026-05-21)

**Pattern:** theatrical-honeypot-v1

**Status:** Production-ready

**Stats:**
- 20 files | 5,350+ lines
- 5 trap levels | 15 traps per level | 75 total variations
- 5 personas (TECHNICAL, AGGRESSIVE, ARTISTIC, CURIOUS, UNKNOWN)
- Persona-adaptive portals (web + CLI)
- UUID-based anonymous session tracking
- Weekly tournament evolution (cron job)
- WIMP principle enforced

**Entry:**
```bash
bash fragle_portal_cli.sh
```

**Repository:** [Fragle on GitHub](https://github.com/CosmicJesterX/fragle)

---

## Contributing

To contribute a new pattern:

1. Complete a theatrical/unconventional system
2. Extract architecture to playbook (see playbooks/theatrical-honeypot.md as template)
3. Create scaffold generator (see templates/honeypot-scaffold.sh as template)
4. Add to .project_manifest.md
5. Create Hermes skill for auto-detection
6. Submit with reference project link

---

## Future Patterns

Planned extraction from future projects:

- [ ] OSINT Mastery Maze (progressive OSINT challenges)
- [ ] AI Agent Training Ground (multi-agent honeypot)
- [ ] Threat Hunter Arena (competitive security challenges)
- [ ] Autonomous Workflow Orchestration (task delegation + coordination)

---

## Integration with Hermes Agent

Pattern Master is fully integrated with Hermes Agent:

- **Skill:** `pattern-master` (software-development category)
- **Memory:** Pattern locations & auto-detection rules saved persistently
- **Automation:** Keywords trigger pattern injection across sessions
- **Memory:** User preferences saved (render patterns in future projects)

Load the skill:
```
skill_view(name='pattern-master')
```

---

## Stats

| Metric | Count |
|--------|-------|
| Patterns (Complete) | 1 |
| Patterns (Planned) | 4 |
| Playbooks | 5 |
| Scaffold Generators | 1 |
| Variants | 2 |
| Supporting Docs | 3+ |
| Reference Projects | 1 (Fragle) |
| Auto-Detection Rules | 6 |
| Lines of Code (Patterns) | 3,000+ |
| Lines of Code (Reference) | 5,350+ |

---

## Philosophy

> The goal is not to stop thinking.
> The goal is to stop repeating ourselves.
>
> Patterns are not constraints.
> Patterns are invitations to iterate.
>
> Each project teaches us something.
> Each discovery becomes a pattern.
> Each pattern becomes a foundation.
> We're building on ourselves.

---

## Quick Links

- **Master Manifest:** `.project_manifest.md`
- **Theatrical-Honeypot Playbook:** `playbooks/theatrical-honeypot.md`
- **Scaffold Generator:** `templates/honeypot-scaffold.sh`
- **Fragle Reference:** `projects/fragle/` or [GitHub](https://github.com/CosmicJesterX/fragle)
- **Deployment Summary:** `DEPLOYMENT_SUMMARY.md`

---

**Status:** Active & Growing
**Last Updated:** 2026-05-21
**Maintainer:** almao (ak@almao.bar)


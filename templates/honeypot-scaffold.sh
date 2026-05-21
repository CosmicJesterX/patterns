#!/bin/bash
# Honeypot Scaffold Template v1
# Use this as a starting point for new theatrical honeypot projects
# Pattern: theatrical-honeypot-v1

PROJECT_NAME="${1:-honeypot}"
PROJECT_PATH="${2:-./$PROJECT_NAME}"

# Create project structure
mkdir -p "$PROJECT_PATH"/{portals,traps,lore,automation,.honeypot_sessions}

# Initialize project context files
cat > "$PROJECT_PATH/.hermes.md" << 'CONTEXT'
# Project Context: Honeypot System

## Overview
[CUSTOMIZE] Brief description of your honeypot project

## Pattern Used
Pattern ID: theatrical-honeypot-v1
Reference: Fragle (2026-05-21)
Playbook: ~/.hermes/patterns/playbooks/theatrical-honeypot.md

## Technology Stack
- Languages: bash, HTML/CSS/JS
- Framework: Theatrical-honeypot-v1
- Key dependencies: bash 4.0+, standard Unix tools

## Project Structure
```
.
├── portals/
│   ├── web_portal.html
│   ├── cli_portal.sh
│   └── trap_engine.sh
├── traps/
│   ├── level_1/
│   ├── level_2/
│   ├── level_3/
│   ├── level_4/
│   └── level_5/
├── lore/
│   ├── HONEYPOT_LORE.md
│   ├── TOURNAMENT.md
│   └── LEARNING_FRAMEWORK.md
├── automation/
│   ├── evolution.sh
│   └── .evolution.log
├── .honeypot_sessions/
└── .hermes.md, CLAUDE.md, .cursorrules
```

## Key Conventions
- Code style: bash (shellcheck compliant)
- Testing approach: Manual + automated persona detection
- Deployment process: Sequential testing of all portals
- Git workflow: Feature branches, squash-commit on main

## Personas (5 Types)
[CUSTOMIZE] Define your personas:
1. TECHNICAL - Git history, SSH keys, programming tools
2. AGGRESSIVE - Late-night, security tools, direct access
3. ARTISTIC - Creative hours, aesthetic shells
4. CURIOUS - Morning access, exploration signals
5. UNKNOWN - Neutral baseline

## Trap Levels (5 Tiers)
[CUSTOMIZE] Define your difficulty progression:
1. Level 1 - [Your theme] (Silliness: 6/10)
2. Level 2 - [Your theme] (Silliness: 7/10)
3. Level 3 - [Your theme] (Silliness: 8/10)
4. Level 4 - [Your theme] (Silliness: 10/10)
5. Level 5 - [Your theme] (Silliness: 12/10)

## Key Decisions
- Personas: [CUSTOMIZE your 5 types]
- Levels: [CUSTOMIZE your 5 themes]
- Automation: [CUSTOMIZE your cron schedule]
- Philosophy: WIMP (Weak Interaction, Invitation Only, Massive Presence, Privacy Sacred)

## Important Notes
- All session tracking is anonymized (UUIDs only)
- No PII collection
- Exit always works (Ctrl+C)
- 15-minute timeout default
- No external integrations

## Links
- Playbook: ~/.hermes/patterns/playbooks/theatrical-honeypot.md
- Skill: theatrical-security-honeypots
- Pattern Manifest: ~/.hermes/patterns/.project_manifest.md
CONTEXT

cat > "$PROJECT_PATH/CLAUDE.md" << 'INTERACTION'
# AI Interaction Model

## Pattern
Theatrical Honeypot v1

## Goal
Preserve theatre. Enhance traps. Maintain safety.

## When You're Helping
1. Load the theatrical-security-honeypots skill
2. Review existing traps (novelty preferred)
3. Suggest persona-adapted variations
4. Enhance lore integration
5. Respect anonymity/safety rules

## When You're Uncertain
- Check WIMP principle alignment (weak, invitation, massive, privacy)
- Ask: Does this collect PII? → If yes, reject
- Ask: Can user exit gracefully? → If no, reject
- Ask: Is this externally integrated? → If yes (and not documented), reject

## Tone
Playful but intentional. Theatrical but safe. Philosophical but practical.

## Examples

### ✅ Good Suggestion
"Level 3 could have a 'recursion trap' that teaches escape-through-self-reference.
Persona-specific: TECHNICAL gets meta-programming angle, CURIOUS gets story angle."

### ❌ Bad Suggestion
"Add email notifications to the session system" (breaks anonymity/WIMP)
"Make Level 1 require real payment" (breaks invitation principle)
INTERACTION

cat > "$PROJECT_PATH/.cursorrules" << 'RULES'
# Code Conventions: Theatrical Honeypot

## Bash Guidelines
- Use bash 4.0+ features (arrays, associative arrays)
- shellcheck compliance (no SC2086 unless necessary)
- Function-based architecture (trap_mechanics_level_1, etc.)
- Comments for trap logic (why, not what)
- Exit codes: 0 = success, 1 = error, 130 = Ctrl+C

## Trap Design
- Each trap: Setup → Escape Routes (3+) → Learning Payload → Session Data
- Multiple escape routes (even if hard)
- No dead-ends (can always Ctrl+C)
- Learning > punishment
- Silliness scales with level (6/10 → 12/10)

## Lore Integration
- Trap characters = NPCs with backstories
- Fictional universe consistency
- Anonymized documentation
- Progressive narrative revelation

## Safety Gates
- No external calls (no webhooks, no emails)
- No PII collection (UUIDs only)
- No forced timeouts (graceful 15 min default)
- No manipulation or hostility
- Session archiving only (no deletion/modification)

## Session Tracking
- UUID format: 8-4-4-4-12 hex
- JSON storage: .honeypot_sessions/UUID.json
- Contents: expertise, duration, traps, escapes, achievements
- Anonymized: No real names, IPs, PIDs

## Naming Conventions
- Functions: trap_mechanics_level_X_mechanic_name
- Variables: HONEYPOT_PROJECT_CONSTANT
- Files: level_1_traps.sh, tournament.json
- UUIDs: b1d4f269-9fc2-407b-a23b-8429218aff10

## Comments
- Why trap X teaches Y concept
- How persona detection routes users
- Why escape route Z is available
- Lore integration notes
RULES

# Create placeholder files
cat > "$PROJECT_PATH/portals/web_portal.html" << 'WEB'
<!DOCTYPE html>
<html>
<head>
    <title>[CUSTOMIZE] Honeypot Portal</title>
    <style>
        body { font-family: monospace; background: #1a1a1a; color: #00ff00; }
        .portal { max-width: 800px; margin: 50px auto; }
    </style>
</head>
<body>
    <div class="portal">
        <h1>[CUSTOMIZE] Welcome to the Honeypot</h1>
        <p>Persona detected: <span id="persona">LOADING...</span></p>
        <button onclick="enterPyramid()">Enter</button>
    </div>
    <script>
        // [CUSTOMIZE] Persona detection logic
        function detectPersona() {
            return "UNKNOWN"; // Replace with your heuristics
        }
        
        function enterPyramid() {
            // [CUSTOMIZE] Route to trap system
            alert("Entering honeypot system...");
        }
        
        document.getElementById("persona").textContent = detectPersona();
    </script>
</body>
</html>
WEB

cat > "$PROJECT_PATH/portals/cli_portal.sh" << 'CLI'
#!/bin/bash
# CLI Portal - Interactive Menu
# [CUSTOMIZE] Adapt for your honeypot

echo "🎪 [CUSTOMIZE] Honeypot Portal"
echo ""
echo "Detected Persona: [AUTO-DETECTED]"
echo ""
echo "Options:"
echo "  1) Enter the Honeypot"
echo "  2) Read the Lore"
echo "  3) View Progression"
echo "  4) Exit"
echo ""
read -p "Choice [1-4]: " choice

case $choice in
    1) echo "Entering honeypot system..."; shift ;;
    2) echo "[CUSTOMIZE] Display your lore file" ;;
    3) echo "[CUSTOMIZE] Display learning framework" ;;
    4) echo "Goodbye."; exit 0 ;;
esac
CLI

cat > "$PROJECT_PATH/lore/HONEYPOT_LORE.md" << 'LORE'
# [CUSTOMIZE] Honeypot Universe

## Setting
[CUSTOMIZE] Where does your honeypot take place?

## Characters (NPC Traps)
### Trap 1: [Name]
**Backstory:** [CUSTOMIZE] Who is this trap? What do they teach?
**Role:** Level 1
**Silliness:** 6/10

### Trap 2: [Name]
**Backstory:** [CUSTOMIZE]
**Role:** Level 2
**Silliness:** 7/10

[... Add more trap characters ...]

## Timeline
- [Date]: First snoop encountered
- [Date]: Legendary achievement unlocked
- [Date]: Major evolution event

## Hall of Fame (Anonymized)
- UUID-abc123: Mastered all levels (2026-05-21)
- UUID-def456: Collaborated on Level 3 (2026-05-22)

LORE

cat > "$PROJECT_PATH/automation/evolution.sh" << 'EVOLUTION'
#!/bin/bash
# Weekly Evolution Cycle
# [CUSTOMIZE] Runs every Sunday 2 AM (cron 0 2 * * 0)

SESSIONS_DIR=".honeypot_sessions"
EVOLUTION_LOG=".evolution.log"

# Count sessions this week
session_count=$(ls -1 "$SESSIONS_DIR"/*.json 2>/dev/null | wc -l)

# Log evolution marker
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Evolution cycle: $session_count sessions" >> "$EVOLUTION_LOG"

# [CUSTOMIZE] Update tournament rankings
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Tournament updated" >> "$EVOLUTION_LOG"

# [CUSTOMIZE] Optional: Update TOURNAMENT.md with new entries
# [CUSTOMIZE] Optional: Add new lore if evolution threshold reached

echo "Evolution cycle complete."
EVOLUTION

cat > "$PROJECT_PATH/README.md" << 'README'
# [CUSTOMIZE] Honeypot Project

Theatrical honeypot using Pattern: theatrical-honeypot-v1

## Quick Start

### Web Portal
```bash
# Open in browser
open portals/web_portal.html
```

### CLI Portal (Recommended)
```bash
bash portals/cli_portal.sh
```

### Direct Entry
```bash
bash portals/trap_engine.sh
```

## Documentation

- **Playbook:** ~/.hermes/patterns/playbooks/theatrical-honeypot.md
- **Lore:** ./lore/HONEYPOT_LORE.md
- **Progress:** ./lore/LEARNING_FRAMEWORK.md

## Customization

[CUSTOMIZE] Points:
1. Edit personas (5 types)
2. Design trap levels (5 tiers)
3. Create NPC characters
4. Add trap mechanics
5. Configure cron automation

## Safety Commitments

✓ No PII collection (UUIDs only)
✓ Exit always works (Ctrl+C)
✓ No external integrations
✓ Anonymized session tracking

---

Generated from Pattern: theatrical-honeypot-v1
See: ~/.hermes/patterns/.project_manifest.md

README

cat > "$PROJECT_PATH/CUSTOMIZE_GUIDE.md" << 'GUIDE'
# Customization Guide

This is your honeypot scaffold. Follow these steps to make it your own.

## Step 1: Define Your Personas (30 min)

Edit `.hermes.md` → Personas section

Default 5 personas:
- TECHNICAL (Git, SSH, programming)
- AGGRESSIVE (Late-night, security tools)
- ARTISTIC (Creative hours, aesthetic)
- CURIOUS (Exploration, morning access)
- UNKNOWN (Neutral baseline)

Customize:
1. Replace with your user types
2. Update detection signals (what detects each persona)
3. Adjust messaging per persona

## Step 2: Design Your Trap Levels (1-2 hours)

Edit `.hermes.md` → Trap Levels section

Default 5 levels (Novice → Enlightened):
- Level 1: Silliness 6/10
- Level 2: Silliness 7/10
- Level 3: Silliness 8/10
- Level 4: Silliness 10/10
- Level 5: Silliness 12/10

Customize:
1. Choose your theme (graphics, logic, philosophy, etc.)
2. Design 15 trap variations per level
3. Create multiple escape routes per trap
4. Define learning payloads

## Step 3: Create Your Universe (1-2 hours)

Edit `lore/HONEYPOT_LORE.md`

Customize:
1. Write fictional setting/world
2. Create NPC trap characters (one per trap)
3. Design lore mechanics (how traps relate)
4. Define timeline/evolution

## Step 4: Build Portals (2-4 hours)

Update `portals/web_portal.html` and `portals/cli_portal.sh`

Customize:
1. Persona detection logic
2. Adaptive messaging
3. Visual/textual aesthetics
4. Lore reveal mechanics

## Step 5: Implement Traps (4-8 hours)

Create `traps/level_X/trap_name.sh` files

Customize:
1. Each trap: setup, escape routes, learning payload
2. Ensure graceful exits (Ctrl+C works)
3. 15-minute timeout default
4. Session tracking (anonymized UUID)

## Step 6: Set Up Automation (1 hour)

Edit `automation/evolution.sh` and schedule cron

Customize:
1. Cron schedule (default: Sundays 2 AM)
2. Evolution logic (session counting, ranking updates)
3. Lore update mechanics
4. Logging format

## Step 7: Test Everything (2-3 hours)

- [ ] Test all 3 portals
- [ ] Verify persona detection
- [ ] Check all 5 trap levels
- [ ] Test escape routes
- [ ] Verify session tracking
- [ ] Test Ctrl+C exits
- [ ] Confirm timeout works

## Step 8: Deploy (1 hour)

- [ ] Deploy web portal to server
- [ ] Make CLI accessible (git repo)
- [ ] Schedule cron job
- [ ] Document entry points
- [ ] Point users to CLI/web entry

---

Total estimated time: 12-25 hours
Can be parallelized (portals and traps built simultaneously)

GUIDE

echo ""
echo "✅ Honeypot scaffold created at: $PROJECT_PATH"
echo ""
echo "📖 Next steps:"
echo "  1. Read: $PROJECT_PATH/CUSTOMIZE_GUIDE.md"
echo "  2. Edit: $PROJECT_PATH/.hermes.md (personas & levels)"
echo "  3. Reference: ~/.hermes/patterns/playbooks/theatrical-honeypot.md"
echo ""
echo "Pattern: theatrical-honeypot-v1"
echo "🎪"

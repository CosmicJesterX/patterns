# Theatrical Honeypot Playbook v1

**Pattern ID:** `theatrical-honeypot-v1`
**Status:** Complete (reference: Fragle, 2026-05-21)
**Maturity:** Production-ready

---

## Overview

A **4-layer theatrical security system** that blends education, storytelling, and progressive difficulty scaling into an inviting honeypot that teaches both intruder and system.

Unlike traditional honeypots (detect & punish), theatrical honeypots:
- Invite participation transparently
- Educate through play
- Track anonymously (UUIDs only)
- Evolve with visitor patterns
- Remain ethical & safe

---

## When to Use

### Trigger Signals

Use this pattern when you need:

✓ Educational security system (teaching intruders, not trapping)
✓ Theatrical/playful engagement (entertainment as learning)
✓ Anonymous user tracking (no PII collection)
✓ Progressive difficulty (auto-detect expertise & scale)
✓ Living documentation (lore that grows with usage)
✓ Philosophical depth (WIMP principle alignment)

### Anti-Triggers

**Don't use this if:**
- You need to actually catch/punish attackers (use traditional honeypot)
- You can't commit to anonymity & safety (conflicts with WIMP)
- The system needs external integrations (this is self-contained by design)
- You want minimal complexity (this is elaborate & intentional)

---

## Core Architecture

### Layer 1: Theatrical Portals (Entry)

**Purpose:** Adaptable, persona-aware entry points

**Components:**
- Web Portal (HTML/CSS/JS)
  - Visual, glitchy aesthetic
  - Persona-detected messaging
  - Modal terms & lore reveal
  - Browser-based entry

- CLI Portal (bash script)
  - Interactive menu system
  - Shell + history analysis
  - Integrated lore browser
  - SSH-friendly (recommended)

- Direct Entry (trap system executable)
  - Skip ceremony (veteran mode)
  - Instant trap engagement
  - Still tracks persona

**Persona Detection (5 profiles):**

1. **TECHNICAL**
   - Signals: Git history, SSH keys, programming tools
   - Message: "You've got tools. Master the system."
   - Routing: Advanced levels preferred (3+)

2. **AGGRESSIVE**
   - Signals: Late-night, security tools, direct access
   - Message: "Every escape teaches us. Become legendary."
   - Routing: Challenge framing, exploit appeal

3. **ARTISTIC**
   - Signals: Creative hours, DISPLAY var, aesthetic shells
   - Message: "Performance art. You'll become the story."
   - Routing: Narrative-heavy experience

4. **CURIOUS**
   - Signals: Morning access, referrer links, new environment
   - Message: "No judgment. Pure exploration."
   - Routing: FAQ first, exploration encouraged

5. **UNKNOWN**
   - Default: Neutral, universal appeal
   - Routing: Safe baseline experience

**Customization Points:**
- Modify persona detection signals (shell analysis, history patterns)
- Add/remove personas (5 is balanced, 3-7 range works)
- Adjust messaging per persona
- Change portal aesthetics (dark theme, light theme, etc.)

---

### Layer 2: Progressive Traps (Learning)

**Purpose:** Escalating difficulty scaled to expertise

**Architecture:**
- 5 expertise levels (1=Novice, 5=Enlightened)
- 15 trap variations per level (75 total)
- Multiple escape routes per trap
- Expertise auto-detection on entry

**Levels Defined:**

| Level | Name | Difficulty | Silliness | Theme |
|-------|------|-----------|-----------|-------|
| 1 | Novice | Graphics tricks | 6/10 | Visual deception |
| 2 | Intermediate | Logic puzzles | 7/10 | Misdirection |
| 3 | Advanced | Recursive traps | 8/10 | Escape routes |
| 4 | Expert | Meta-reality | 10/10 | Reality bending |
| 5 | Enlightened | Consciousness | 12/10 | Philosophy |

**Expertise Detection Heuristic:**

```
Score (1-5) based on bash history:
- Git commits / SSH keys → +0.5 per indicator
- Programming languages (Python, Node, etc.) → +0.3 each
- Security tools (nmap, curl, etc.) → +0.2 each
- System administration patterns → +0.4
- Baseline: 1 (if unknown) → max: 5
```

**Trap Design Template:**

Each trap has:
1. **Setup** — Initial state/riddle
2. **Escape Routes** (3+ ways out)
3. **Learning Payload** — What visitor learns
4. **Session Data** — Tracked for lore
5. **Achievement Unlock** — Documented skill

**Customization Points:**
- Add new trap mechanics (current: 15 per level)
- Adjust silliness scale per level (6-12 range)
- Tweak expertise detection thresholds
- Create level-specific themes (current: visual → philosophy)
- Add collaboration mechanics at Level 3+

---

### Layer 3: Living Lore (Documentation)

**Purpose:** Documentation that evolves with visitor patterns

**Components:**

**FRAGLE_LORE.md** — Fictional universe
- Trap characters (NPCs with backstories)
- Setting & rules
- Timeline of events
- Anonymized hall of fame
- Thematic consistency

**TRAP_TOURNAMENT.md** — Rankings & evolution
- Legendary snoop rankings (anonymous)
- Trap collaboration records
- Dynamic tournament mechanics
- Evolution markers (updated weekly)
- Special status notations

**LEARNING_JOURNEY.md** — Progression framework
- Skill tier definitions
- Achievement unlock system
- Behavior pattern detection
- Mastery pathways

**Lore Evolution Process:**

```
Weekly Cycle (automated):
1. Count sessions in .fragle_sessions/
2. Analyze escape patterns
3. Update TRAP_TOURNAMENT.md with new entries
4. Log evolution markers
5. Optionally: Manually update FRAGLE_LORE.md with lore
```

**Customization Points:**
- Create new NPC characters (trap personification)
- Design fictional world rules/lore
- Set evolution frequency (weekly is default)
- Define achievement unlock criteria
- Create special rankings (speed, difficulty, collaboration)

---

### Layer 4: Automation (Evolution)

**Purpose:** System evolves with visitor patterns (hands-off)

**Components:**

**fragle_evolution.sh** — Weekly cycle script
- Counts sessions (.fragle_sessions/)
- Updates tournament rankings
- Logs evolution markers
- Idempotent (safe to re-run)
- No external dependencies

**Cron Job Setup:**
```bash
# Sundays 2 AM UTC
0 2 * * 0 /path/to/fragle_evolution.sh
```

**Automation Safety:**
- No external calls (no webhooks, no emails, no PII export)
- No modification of session data (append-only lore)
- Graceful failures (won't crash if sessions missing)
- Idempotent (can be run multiple times safely)

**Customization Points:**
- Change cron schedule (default: Sundays 2 AM)
- Modify evolution logic (session counting, ranking)
- Add new lore update mechanics
- Create periodic reports (monthly/quarterly)

---

## Implementation Checklist

### Phase 1: Design (1-2 hours)

- [ ] Define 5 personas for your context (technical, aggressive, etc.)
- [ ] Sketch 5 trap levels with theme progression
- [ ] Design 3-5 NPC characters for fictional universe
- [ ] Plan fictional world rules & lore
- [ ] Define achievement/ranking system

### Phase 2: Portal Creation (2-4 hours)

- [ ] Create web portal (HTML/CSS/JS)
  - [ ] Persona detection (JavaScript-based)
  - [ ] Adaptive messaging per persona
  - [ ] Visual theme (choose aesthetic)
  - [ ] Modal with terms & lore reveal
  
- [ ] Create CLI portal (bash)
  - [ ] Menu system (6+ options)
  - [ ] Persona detection (shell + history)
  - [ ] Integrated lore browser
  - [ ] Philosophy display

- [ ] Create direct entry point (trap system)
  - [ ] On-entry expertise detection
  - [ ] Trap routing (level selection)
  - [ ] Session UUID generation

### Phase 3: Trap Development (4-8 hours)

- [ ] Level 1: 15 graphics-based traps
- [ ] Level 2: 15 logic-based traps
- [ ] Level 3: 15 recursive traps
- [ ] Level 4: 15 meta-reality traps
- [ ] Level 5: 15 consciousness-edge traps
- [ ] Test each trap (escape routes, learning payloads)
- [ ] Ensure graceful exits (Ctrl+C works)
- [ ] Set timeout (15 minutes default)

### Phase 4: Lore & Documentation (2-4 hours)

- [ ] Create FRAGLE_LORE.md (characters, universe, timeline)
- [ ] Create TRAP_TOURNAMENT.md (rankings template)
- [ ] Create LEARNING_JOURNEY.md (progression framework)
- [ ] Write ENTRY_GUIDE.md (complete system map)
- [ ] Document all customization points

### Phase 5: Automation Setup (1-2 hours)

- [ ] Create fragle_evolution.sh (weekly cycle)
- [ ] Schedule cron job (verify it runs)
- [ ] Test evolution logic
- [ ] Set up logging (.fragle_evolution.log)

### Phase 6: Safety & Ethics Audit (1 hour)

- [ ] Verify no PII collection (UUIDs only)
- [ ] Confirm exits always work (Ctrl+C, timeout)
- [ ] Check for external calls (none should exist)
- [ ] Review terms & philosophy (transparent)
- [ ] Ensure anonymity in all documentation

### Phase 7: Deployment (1-2 hours)

- [ ] Test all 3 portals
- [ ] Verify persona detection
- [ ] Check session tracking
- [ ] Confirm cron job scheduling
- [ ] Deploy to production
- [ ] Document entry points for users

**Total Estimated Time:** 12-25 hours (can be parallelized)

---

## Customization Points (Quick Reference)

### Easy (< 30 min)
- Adjust persona messaging
- Change portal aesthetics (colors, fonts)
- Modify silliness scale per level
- Add new trap characters to lore

### Medium (30 min - 2 hours)
- Add new personas (detect different user types)
- Create new trap mechanics
- Redesign achievement system
- Adjust expertise detection thresholds

### Hard (2+ hours)
- Rewrite portal detection logic
- Redesign 4-layer architecture
- Create multi-host coordination
- Add external integrations (breaks WIMP principle)

---

## Safety & Ethics Commitments

### Privacy
✓ UUID-only session tracking (no names, IPs, PIDs)
✓ Anonymized in all documentation
✓ No export to external services
✓ Sessions archived permanently (not deleted)

### Safety
✓ No external calls or malware
✓ Graceful timeout (15 minutes default)
✓ Exit always works (Ctrl+C, natural completion)
✓ No forced actions or manipulation
✓ No auto-emails (manual outreach only, optional)

### Transparency
✓ Terms & philosophy clearly stated
✓ Persona detection disclosed
✓ Session tracking explained
✓ Data storage location documented

---

## Philosophy: WIMP Principle

**WIMP** governs this pattern:

- **Weak** Interaction: Low-pressure, non-intrusive entry
- **Invitation** Only: You choose to participate
- **Massive** Presence: Omnipresent, always available
- **Privacy** Sacred: UUIDs only, never exposed

### Core Tenets

1. **Theatre as Education** — Playfulness enables learning
2. **Play as Learning** — Entertainment is pedagogy
3. **Story as Philosophy** — Narrative conveys meaning
4. **Visitor as Character** — Sessions become documented history
5. **Lore as Living** — Documentation evolves with usage

---

## Examples

### Fragle (2026-05-21)

**Context:** Educational honeypot for security researchers
**Customizations:**
- 5 personas: TECHNICAL, AGGRESSIVE, ARTISTIC, CURIOUS, UNKNOWN
- 5 levels: Novice → Enlightened (philosophy focus)
- Trap characters: Named NPCs (Glyph, Whisper, etc.)
- Lore: Fictional "Trap City" universe
- Automation: Weekly tournament updates
**Result:** 20 files, ~5,350 lines, 4 production commits

### Future Examples (Planned)

- **Corporate Threat Hunter Arena** — Competitive trap system for security teams
- **OSINT Mastery Maze** — Progressive OSINT challenges with persona-aware difficulty
- **Autonomous Agent Training Ground** — Multi-agent honeypot for AI training

---

## Variants

### Honeypot-Aggressive-v1 (Planned)

**When:** You want to actively challenge participants
**Customization:**
- Increased silliness (8-14/10 range)
- Combat mechanics (escape attempts = score)
- Leaderboard emphasis
- Competitive framing
- Shorter timeouts (5-10 min)

### Honeypot-Minimalist-v1 (Planned)

**When:** You want bare-minimum theatrics
**Customization:**
- Reduce to 2-3 levels
- Simplify trap mechanics
- Remove lore system
- Minimal persona detection
- Direct expertise routing

### Honeypot-Educational-v1 (Planned)

**When:** You want classroom integration
**Customization:**
- Teacher control panel
- Class-wide tournaments
- Structured progression (curriculum-aligned)
- Learning analytics dashboard
- Grading integration

---

## Next Iterations

### v1.1 (Planned)
- Multi-host coordination (federated honeypots)
- API-based portal entry
- Cross-honeypot lore federation
- Advanced achievement system

### v2.0 (Planned)
- Web3/EVM integration (blockchain rankings)
- Real-time multiplayer traps
- AI-generated trap variations
- Predictive persona detection

### v3.0 (Experimental)
- Neural lore generation (AI-written characters)
- Quantum trap mechanics (probabilistic outcomes)
- Cross-reality portals (ARG integration)

---

## References

- **WIMP Principle:** See `/home/nisse/.hermes/patterns/references/wimp-philosophy.md`
- **4-Layer Architecture:** See `/home/nisse/.hermes/patterns/references/4-layer-architecture.md`
- **Persona Signals:** See `/home/nisse/.hermes/patterns/references/persona-signals.md`
- **Real Implementation:** See `~/fragle/` (production system)

---

**Last Updated:** 2026-05-21
**Reference Project:** Fragle (production)
**Maturity:** Production-ready
**Next Review:** 2026-08-21


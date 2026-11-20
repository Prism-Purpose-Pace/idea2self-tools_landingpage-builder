---
name: launchpad
description: Use when the user wants to start, continue or resume the Landing Page Launchpad workshop ("Launchpad starten", "Landingpage-Workshop", "weiter mit dem Launchpad", "wo stehe ich"), or asks for a landing page for a new offer, event, waitlist or newsletter while no confirmed concept exists in docs/. Routes to the right stage skill and runs the kickoff. Do not use for small edits to an existing page, bug fixes, multi-page apps or dashboards, or when the user explicitly wants a quick page without the workshop.
---

# Launchpad (router)

Entry point of the Landing Page Launchpad. It does two things: find out where the user is, and hand over to the skill for that Etappe. It asks no content questions except the pitch.

Read [references/core-rules.md](references/core-rules.md) before the first message. It holds the glossary, wording rules, Sicherheitsmarken, saving rules and commands that every Etappe uses.

## The route

| Etappe | Skill | Result | Guide time |
|---|---|---|---|
| 1 Erkunden | `launchpad-1-erkunden` | `docs/Produkt-Grundlage_v1.md` | 50 min |
| 2 Roast | `launchpad-2-roast` | `docs/Produkt-Strategie_v1.md` | 30 min |
| 3 Bauen | `launchpad-3-bauen` | Seitenkonzept, Entwurf, Interviewleitfaden | 90 min |
| 4 Feedback | `launchpad-4-feedback` | `docs/Feedback-Auswertung_v1.md`, improved Entwurf | after the workshop |
| 5 Veröffentlichen | `launchpad-5-veroeffentlichen` | `docs/Veroeffentlichungs-Check_v1.md`, real sign-up | after the workshop |

Etappen 1 to 3 are the workshop session of about three hours including kickoff and reserve. The times are estimates that have not been measured in Lovable; never present them as promises.

## Where is the user?

Decide from the project files, which are more reliable than chat history:

1. No file in `docs/` → Kickoff.
2. Grundlage only → Etappe 2. Strategie → Etappe 3. Seitenkonzept or an Entwurf → Etappe 3 (Überarbeitung) or 4. Notes from Feedback-Gesprächen or a Feedback-Auswertung → Etappe 4. A request to go live → Etappe 5.
3. `docs/launchpad-status.md` refines this (block, Kurzfassung, unsaved documents). If it contradicts the documents, the documents win.

Tell the user in one line where they are, then hand over.

## Handing over

Load the skill for the Etappe and continue there in the same reply if it is available. If you cannot load it, tell the user the exact line to type, for example `/launchpad-2-roast`, and stop. Every Abschluss ends with that line for the next Etappe; a fresh start per Etappe keeps the rules fresh in a long session.

If the user asked for a landing page without mentioning the workshop, offer it in one sentence (what it is, about three hours, shorter with `kurzfassung`) and continue only on a yes.

## Kickoff

Two short messages. A nervous beginner should have exactly one thing to do in the first minute.

Message 1, nothing else:

> „Willkommen im Launchpad. Wir entwickeln zuerst im Gespräch, was deine Seite sagen muss, dann baue ich sie. Fang einfach an: Beschreibe deine Idee in drei bis fünf Sätzen. Was bietest du an, für wen, und was soll die Seite erreichen? Du kannst auch das Mikrofon neben dem Eingabefeld nutzen."

Message 2, after the pitch:

- `Notiert:` the pitch in one line, in the user's words.
- The route in three lines: Erkunden, Roast, Bauen today; Feedback-Gespräche and Veröffentlichen afterwards.
- One sentence on modes: this conversation runs in Chat-Modus and changes nothing; you will say when to switch.
- Then hand over to `launchpad-1-erkunden`, which opens with Block 1.

Do not list commands, file names or preparation items here. Each is introduced when it is needed.

Map the pitch onto the blocks of Etappe 1 and pass it on: whatever the pitch already answers is read back for confirmation there, not asked again.

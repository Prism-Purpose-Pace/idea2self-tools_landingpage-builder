---
name: launchpad-4-feedback
description: Use for Etappe 4 of the Landing Page Launchpad, after the workshop, when the user has shown the draft landing page to real people or wants to ("Feedback-Gespräche", "Interviews auswerten", "Feedback einarbeiten", pasted interview notes). Structures the notes, evaluates them, writes docs/Feedback-Auswertung_v1.md and improves the draft in one or two further rounds. Do not use to simulate interviews, for the first build, or for publishing.
---

# Etappe 4 · Feedback-Gespräche und Überarbeitung

Find out how the Entwurf lands with real people from the audience, evaluate it without fooling yourself, and improve the page. The user works alone here, usually days after the workshop.

Read [references/core-rules.md](references/core-rules.md) first. Output: `docs/Feedback-Auswertung_v1.md` from [assets/template-feedback-auswertung.md](assets/template-feedback-auswertung.md).

| Block | Content | Guide time |
|---|---|---|
| 1 | Feedback-Gespräche (the user, without you) | 3 to 5 people, 15 min each |
| 2 | Notizen erfassen und auswerten | 20 min |
| 3 | Überarbeitung 2 | 30 min |
| 4 | Überarbeitung 3, optional | 20 min |

## Block 1 · If the conversations have not happened yet

Check that `docs/Interviewleitfaden_v1.md` exists; if not, build it from [references/interview-guide.md](references/interview-guide.md). Remind the user of who to ask, how to show the unpublished Entwurf (own screen or shared screen), and the rules for asking. Then stop until they return with notes.

## Block 2 · Erfassen und auswerten

**Erfassen.** The user pastes or dictates notes per person. Structure them into the template without smoothing: quotes verbatim, observations as observations. People are P1 to P5 with one line of description (audience yes or no, peer, knows the provider, device). No names, contact details or anything identifying in project files: a project can be shared, and these people agreed to a conversation, not a record. Ask when a note is ambiguous.

**Auswerten,** in this order:

1. Five-second result as a count: how many audience members named offer, audience and next step („2 von 4").
2. List each distinct point with the people who raised or showed it.
3. Kind: Verständnis, Wiedererkennen, Vertrauen, Einwand, Sprache, Bedienung, Gestaltung, Strategie.
4. Weight: observed behaviour first, then unprompted remarks, then answers to direct questions. Stated intentions and taste count least. Praise is not evidence.
5. Decide:
   - change if two or more audience members hit the same point
   - change if one audience member could not say what is offered or for whom after scrolling
   - fix factual errors at once
   - a single taste opinion is recorded, not acted on
   - peer and friends-and-family points count only for Verständnis and Bedienung
6. If half or more did not recognise the described situation, or the people who responded are not the group targeted, the problem is in the strategy. Say so plainly and clarify the affected fields in `Produkt-Strategie_v2` before planning page changes.
7. Collect wording: verbatim phrases for problem and benefit and the forwarding sentences. They are `[Zitat Zielgruppe]` and often beat the session's headline.
8. Change plan: at most five changes, by severity, each tied to its points and marked Text, Layout, Gestaltung, Bild or Strategie.

Show in chat as numbered lists (no wide tables): five-second result, change plan, what is deliberately not changed and why. After confirmation save the Auswertung and the status file in one Build turn.

## Block 3 · Überarbeitung 2

- Apply the plan by the rules in [references/build-rules.md](references/build-rules.md): one topic per request, name what stays untouched.
- Changes to structure or claims go into `Produkt-Landing-Page-Konzept_v2` in the same Build turn; pure wording changes need no document update.
- A quote from a conversation partner appears on the page only with that person's permission and then with a name.
- Run [references/checklist.md](references/checklist.md) on the changed parts.

## Block 4 · Überarbeitung 3 (optional)

Do it when fewer than half got offer and audience right in the five-second test, or when headline, promise or structure changed. Show the new first screen to one or two people who have not seen the page, with script parts 1 and 3 only, and add the result to the Auswertung. Otherwise use the round for remaining wishes. Then stop: further gains come from real visitors.

Close with what changed and the line for the next Etappe: `/launchpad-5-veroeffentlichen`.

## Guardrails

- The user holds the conversations; you never simulate them, invent answers or predict what people would say. If asked to play the audience, say that it can find unclear sentences but replaces no real conversation, and mark the output `[Vorschlag KI]`.
- Fewer than three real conversations: evaluate what exists, state the limit at the top of the file, recommend completing the round. Do not block.
- Never write „validiert" or „bestätigt" for anything based on stated intent. Counts, never percentages.
- If the notes explain a finding away („hat nicht richtig gelesen"), keep the observation and drop the excuse; real visitors will not read carefully either.

## Examples

```text
Notiz:    P2 scrollt an „So läuft es ab" vorbei, klickt nicht, sagt am Ende „Sieht professionell aus".
Gut:      Beobachtung: Ablauf übersprungen (P2). Kein Handlungsimpuls. Lob wird nicht gewertet.
Schlecht: „P2 fand die Seite professionell und überzeugend."

P1, P3, P4 sagen nach fünf Sekunden „irgendeine Software" statt „jemand richtet es mir ein".
→ Verständnis, 3 von 4, ändern: Überschrift und Unterzeile. Kandidat von P3: „Da kommt jemand vorbei und macht das fertig."

P2 mag das Grün nicht.  → Gestaltung, Einzelmeinung, nicht ändern.
```

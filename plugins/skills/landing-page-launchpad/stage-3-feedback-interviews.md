# Stage 3b: Feedback-Interviews und Iteration

Goal: find out how the page lands with real people from the audience, evaluate what they said without fooling yourself, and improve the page in one or two further iterations.

Outputs: `docs/Interviewleitfaden_v1.md` (prepared in Stage 3a, Part F), `docs/Feedback-Auswertung_v1.md` from [template-feedback-auswertung.md](./template-feedback-auswertung.md), an updated concept version and page.

| Part | Content | Budget |
|---|---|---|
| G1 | Interviews, run by the user | 3 to 5 people, 15 min each |
| G2 | Capture and evaluation with you | 20 min |
| H1 | Iteration 2: apply the findings | 30 min |
| H2 | Iteration 3, optional: re-test and polish | 20 min |

## What interviews can and cannot show

Say this to the user once, in two sentences, before they start.

- They show reliably: whether people understand the offer, recognise the situation, trust the provider, where they stop reading, which words they use, and what holds them back.
- They do not show: how many people will sign up. What people say they would do predicts poorly what they do. Treat "würde ich buchen" as politeness until someone acts (leaves an address, asks for the date, forwards the link).
- Three to five people surface the problems that recur; they do not give percentages. Never report results as shares of "the users".

## Preparation (Stage 3a, Part F)

**Who.** People from the audience defined in the strategy. At least two who do not know the offer. Close friends and family only if nobody else is available, and marked as such. In a workshop, other participants can do a peer test: it counts for comprehension and usability only, because they are not the audience and they are being kind.

**How.** In person or by video call with screen sharing. On a phone if the main channel is mobile. Show the page exactly as it is, with the mockup note visible. No pitch and no explanation beforehand. Notes instead of recordings unless the person agrees to a recording.

**The guide.** Build `docs/Interviewleitfaden_v1.md` from the script below and add two or three questions specific to this page, taken from the accepted risks and open tests in the strategy (for example a question that checks whether the audience recognises the problem at all). Keep it to one page so the user can hold it next to the screen.

## Interview script (15 min, German)

**0 · Einstieg (1 min)**
„Ich teste eine Seite, nicht dich. Es gibt keine falschen Antworten. Kritik hilft mir mehr als Lob. Ich erkläre erst am Ende etwas."

**1 · Fünf-Sekunden-Test**
Den ersten Bildschirm etwa fünf Sekunden zeigen, dann verdecken.
- „Was wird hier angeboten?"
- „Für wen ist das?"
- „Was könntest du als Nächstes tun?"

**2 · Lautes Denken (5 min)**
„Scroll durch die Seite, so wie du es allein tun würdest, und sag laut, was dir durch den Kopf geht."
Beobachten: Wo hält die Person an? Was überspringt sie? Wo runzelt sie die Stirn? Nicht helfen.

**3 · Verständnis**
- „Erklär mir in deinen Worten, was du bekommst."
- „Wann, wo, was kostet es?" (bei Events und Preisen)
- „Was ist unklar geblieben?"

**4 · Relevanz (vergangenes Verhalten, nicht Meinung)**
- „Kennst du die Situation, die oben beschrieben wird? Wann hattest du sie zuletzt?"
- „Was hast du damals gemacht?"

**5 · Vertrauen und Einwände**
- „Was lässt dich zögern?"
- „Was müsste hier stehen, damit du dem Anbieter vertraust?"
- „Was fehlt dir?"

**6 · Handlung**
- „Was passiert, wenn du auf den Button klickst? Was erwartest du danach?"
- „Würdest du dich jetzt eintragen? Was hält dich ab?"

**7 · Abschluss**
- „Wem würdest du die Seite weiterleiten, und mit welchem Satz?"
- „Was hätte ich dich noch fragen sollen?"

Plus die zwei bis drei seitenspezifischen Fragen.

**Rules for the interviewer** (put them at the top of the guide, in German):

- Nicht erklären, nicht verteidigen, nicht verkaufen. Wenn etwas missverstanden wird, ist genau das der Befund.
- Schweigen aushalten. Nach einer Antwort drei Sekunden warten.
- Nachfragen nur mit „Erzähl mehr" oder „Was meinst du damit?".
- Wörtlich mitschreiben, was die Person sagt, besonders ihre Formulierungen für das Problem.
- Beobachtungen (Stocken, Zurückscrollen) getrennt von Aussagen notieren.

## Part G2 · Capture and evaluation

**Capture.** The user pastes or dictates raw notes per person. Structure them into the template without smoothing: quotes stay verbatim, observations stay observations. Identify people as P1 to P5 with a one-line description (audience yes or no, peer, knows the provider or not, device). Do not store names, contact details or anything that identifies an interviewee in project files; a project can be shared or public, and these people agreed to a conversation, not to a record. If a note is ambiguous, ask the user rather than interpret.

**Evaluate** in this order:

1. **Five-second result:** how many of the audience members named offer, audience and next step correctly. Report as counts ("2 von 4"), never as a percentage.
2. **Tabulate** each distinct point against the people who raised or showed it.
3. **Categorise:** Verständnis, Relevanz, Vertrauen, Einwand, Sprache, Bedienung, Gestaltung, Strategie.
4. **Weigh the kind of evidence.** Observed behaviour counts most, then what was said unprompted, then answers to direct questions. Stated intentions and taste opinions count least. Praise is not evidence and is left out of the plan.
5. **Decide** with these rules:
   - Change it if two or more audience members hit the same point.
   - Change it if a single audience member could not say what is offered or for whom after scrolling the page: that is a comprehension blocker.
   - Fix any factual error at once.
   - A single taste opinion (colour, font, image) is recorded and not acted on.
   - Peer-test and friends-and-family points count only for Verständnis and Bedienung.
6. **Strategy findings:** if half or more of the audience members did not recognise the described situation, or the people who responded are a different group than the one targeted, the problem is not on the page. Say so plainly, reopen the strategy as `_v2` for the affected fields, and only then plan page changes.
7. **Harvest wording:** list verbatim phrases for the problem and the benefit, and the forwarding sentence from question 7. These are candidates for headline and problem copy and often beat what was written in the session.
8. **Change plan:** at most five changes for Iteration 2, ordered by severity, each tied to the points that justify it and classified as copy, layout, design system, image or strategy.

Show the evaluation in chat as: five-second result, the change plan, what was deliberately not changed and why. After confirmation, save `docs/Feedback-Auswertung_v1.md` and update the status file in one Build turn.

## Part H1 · Iteration 2

- Apply the change plan one change at a time, following the iteration discipline in [lovable-build-rules.md](./lovable-build-rules.md).
- Update the concept first when copy or structure changes (`Produkt-Landing-Page-Konzept_v2.md`), then the page, so documents and page stay in step.
- New factual claims that came up in interviews pass the same status rule as before. A quote from an interviewee is used on the page only with that person's permission, and then it is a testimonial with a name.
- After the changes, run the quality checklist again on the changed parts.

## Part H2 · Iteration 3 (optional)

Do a third iteration when the five-second result was poor (fewer than half of the audience members got offer and audience right) or when Iteration 2 changed headline, promise or structure.

- Show the changed first screen and section to one or two people who have not seen the page, using only parts 1 and 3 of the script. Append the result to the evaluation file as a short addendum.
- Otherwise use the time for polish from the remaining wishes in the status file.
- Then stop. Further gains come from real traffic after publication, not from more rounds on the draft.

Close with what changed, what the next step is (Stage 3c, publication), and update the status file.

## Guardrails

- **The user runs the interviews; you do not simulate them.** Never invent interview answers, predict what people "would probably say", or evaluate an interview that did not take place. If the user asks you to play the audience, say that it can find unclear sentences but cannot replace a single real conversation, and label any such output `[Vorschlag KI]`.
- **Fewer than three real interviews:** evaluate what exists, state the limit at the top of the file, and recommend completing the round before publication. Do not block.
- **Do not upgrade weak evidence.** "Sah gut aus" from a friend is not validation. Do not write "validiert" or "bestätigt" for anything based on stated intent.
- **Do not chase every comment.** The change plan has five entries at most. Everything else is listed under "Nicht geändert" with the reason.
- **Privacy.** No names, contact details, employers or recordings in project files.
- **No leading.** Questions you add to the guide ask about what the person understood or did, never whether they like or would buy.
- **No defence in the notes.** If the user's notes explain away a finding ("hat nicht richtig gelesen"), record the observation and drop the excuse; people on the real page will not read properly either.

## Examples

Interview questions:

```text
Gut:      „Erklär mir in deinen Worten, was du hier bekommst."
Gut:      „Wann hattest du diese Situation zuletzt, und was hast du gemacht?"
Schlecht: „Findest du die Seite gut?"
Schlecht: „Würdest du für so etwas 200 Euro zahlen?"
Schlecht: „Hier steht ja, dass es um Abrechnung geht. Ist das verständlich?"
```

The bad questions ask for an opinion, for a prediction about one's own spending, or give the answer away.

Reading the notes:

```text
Notiz:    P2 scrollt am Abschnitt „So läuft es ab" vorbei, klickt nicht, sagt am Ende „Sieht professionell aus".
Gut:      Beobachtung: Ablauf übersprungen (P2). Kein Handlungsimpuls. Lob wird nicht gewertet.
Schlecht: „P2 fand die Seite professionell und überzeugend."
```

Deciding:

```text
P1, P3, P4 (Zielgruppe) sagen nach fünf Sekunden „irgendeine Software" statt „jemand richtet es mir ein".
→ Verständnis, 3 von 4, ändern: Headline und Subline. Kandidat aus P3: „Da kommt jemand vorbei und macht das fertig."

P2 mag das Grün nicht.
→ Gestaltung, Einzelmeinung, nicht ändern.

P1 bis P4 kennen die beschriebene Situation nicht aus eigener Erfahrung.
→ Strategie. Nicht an der Seite arbeiten, sondern Zielgruppe oder Problem in Strategie_v2 klären.
```

Reporting:

```text
Gut:      „2 von 4 Personen aus der Zielgruppe konnten Angebot und Zielgruppe richtig benennen."
Schlecht: „50 % der Nutzer verstehen das Angebot."
```

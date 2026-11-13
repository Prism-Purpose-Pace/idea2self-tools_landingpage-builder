# Stage 3a: Entwerfen und bauen (75 min)

Goal: turn the confirmed strategy into a concept, then into a first complete, clickable draft, improve it once, and prepare the feedback interviews. This is the last part of the three-hour session.

Outputs: `docs/Produkt-Landing-Page-Konzept_v1.md`, built from [template-landing-page-konzept.md](./template-landing-page-konzept.md), the page itself, and the interview guide.

Work from `docs/Produkt-Strategie_v1.md`. If it is missing, go back to Stage 2.

| Part | Content | Budget |
|---|---|---|
| A | Branding-Discovery | 10 min |
| B | Bilder | 5 min |
| C | Konzept and gate | 10 min |
| D | First build | 15 min |
| E | Iteration 1: guided self-review and quality check | 20 min |
| F | Prepare the feedback interviews | 10 min |

Five minutes are reserve. Parts A to C are conversation and can run in Chat mode. From the gate in Part C onward the user needs Build mode.

Iterations 2 and 3 follow the interviews and are described in [stage-3-feedback-interviews.md](./stage-3-feedback-interviews.md). Publication is described in [stage-3-publish.md](./stage-3-publish.md).

## Part A · Branding-Discovery (two blocks)

**Block A1 · Bestand**

1. Hast du bereits eine existierende Brand, oder soll sie als Entwurf mit erstellt werden?
2. Welche Farben, Logos, Bilder, Schriftarten und Vorgaben sind bereits vorhanden und gesetzt? (Hex-Werte, Schriftnamen, Dateien oder ein Link reichen.)
3. Gibt es einen Werbeslogan, Leitsatz oder ein wiedererkennbares Muster zu deiner Marke?

**Block A2 · Richtung und Grenzen**

1. Was davon passt zu deiner Zielgruppe, deinem Problem, deiner Lösung und zu dir als Anbieter, und was nicht mehr?
2. Gibt es Design-Präferenzen, Vorgaben oder No-Gos, die für dich als Anbieter wichtig sind (nicht für die Zielgruppe)?
3. Gibt es eine Seite, die dir gefällt, und eine, die dir nicht gefällt? Was genau daran?

Question 3 is an addition. One concrete reference with a reason tells more about taste than a list of adjectives, and it protects against the generic look described in the build rules. Use a reference for its principles (spacing, type, restraint), never to copy its layout, texts or images.

If a brand exists: adopt its values exactly and ask only for what is missing.

If no brand exists: propose three directions derived from the strategy (audience, tone of address, positioning), not from fashion. For each give a name, three style keywords, a colour palette with roles and hex values (background, surface, text, primary, accent), a heading and body font pair that may be used freely and self-hosted, and one sentence on why it fits this audience. Label all three `[Vorschlag KI]`. The three must differ in character, not only in colour. The user picks one or mixes; record the choice. Check that text on background and button text on primary meet WCAG AA contrast before offering a palette.

Where the user's own preference conflicts with what suits the audience, say so once and let them choose; the provider has to stand behind the page.

A precise design direction also matters technically: when a landing page request leaves visual decisions open, Lovable asks its own generic design questions, and a brief that names fonts, colours, layout and style keywords lets it build directly from the user's decisions.

## Part B · Bilder (one block)

1. Welche Emotionen sollen die Bilder vermitteln?
2. Gibt es Szenen, Situationen oder Arten von Bildern, die gewünscht oder unerwünscht sind?
3. Welchen Grafik- oder Art-Stil sollen sie haben?
4. KI-generiert, Stock-Fotos oder echte Fotos? Welche eigenen Fotos kannst du jetzt hochladen?

Guidance to give when relevant, each in one sentence:

- Real photos of the provider and of the real setting build more trust than any generated image; ask for an upload if the offer is personal (coaching, events, services).
- Generated or stock images may illustrate a mood or a situation. They must not show invented customers, participants or results as if they were real.
- A generated image that could be mistaken for a real photo of real people, places or events needs a visible note that it is AI-generated; record it in the image plan so Stage 3c can check it.
- Fewer, stronger images load faster and read better on a phone than many decorative ones.

## Part C · Konzept and gate

1. Read [landing-page-playbook.md](./landing-page-playbook.md) and fill the concept template.
2. Write the real copy for every section in the user's chosen form of address, built from their own wording in the strategy. No placeholder text: layout problems and weak arguments only show up with real content.
3. Offer two or three headline candidates and mark your recommendation with the reason; the user picks.
4. Write the announcement text for the main channel and the link preview text so that they match the headline. A visitor who reads one promise in the messenger and another on the page leaves.
5. Apply the status rule: only what the strategy lists under "Was auf die Seite darf" appears as fact.
6. Show the concept in chat as a compact outline: section order, headline, CTA wording, design direction, image plan. Ask: "Sollen wir genau das bauen?" Apply corrections.
7. In one Build turn: save `docs/Produkt-Landing-Page-Konzept_v1.md` and update `docs/launchpad-status.md` and `AGENTS.md`.

The confirmed concept is the plan. A separate planning round in Plan mode adds cost and nothing new.

## Part D · First build

Read [lovable-build-rules.md](./lovable-build-rules.md) before writing code and follow its build order: design foundation, then all sections with final copy, then the CTA mockup, then the responsive pass.

Build the complete page in this part rather than stopping after the hero, so the user can judge the whole argument from top to bottom. Tell the user what was built in three lines, that the CTA is a mockup which stores and sends nothing, and how to look at it: open the preview, check it at phone width first, then desktop.

## Part E · Iteration 1: guided self-review and quality check

This is the first of two or three iterations. It removes what the author and the checklist can find, so that the interviews are spent on what only other people can see.

1. Ask the user to look at the page on a phone-width preview and answer three questions:
   - "Was würde jemand, der dich nicht kennt, nach fünf Sekunden über dein Angebot sagen?"
   - "An welcher Stelle würdest du selbst aufhören zu lesen?"
   - "Welcher Satz klingt nicht nach dir?"
2. Run [quality-checklist.md](./quality-checklist.md) yourself against the built page.
3. Merge both into a short list, classify each point (copy, layout, design system, image, strategy) and fix them in order of severity. A strategy point is not fixed in the page: reopen the concept or strategy as `_v2` first, briefly, then change the page.
4. Change one thing at a time, state what stays untouched, and confirm what changed afterwards. Broad instructions such as "mach es schöner" get one clarifying question first.
5. Point the user to cheaper tools where they fit: inline text editing in the preview for wording, selecting an element in the preview to describe a change to exactly that element, and bookmarking the current version in the version history before a larger redesign.

Stop when the budget is used. In `kurzfassung` mode, fix only checklist failures. The draft is ready for interviews when the argument is complete and nothing is broken, not when it is perfect; polishing further before anyone else has seen it wastes the session.

## Part F · Prepare the feedback interviews

1. Read the preparation section of [stage-3-feedback-interviews.md](./stage-3-feedback-interviews.md).
2. Ask: "Welche drei bis fünf Menschen aus deiner Zielgruppe kannst du in den nächsten Tagen 15 Minuten lang fragen, und wann?" Record first names or initials and dates in chat only, not in project files.
3. Produce the interview guide for this page and save it as `docs/Interviewleitfaden_v1.md`.
4. Report in chat what the session produced, what is still a mockup, and the three next steps in order: interviews, Iteration 2, publication check. Update `docs/launchpad-status.md`.

Do not publish on the user's behalf and do not describe the page as ready to launch. Publication is Stage 3c.

## Guardrails

- **No code before the concept gate.** Branding and image answers go into the concept, not straight into the page.
- **Three directions that really differ.** If your three proposals share the layout and differ only in hue, replace two of them.
- **No default look.** The build rules list the patterns that make a page look machine-made; a direction that relies on them is not offered.
- **Copy is fixed at the gate.** While building you may not shorten, embellish or add claims. If text does not fit, change the layout or ask.
- **Real people only as real people.** No generated faces as customers, team or participants.
- **One iteration, bounded.** Iteration 1 ends with the budget. Remaining wishes go to the status file and are weighed against interview findings later.
- **Session ends with dates.** A session that ends without named interview partners and dates usually ends without interviews.

## Examples

Design direction in the concept:

```text
Schwach: „Modern, clean, professionell, in Blau."
Stark:   „Ruhig und handwerklich. Hintergrund warmes Off-White #F6F1E7, Text Anthrazit #1E1E1C,
          Primär Tannengrün #1F4D3A, Akzent Senf #D9A441. Überschriften in einer Serifenschrift mit
          Charakter, Fließtext in einer gut lesbaren Grotesk. Einspaltig, viel Weißraum, Fotos aus der
          echten Werkstatt, keine Verläufe, keine Icon-Kacheln."
```

The weak brief fits every company and produces the default look. The strong one can be built without further questions.

Iteration request:

```text
Schwach: „Mach die Seite moderner und emotionaler."
Stark:   „Im Hero die Subline auf zwei Zeilen kürzen. Button-Text und Bild bleiben. Sonst nichts ändern."
```

Classifying a wish from the self-review:

```text
„Die Überschrift trifft es nicht, eigentlich will ich eher Teams ansprechen als Einzelne."
→ Strategie, nicht Text. Erst Zielgruppe in Strategie_v2 klären, dann Headline ändern.
```

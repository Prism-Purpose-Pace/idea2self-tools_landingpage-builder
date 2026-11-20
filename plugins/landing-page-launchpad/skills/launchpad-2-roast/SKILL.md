---
name: launchpad-2-roast
description: Use for Etappe 2 of the Landing Page Launchpad, when a Produkt-Grundlage exists and the user says "Etappe 2", "Roast", "roast my idea", "Produkt-Strategie erstellen" or continues the workshop after Etappe 1. Challenges the Produkt-Grundlage, records the user's decisions and writes docs/Produkt-Strategie_v1.md. Do not use without a Produkt-Grundlage, for general business advice, or once the page is being built.
---

# Etappe 2 · Roast und Refine (about 30 min)

Find what is wrong, unproven or missing in the Produkt-Grundlage while fixing it still costs a sentence, then merge the corrections into the strategy the page is built from.

Read [references/core-rules.md](references/core-rules.md) first. Output: `docs/Produkt-Strategie_v1.md` from [assets/template-produkt-strategie.md](assets/template-produkt-strategie.md), and the root `AGENTS.md` from [assets/template-agents-brief.md](assets/template-agents-brief.md).

Your role changes: in Etappe 1 you listened, now you are a critical sparring partner. Be hard on the text and respectful to the person. Be honest about what this review is: you check the document against itself and against simple arithmetic. You bring no market knowledge the user lacks. The real test of the idea is Etappe 4, with real people; say so once if the user treats the Roast as a verdict.

## Block 1 von 4 · Roast (ca. 8 min)

Work from `docs/Produkt-Grundlage_v1.md`, not from memory of the chat (if it is missing, see the saving rules in the core file).

Open with this frame, in these words:

> „Jetzt wechsle ich die Rolle: Ich suche gezielt nach Schwachstellen in deiner Produkt-Grundlage. Das gilt dem Text, nicht dir. Jede Lücke, die wir jetzt finden, kostet einen Satz statt einen Umbau. Du entscheidest bei jedem Punkt selbst, was du damit machst."

Look through six lenses:

1. Widersprüche innerhalb der Grundlage
2. Annahmen, auf denen alles steht
3. Fehlende Zahlen und Fakten
4. Passung: Angebot gegenüber Problem, Zielgruppe und eigenen Werten
5. Nähe zur Zielgruppe (Block 3, Frage 6)
6. Hauptkanal gegen Ziel, und Alternativen einschließlich Nichtstun

Report the three Befunde that would damage the page most. Offer the rest in one line ("Es gibt noch 2 weitere, kleinere Punkte. Schreib `mehr`, wenn du sie sehen willst."); seven is the ceiling.

Each Befund has five short parts: a title with severity (`kritisch` the page would promise something untrue or reach nobody, `wichtig` it weakens trust or sign-ups, `Detail`), the user's sentence quoted, what is wrong or unproven, the consequence for the page, and `Kleinster Test:` one action that would settle it. A Befund never ends with a question; questions come in Block 2.

For lens 6 do one calculation when reach and goal exist: reach × share who click × share who sign up. The two shares are your assumptions; write them as `[Annahme]`, say that real values vary widely, and show how the result changes if both are halved. Never cite benchmarks.

If a lens finds nothing, do not invent something. Close the report with one factual line: „Standgehalten haben: …" naming what held up, or „Standgehalten hat nach diesen Kriterien nichts Wesentliches" if that is the case.

If web search is available you may check up to three factual claims or named alternatives and cite the page. Otherwise leave them `[offen]`. Never fill a gap from memory and call it checked.

End the message with: „Du musst darauf jetzt nicht antworten. Lies in Ruhe, dann stelle ich dir drei Fragen dazu."

## Block 2 von 4 · Dein Blick darauf (ca. 8 min)

Skipped in `kurzfassung`. Only the user can answer these; mirror briefly, at most one follow-up, no reassurance and no answering for them.

1. Welche Punkte aus dem Roast treffen aus deiner Sicht zu, welche nicht, und warum?
2. Mit wie vielen Menschen aus deiner Zielgruppe hast du in den letzten Wochen direkt über das Problem gesprochen? Welchen Fragen gehst du lieber aus dem Weg?
3. Was ist jetzt gerade wirklich wichtig, realistisch und unmittelbar machbar für dich?

Vertiefung (`vertiefen`): Welche deiner Antworten würdest du nur ungern ändern, auch wenn Gespräche etwas anderes zeigen? Mit welchen Fragen würde dich dein innerer Kritiker konfrontieren, und was antwortest du?

A new fact from the user changes a Befund and its mark. Disagreement without a new fact leaves the Befund in place; the user decides in Block 3.

## Block 3 von 4 · Entscheidungen (ca. 6 min)

List the Befunde as a numbered list, each with your recommendation and a reason in a few words. Then:

> „Antworte mit Nummer und Buchstabe, zum Beispiel „1 B, 2 R, 3 T". B = jetzt beheben, R = als Risiko akzeptieren, T = später testen. Wenn du überall meiner Empfehlung folgst, schreib `weiter`."

- **B** changes the strategy now: ask the one thing you need (narrower audience, different promise, different goal) and apply it.
- **R** is recorded under „Bewusst akzeptierte Risiken". The page still may not state the point as a fact.
- **T** is recorded with the Kleinster Test and a date.

A `kritisch` Befund may be accepted as a risk. Say once, plainly, what can go wrong; then record it.

## Block 4 von 4 · Produkt-Strategie und Abschluss (ca. 8 min)

1. Fill the template: carry over what stands, apply every B, keep all marks. Do not restate the Grundlage where nothing changed; the strategy is the corrected core plus the decisions.
2. Write the positioning sentence and the message core from the user's wording and the `[Zitat Zielgruppe]` lines. What you phrase is `[Vorschlag KI]` until confirmed.
3. Fill „Was auf die Seite darf" by the table in the core rules.
4. Show: positioning sentence, audience in one line, promise, action, goal, accepted risks, tests. Ask: „Ist das die Grundlage, auf der wir die Seite bauen?"
5. One Build turn: strategy, status file, and `AGENTS.md` with the lines for Etappe 2 from the brief template.
6. Close with what was saved and the line for Etappe 3: `/launchpad-3-bauen`.

## Guardrails

- No quote from the Grundlage, no Befund.
- Do not design a new strategy for the user. A Befund ends with a test; proposals are `[Vorschlag KI]`.
- No softening filler and no closing pep talk beyond the frame and the „Standgehalten" line. If the user is discouraged, acknowledge it in one sentence and point to the smallest test.
- Do not withdraw a Befund to keep the mood, and do not repeat one that was decided.
- Points that need weeks go to T. This Etappe improves the page; it does not redesign the business.

## Examples

```text
Befund 1 · kritisch · Der Hauptkanal trägt das Ziel nicht.
Du schreibst: „40 Anmeldungen bis 20. März" und „meine WhatsApp-Kontakte, etwa 120 Personen".
Rechnung: 120 × 30 % Klick [Annahme] × 25 % Anmeldung [Annahme] = 9. Mit halben Anteilen: 2.
Folge: Die Seite allein kann die Lücke nicht schließen.
Kleinster Test: Heute fünf Kontakte fragen, wem sie den Link weiterleiten würden.
```

```text
Unbrauchbar: „Deine Zielgruppe könnte noch etwas spitzer sein. Insgesamt aber eine tolle Idee mit viel Potenzial!"
(kein Zitat, keine Folge, kein Test, Schmeichelei)

Test gut:      „Bis Freitag drei Praxisinhaberinnen fragen, wie sie die Abrechnung zuletzt gelöst haben.
                Bestätigt, wenn mindestens zwei das Problem ungefragt nennen."
Test schlecht: „Marktforschung betreiben."
```

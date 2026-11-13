# Stage 3c: Veröffentlichung (60 to 90 min)

Goal: answer the user's three closing questions for their concrete case and close the gaps: Which legal requirements apply to me, and what has to be stated how? Which e-mail system can I use? What is still missing before the page may go live?

Output: `docs/Veroeffentlichungs-Check_v1.md` from [template-veroeffentlichungs-check.md](./template-veroeffentlichungs-check.md), the legal pages, the real sign-up in place of the mockup.

This stage starts after Iteration 2. If no feedback interviews took place, say so once, record it in the check as an open point, and continue if the user wants to.

| Part | Content | Budget |
|---|---|---|
| I1 | Rechts-Interview | 10 min |
| I2 | Requirements and mandatory details | 15 min |
| I3 | E-mail system and real sign-up | 20 to 40 min |
| I4 | What is still missing, final check | 15 min |
| I5 | Release decision by the user | 5 min |

## Before anything else

Say this once, in German, at the start of the stage and repeat it in the header of the check document:

„Das ist eine strukturierte Orientierung nach deutschem Recht mit Stand November 2026, keine Rechtsberatung. Ich zeige dir, welche Vorgaben für deinen Fall typischerweise gelten und welche Angaben fehlen. Strittige oder teure Punkte, vor allem bei kostenpflichtigen Angeboten an Privatpersonen, solltest du prüfen lassen."

If web search is available, verify each requirement you rely on against a current primary or official source (statute text, data protection authority, chamber of commerce) and cite it with its date in the check. If it is not available, keep the status marks from [legal-check-de.md](./legal-check-de.md) and add "nicht tagesaktuell geprüft". Law changes; the reference file is a starting point with a date, not an authority.

## Part I1 · Rechts-Interview (two blocks)

Reuse what the strategy already contains (audience type, paid or free, place of payment) and ask only for the rest.

**Block R1 · Anbieter**

1. In welchem Land hast du deinen Sitz oder Wohnsitz?
2. Trittst du als Einzelperson auf oder als Unternehmen? Welche Rechtsform, wer vertritt es?
3. Vollständiger Name oder Firma, Anschrift (keine Postfachadresse), E-Mail, Telefon oder ein anderer direkter Kontaktweg?
4. Bist du in einem Register eingetragen (Handels-, Vereins-, Partnerschaftsregister)? Hast du eine Umsatzsteuer-ID oder Wirtschafts-ID?
5. Übst du einen Beruf mit Zulassung, Kammer oder Aufsichtsbehörde aus?
6. Wie viele Beschäftigte hast du, und liegt dein Jahresumsatz unter 2 Millionen Euro?

**Block R2 · Angebot und Daten**

1. Bestätige: Privatpersonen, Unternehmen oder beide? Kostenlos oder kostenpflichtig? Wird über die Seite gebucht oder bezahlt, oder an anderer Stelle?
2. Welche Daten fragt das Formular ab, und was passiert danach mit ihnen?
3. Willst du den Angemeldeten später Newsletter oder Werbung schicken, oder nur Informationen zu genau dieser Anmeldung?
4. Was ist auf der Seite eingebunden oder geplant: Reichweitenmessung, Videos, Karten, Kalender, Schriften von externen Servern, Social-Media-Elemente?
5. Welche Bilder zeigen erkennbare Personen, und liegen Einwilligungen und Lizenzen vor? Welche Bilder sind KI-generiert?
6. Gibt es Zitate oder Referenzen echter Personen, und liegt deren Erlaubnis vor?

If the answer to R1.1 is not Germany, say that the reference covers Germany in depth and other countries only as pointers, and mark every requirement `[für dein Land prüfen]`.

## Part I2 · Requirements and mandatory details

1. Read [legal-check-de.md](./legal-check-de.md).
2. Go through its matrix with the user's answers and decide for each area: applies, does not apply, or unclear. Give the reason in one line each. Do not list requirements that do not apply as if they did; a long generic list hides the three points that matter.
3. For every area that applies, list the mandatory details, mark each as vorhanden or `[fehlt]`, and collect the missing ones now where the user knows them.
4. Build the data-flow inventory: which data, from where, to which service, for what purpose, how long. It is the basis for the privacy notice and for the processor agreements.
5. Show the result as a table in chat: area, applies or not, why, what is missing. Ask for corrections.

## Part I3 · E-mail system and real sign-up

Read [email-connectors-eu.md](./email-connectors-eu.md). It contains the user's rule for this workshop (connectors only, European providers only), how connectors work in Lovable, the provider comparison and the setup steps.

1. Ask which provider the user already uses. Recommend from the comparison if they have none.
2. Decide with the user what is sent: confirmation of the sign-up, double opt-in for a newsletter, reminder before an event. Write these texts in the user's voice and add them to the check.
3. Replace the mockup with the real sign-up following the steps in the reference. Test it with the user's own address from start to finish before removing the mockup note.

If the user wants to keep the mockup for now, record "Anmeldung nicht aktiv" as a blocker in the check. The page is then not released.

## Part I4 · What is still missing

Build and check in this order, batching build work:

1. **Impressum page** from the collected details, linked as "Impressum" in the footer.
2. **Datenschutzerklärung page** as a draft from the data-flow inventory, linked as "Datenschutz" in the footer, with every unverified statement marked `[prüfen]` inside the draft and listed in the check.
3. **Form texts:** privacy note at the form, optional newsletter consent as its own unticked checkbox with the wording from the reference, button label for paid bookings.
4. **Other requirements that apply** from the matrix (price display, withdrawal information and function, accessibility statement, AI image note).
5. **Fonts and third-party requests:** confirm that the page loads nothing from external servers that is not in the inventory.
6. **Site metadata:** title, description, social preview image and text from the concept.
7. **Measurement:** how the goal from the strategy is counted (sign-ups in the e-mail system; visits and the sign-up event in the built-in analytics if the user keeps it enabled). Record the decision about analytics in the check and in the privacy notice.
8. **Facts:** date, time, place, price and limits compared digit by digit with the strategy.
9. **Domain:** which address the page gets; sender domain authenticated at the e-mail provider.
10. **Full test on a phone** from the main channel: announcement text, link preview, page, sign-up, e-mails received.
11. Run [quality-checklist.md](./quality-checklist.md) once more.

Fill the template and show the list of blockers and open points in chat.

## Part I5 · Release decision

The user decides whether to publish. Your part is the status:

- **Blocker offen:** say which ones and that you advise against publishing.
- **Keine Blocker, offene Prüfpunkte:** list them with owner and date; publishing is the user's call.
- Publish only when the user asks for it explicitly after seeing the check. Save `docs/Veroeffentlichungs-Check_v1.md` and update the status file in the same turn.

After publication, remind the user of the tests recorded as "Später testen" in the strategy and of the date on which the goal is measured.

## Guardrails

- **Not legal advice, and say so.** Never write "rechtssicher", "abmahnsicher" or "DSGVO-konform" about anything you produced. Say what was covered and what needs review.
- **Derive, do not paste.** Requirements come from the user's answers. No generic legal boilerplate, no copied sample texts from third-party sites; they are protected works and describe someone else's processing.
- **Never invent provider data.** A missing address, register number or tax ID stays `[fehlt]`. A plausible-looking invented value in an Impressum is worse than a gap.
- **The privacy notice describes what the page really does.** Every service in it is in the inventory, and every service in the inventory is in it. If you cannot verify where a service processes data, write `[prüfen]`, not an assumption.
- **Disputed points stay disputed.** Where the reference marks `[umstritten]` or `[im Fluss]`, present both readings in a sentence and recommend review. Do not pick the convenient one.
- **No dark patterns.** No pre-ticked boxes, no newsletter consent bundled into the sign-up, no hidden costs, no countdowns that are not real.
- **Secrets stay out of chat and code.** API keys go into the connector dialog only.
- **No sending to real people by you** beyond the user's own test address without explicit confirmation of recipient list and text.
- **You do not release the page.** You report blockers; the user decides.

## Examples

Applying the matrix:

```text
Gut:      „Widerrufsrecht: trifft nicht zu. Grund: kostenlose Anmeldung, kein Vertrag gegen Entgelt über die Seite."
Schlecht: eine Liste aller denkbaren Pflichten ohne Bezug zu den Antworten, von AGB bis Verpackungsgesetz.
```

Handling a gap:

```text
Gut:      „Umsatzsteuer-ID: [fehlt]. Wenn du keine hast, entfällt die Angabe; bitte bestätigen."
Schlecht: „USt-IdNr.: DE123456789" (erfunden, um das Impressum vollständig aussehen zu lassen)
```

Handling a disputed point:

```text
Gut:      „Bezahlter Workshop für Privatpersonen: Ob die Ausnahme vom Widerrufsrecht für termingebundene
           Freizeitveranstaltungen auch für Weiterbildungs-Workshops gilt, ist umstritten. Vorsichtige Lösung:
           Widerrufsbelehrung und Widerrufsfunktion vorsehen. Bitte prüfen lassen."
Schlecht: „Bei Veranstaltungen gibt es kein Widerrufsrecht."
```

Status report:

```text
Gut:      „Zwei Blocker: Anmeldung ist noch Mockup; Anschrift im Impressum fehlt. Ich rate von der Veröffentlichung ab."
Schlecht: „Deine Seite ist jetzt rechtssicher und bereit für den Launch!"
```

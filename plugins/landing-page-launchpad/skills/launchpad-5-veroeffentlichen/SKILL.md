---
name: launchpad-5-veroeffentlichen
description: Use for Etappe 5 of the Landing Page Launchpad, when the user wants to take the draft landing page live ("veröffentlichen", "live gehen", "was fehlt noch", "Impressum", "Datenschutz", "Anmeldung anbinden", "Newsletter-System"). Works out which German legal requirements apply to this case, collects the mandatory details, replaces the mock sign-up through a connector of a European e-mail provider, and writes docs/Veroeffentlichungs-Check_v1.md. Do not use as legal advice, to write privacy notices or terms, or before a draft page exists.
---

# Etappe 5 · Veröffentlichung

Answer three questions for the user's concrete case and close the gaps: Which legal requirements apply to me, and which details are needed? Which e-mail system can I use? What is still missing before the page may go live?

Read [references/core-rules.md](references/core-rules.md) first. Output: `docs/Veroeffentlichungs-Check_v1.md` from [assets/template-veroeffentlichungs-check.md](assets/template-veroeffentlichungs-check.md).

## Limits of this skill

Say this once at the start, and repeat it in the header of the check:

> „Das ist eine strukturierte Orientierung nach deutschem Recht mit Stand November 2026, keine Rechtsberatung, und kein Jurist hat sie geprüft. Ich zeige dir, was für deinen Fall typischerweise gilt und welche Angaben fehlen. Das Impressum baue ich aus deinen Angaben. Eine Datenschutzerklärung schreibe ich nicht; dafür bekommst du eine genaue Liste, was deine Seite mit Daten tut."

- You build the Impressum page from the user's own details and you list requirements. You do not write a privacy notice, terms, withdrawal information or consent texts beyond the short examples in the legal reference. For those the user needs a generator from a recognised source or a qualified person, fed with the inventory you produce.
- If web search is available, check each requirement you rely on against a current official source and cite it with its date. If not, keep the marks from the reference and add „nicht tagesaktuell geprüft".
- If the user is not based in Germany, say that only pointers exist for other countries and mark every requirement `[für dein Land prüfen]`.

| Block | Content | Guide time |
|---|---|---|
| 1 | Dein Fall und was du heute brauchst | 5 min |
| 2 | Rechts-Fragen, Vorgaben, Pflichtangaben | 20 min |
| 3 | E-Mail-System und echte Anmeldung | 20 to 40 min, plus waiting time for the sender domain |
| 4 | Was noch fehlt | 15 min |
| 5 | Entscheidung, Veröffentlichung, Test danach | 10 min |

Sessions may be split over days. Save a draft of the check after Block 2 and after Block 3.

## Block 1 · Dein Fall und was du heute brauchst

Open with the case in one sentence, derived from the strategy, so the user sees how small the list probably is:

> „Dein Fall: kostenlose Anmeldung für Privatpersonen, kein Newsletter. Dafür brauchst du voraussichtlich Impressum, Datenschutzerklärung, einen Hinweis am Formular und Verträge mit deinen Dienstleistern."

Then check the prerequisites before anything else:

> „Hast du heute Zugriff auf: (1) deine Anbieterdaten fürs Impressum, (2) ein Konto bei einem E-Mail-Anbieter, (3) die Einstellungen deiner Domain? Wenn (2) oder (3) fehlt, machen wir heute den Rechts-Teil und nehmen für den Start ein fertiges Formular des Anbieters."

If no Feedback-Gespräche took place, say so once, record it as an offener Punkt, and continue.

## Block 2 · Rechts-Fragen, Vorgaben, Pflichtangaben

Read [references/legal-check-de.md](references/legal-check-de.md). Reuse what the strategy already says; ask only for the rest, in two messages.

**Anbieter**

1. In welchem Land hast du deinen Sitz?
2. Trittst du als Einzelperson auf oder als Unternehmen? Rechtsform, Vertretung?
3. Name oder Firma, Anschrift, E-Mail, Telefon oder ein anderer direkter Kontaktweg? Im Impressum muss eine Anschrift stehen, unter der du erreichbar bist; das überrascht viele.
4. Register und Nummer? Umsatzsteuer-ID oder Wirtschafts-ID? Beruf mit Zulassung oder Kammer? Mehr als zehn Beschäftigte?

**Angebot und Daten**

1. Bestätige: Privatpersonen oder Unternehmen, kostenlos oder kostenpflichtig, Buchung und Zahlung über die Seite oder woanders?
2. Sollen Angemeldete später Newsletter oder Werbung bekommen, oder nur Informationen zu dieser Anmeldung?
3. Was ist eingebunden oder geplant: Reichweitenmessung, Videos, Karten, Kalender?
4. Welche Bilder zeigen erkennbare Personen oder sind KI-generiert? Gibt es Zitate echter Personen, und liegt die Erlaubnis vor?

Then:

1. Go through the matrix with the answers. In chat, list only what applies, each with one line of reason and what is missing; then one line „Trifft bei dir nicht zu: …". A long generic list hides the points that matter.
2. For each requirement that applies, list the mandatory details as vorhanden or `[fehlt]`.
3. Fill the data-flow inventory: which data, to which service, for what, how long.
4. Save the draft check.

If a paid offer for consumers is booked through the page, say plainly that this is the case with the most duties and disputed points, and that it should be reviewed by a qualified person before going live.

## Block 3 · E-Mail-System und echte Anmeldung

Read [references/email-connectors-eu.md](references/email-connectors-eu.md): the workshop's rule (connectors only, European providers only), how connectors work in Lovable, the provider comparison, the hosted-form route and the setup steps.

1. Update `AGENTS.md` with the Etappe 5 lines from [assets/template-agents-brief.md](assets/template-agents-brief.md); this lifts the "no backend" line.
2. Choose the route with the user: connector (own form on the page) or the provider's hosted form (fastest first launch).
3. Decide what is sent: confirmation, double opt-in for a newsletter, reminder for an event. Write the texts in the user's voice; organisational e-mails contain no advertising.
4. Replace the Mockup by the steps in the reference and test with the user's own address before removing the Mockup note.
5. Save the draft check.

If the user keeps the Mockup for now, record „Anmeldung nicht aktiv" as a Blocker.

## Block 4 · Was noch fehlt

Batch the build work:

1. Impressum page from the collected details, linked as „Impressum" in the footer.
2. Datenschutz: the user brings the text from a generator or a qualified person, made with the inventory; you place it on a page linked as „Datenschutz". Until then it is a Blocker.
3. Form: short privacy note with link; newsletter consent only as its own empty checkbox, in the user's or their adviser's wording.
4. Other requirements that apply (price display, AI image note, accessibility).
5. Check that the page loads nothing from third-party servers that is not in the inventory.
6. Page title, description, preview image and text from the Seitenkonzept.
7. Measurement: sign-ups counted at the e-mail provider; whether Lovable's built-in analytics stays on is the user's decision and belongs in the inventory.
8. Facts compared with the strategy digit by digit.
9. Preview test at phone width; Lovable's built-in accessibility and SEO reviews where available.

Update the check and show Blocker and offene Punkte as two numbered lists.

## Block 5 · Entscheidung, Veröffentlichung, Test danach

- Blocker open: name them and advise against publishing.
- No Blocker, offene Punkte: list them with owner and date; publishing is the user's decision.
- Publish only when the user asks after seeing the check.
- After publishing: the user sends the link to themselves through the Hauptkanal, checks the link preview, signs up on a phone and checks the e-mails. Only then is the page announced. Record the result in the check.
- Remind the user of the tests under „Später testen" in the strategy and the date on which the goal is measured.

## Guardrails

- Never write „rechtssicher", „abmahnsicher" or „DSGVO-konform" about anything you produced.
- Derive requirements from the answers; no boilerplate and no copied sample texts from other sites.
- Never invent provider data. A missing detail stays `[fehlt]`.
- Disputed points stay disputed: give both readings in a sentence and recommend review.
- No pre-ticked boxes, no newsletter consent bundled into the sign-up, no hidden costs, no countdowns that are not real.
- Keys and tokens never appear in chat, code or documents.
- You do not send to real recipients beyond the user's own test address without explicit confirmation.
- You report the status; the user releases the page.

## Examples

```text
Gut:      „Widerrufsrecht: trifft nicht zu. Grund: kostenlose Anmeldung, kein Vertrag gegen Entgelt über die Seite."
Schlecht: eine Liste aller denkbaren Pflichten ohne Bezug zu den Antworten.

Gut:      „Umsatzsteuer-ID: [fehlt]. Wenn du keine hast, entfällt die Angabe; bitte bestätigen."
Schlecht: „USt-IdNr.: DE123456789"   (erfunden)

Gut:      „Zwei Blocker: Anmeldung ist noch Mockup; Datenschutzerklärung fehlt. Ich rate von der Veröffentlichung ab."
Schlecht: „Deine Seite ist jetzt rechtssicher und bereit für den Launch!"
```

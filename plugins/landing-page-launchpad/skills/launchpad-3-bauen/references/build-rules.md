# Build rules for Lovable

What this workshop needs beyond what Lovable does well by itself. The project's existing stack and conventions win over anything here.

## Build

- Put the design brief into the project's central theme first (colours by role, fonts, radius), then build the whole page in the same turn. Components use the theme tokens only; one primary button variant for the action everywhere.
- Use the texts from the Seitenkonzept as written. Keep them as plain text in the section components, so the user can edit wording directly in the Vorschau.
- Footer links for Impressum and Datenschutz point to placeholders marked as to-do. Legal pages are built in Etappe 5.
- Follow the image plan: uploaded real photos first; generated images only where the user chose them, in one consistent style; otherwise a neutral placeholder in the right proportions, listed in your report. Meaningful images get an alt text in the page's language.
- Design the phone width first. Lovable's built-in accessibility and SEO reviews, where available, are run in Etappe 5; do not spend session time on them.
- Nothing is loaded from third-party servers: no external fonts, scripts, icon services, videos, maps or widgets.

## Sign-up as Mockup

The Entwurf shows the complete sign-up experience without processing data, so the user can judge flow and wording first and nobody's data is collected by an unfinished page.

- One form component with the fields from the Seitenkonzept, visible labels and understandable validation messages.
- On submit: no network request, no storage, no logging. Show what would happen next.
- A comment at the submit handler: `MOCKUP: no data is sent or stored. Replace in Etappe 5.`
- A small visible note near the form: „Anmeldung noch nicht aktiv". It stays until a real sign-up is connected.
- Every action button leads to this one form.
- No consent checkboxes or legal microcopy invented by you.

```text
Gut:      Absenden zeigt: „So würde es weitergehen: Du bekommst eine E-Mail mit allen Details." Hinweis sichtbar.
Schlecht: Eingaben landen im Browser-Speicher; Meldung „Danke, du bist angemeldet!" ohne Hinweis.
```

## Changing the page

- One topic per request: all text fixes together, all layout fixes together. List them, name what stays untouched, confirm what changed. A redesign is its own request.
- Design changes go through the theme, never through a special value in one component.
- The page owns wording after the first build. The Seitenkonzept owns structure and what may be claimed. If a request contradicts it („füg noch Preise für meine anderen Angebote ein"), say that this is a second goal and ask whether the concept should change.
- If the same fix fails twice, stop repeating it: describe what you see and propose another approach or restoring a bookmarked version.

## Credits

- Never use a Build turn for something a chat answer settles.
- Point to direct text editing in the Vorschau for wording.
- Ask one clarifying question before building a guess.

## Not in the Entwurf

Backend, database, login, e-mail sending, payment, analytics scripts, cookie banners, extra pages, chat widgets, pop-ups. The real sign-up and the legal pages come in Etappe 5; the rest only if the user asks after that.

A published page with a mock form is worse than no page: visitors believe they have signed up. If publishing comes up, say so and point to `/launchpad-5-veroeffentlichen`.

## Tips for the user

One sentence each, when it helps: the microphone for dictating; where to switch between Chat and Build; phone width in the Vorschau; editing text directly in the Vorschau; selecting an element in the Vorschau and describing the change; bookmarking a version before trying something bigger.

## Reporting

```text
Gut:      „Gebaut: Gestaltung, alle sechs Abschnitte mit deinen Texten, Formular als Mockup.
           Nicht verändert: Texte. Offen: zwei Bildplätze mit Platzhalter."
Schlecht: „Ich habe eine wunderschöne, moderne Landing-Page erstellt, die deine Besucher begeistern wird!"
```

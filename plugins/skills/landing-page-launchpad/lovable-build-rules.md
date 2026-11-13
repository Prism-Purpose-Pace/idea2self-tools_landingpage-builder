# Lovable Build Rules

How to build and iterate the page inside a Lovable project. Read this at the Stage 2 gate (for the `AGENTS.md` brief), before Stage 3a, Part D, and again before Iteration 2.

The project's existing stack and conventions win over anything here. Inspect the project first (framework, styling setup, component library, where global styles and theme tokens live) and follow what is there.

## Contents

1. Build order
2. Design foundation
3. Sections and copy
4. CTA mockup
5. Images
6. Responsive, accessibility, performance
7. Iteration discipline
8. Credit discipline
9. Scope limits
10. Before publishing
11. `AGENTS.md` project brief
12. Tips to pass on to the user
13. Avoiding the default look
14. Examples

## 1. Build order

1. **Design foundation:** theme tokens and fonts from the concept.
2. **All sections with final copy,** in the order of the concept, each as its own component.
3. **CTA mockup:** form, validation, success state; reused in every CTA position.
4. **Responsive pass:** check the narrow layout first, then tablet and desktop.

Do these in one build turn where the request allows it, in this order, and report briefly afterwards. Building the foundation first means later sections inherit the design instead of each inventing its own.

## 2. Design foundation

- Put every colour, font, radius and shadow from the concept's design brief into the project's central theme (global stylesheet variables and the styling configuration). Use semantic names by role: background, foreground, surface, primary, primary-foreground, accent, muted, border.
- Components use only these tokens. No hard-coded colour values or one-off font sizes inside components; one-offs are what make an AI-built page look inconsistent, and they make a later brand change expensive.
- Define one primary button variant and use it for the CTA everywhere. Secondary actions use a visibly quieter variant.
- Set a small type scale (display, heading, subheading, body, small) and a consistent vertical rhythm between sections.
- Load at most two font families, with only the weights in use.
- Serve fonts from the project itself (font files in the repository, declared in the stylesheet). Do not link fonts from an external font server: every visitor's IP address would go to a third party before any consent, which is a known legal problem in Germany. If the chosen font cannot be self-hosted now, use a system font stack and list the font as an open point.
- For the same reason the draft loads nothing else from third-party servers: no external scripts, icon CDNs, embedded videos, maps or widgets.
- If the project has a component library, restyle its components through the theme rather than writing parallel ones.

## 3. Sections and copy

- One component per section, named after its job (Hero, Problem, Solution, Process, Audience, About, Offer, Faq, FinalCta, Footer), composed in the page file in concept order. Small files keep later edits local and cheap.
- Use the copy from the concept verbatim. Do not shorten, embellish or add claims while building. If a text does not fit the layout, change the layout or ask; do not rewrite the argument.
- Keep copy as plain static text inside the section components rather than in a separate data file. That keeps wording changes local and should keep inline text editing in the preview straightforward.
- Exactly one `h1` (the hero headline); section headings are `h2`; no skipped levels.
- No navigation bar unless the concept asks for one; if present, anchor links only.
- Footer links for Impressum and Datenschutz point to placeholder routes clearly marked as to-do. The legal pages are built in Stage 3c from the user's own details, not during the first build and never from boilerplate.

## 4. CTA mockup

The first draft shows the complete sign-up experience without processing any data. The reason: the user should judge the flow and wording before deciding where sign-ups should go, and nobody's personal data should be collected by an unfinished page.

- Build one form component with the fields from the concept (default: first name and e-mail), visible labels, the correct input types, and inline validation messages in the page's language.
- On submit: no network request, no storage, no logging of the values. Show the success state from the concept (what the person can expect next), and offer a way back.
- Mark it in code with a comment at the submit handler: `MOCKUP: no data is sent or stored. Replace before launch.`
- Mark it visibly in the preview with a small, unobtrusive note near the form, e.g. "Vorschau: Anmeldung noch nicht aktiv". Remove the note only when a real sign-up is connected.
- Use the same component in every CTA position, or scroll the other CTA buttons to it. One form, one behaviour.
- Do not add consent checkboxes or legal microcopy invented by you. Reserve the place and list it as an open point for launch.

## 5. Images

- Follow the image plan in the concept: emotion, scenes, style, source.
- Uploaded real photos come first. Where the user chose generated images and you can generate them in this project, do so in the agreed style and keep one consistent look across the page. Where you cannot, insert a neutral placeholder in the right aspect ratio and list the art direction for each one in your report, so the user can supply it.
- No generated or stock people presented as customers, participants or team members.
- Every meaningful image gets a descriptive `alt` text in the page's language; decorative images get an empty `alt`.
- Size images for their slot, prefer modern formats, lazy-load everything below the first screen, and reserve space to avoid layout shift.

## 6. Responsive, accessibility, performance

- Design the narrow layout first: single column, CTA reachable with the thumb, key facts visible on the first screen.
- Tap targets at least 48 px high with clear spacing; form inputs at a font size that does not trigger zoom on phones.
- Text and interactive elements meet WCAG AA contrast, including button text on the primary colour and text over images.
- Visible focus states, labels tied to inputs, logical tab order, the page language set on the document.
- Motion is subtle and optional: short entrance transitions at most, and respect the reduced-motion preference. Nothing may delay the first screen.
- Keep the first screen light: no heavy libraries, video backgrounds or large sliders for a first draft.

## 7. Iteration discipline

- One change per request. State what you will change, where, and what stays untouched; small requests otherwise ripple into parts that already work.
- Name elements precisely (the hero subline, the second FAQ entry, the primary button) rather than "the top part".
- Design changes go through the theme tokens, so they apply everywhere. Do not patch a single component with a special value to satisfy a global wish.
- If a request contradicts the concept or the strategy, say so and ask whether the concept should change. Then update the document version first and the page second, so documents and page do not drift apart.
- If the same fix fails twice, stop repeating it: describe what you observe, propose a different approach, or suggest restoring the last bookmarked version.

## 8. Credit discipline

Build work is billed by the size of each request, and workshop participants often have small allowances.

- Never use a build turn for something a chat answer can settle.
- Batch related file writes into one turn (document, status file, `AGENTS.md`).
- Recommend inline text editing in the preview for wording changes instead of a build request.
- Ask one clarifying question before a vague request rather than building a guess.
- Before a large change, suggest bookmarking the current version so a miss can be undone instead of repaired.

## 9. Scope limits

Not part of the draft in Stages 3a and 3b: backend or database, authentication, e-mail sending, payment, analytics or tracking scripts, cookie banners, blog or extra pages, multi-language support, chat widgets, pop-ups. The real sign-up, e-mail sending and the legal pages are added in Stage 3c, in the way described there. Everything else on this list stays out unless the user asks for it after the publication check, because each item adds legal duties and things that can break.

## 10. Before publishing

A published page with a mock form is worse than no page: visitors believe they have signed up. When publishing comes up, say this plainly and switch to [stage-3-publish.md](./stage-3-publish.md), which covers the legal check, the real sign-up through a connector, and everything else that is missing. Do not improvise a shorter route.

Facts about the platform that matter there:

- The built-in analytics starts counting when a project is published and, according to Lovable's documentation, sets no cookies and keeps no IP addresses. It can be switched off in the project settings. Whether it stays on is the user's decision and belongs in the privacy notice either way.
- A published page is public by default. Showing a draft to interview partners does not require publishing: the user's own screen or a shared screen is enough.
- Lovable's built-in accessibility and SEO review skills, where available in the slash menu, are a sensible last pass.

## 11. `AGENTS.md` project brief

Create this at the Stage 2 gate and update it at the Stage 3 concept gate. Keep it under 40 lines; it is read on every request. If an `AGENTS.md` already exists, add this as a section and leave the rest untouched. Fill the brackets from the documents; write the content in the documents' language.

```markdown
## Landing Page Launchpad: project brief

Source of truth: docs/Produkt-Strategie_v1.md and docs/Produkt-Landing-Page-Konzept_v1.md
(always the highest version number). Read them before changing copy or structure.

- Offer: [one sentence]
- Audience: [one line] · Address: [Du/Sie], tone: [three words]
- Single goal of the page: [CTA] · Measured by: [number, date]
- Design: tokens in [file]; use tokens only, no hard-coded colours or fonts
- Fonts are served from the project; nothing is loaded from third-party servers
- CTA status: MOCKUP, no data is sent or stored, until Stage 3c connects a real sign-up

Rules for every change:
- One page, one goal, one primary CTA. No new sections, pages or features unless asked.
- Do not invent facts, numbers, testimonials, logos, deadlines or scarcity.
  Only claims listed under "Was auf die Seite darf" in the strategy appear as facts.
- Use the copy from the concept; do not rewrite it while changing layout.
- Change only what was asked and say what you left untouched.
- If a request contradicts strategy or concept, say so and ask before building.
- No backend, e-mail sending, analytics scripts or embeds before the publication check
  (docs/Veroeffentlichungs-Check). E-mail only through a connector, European providers only.
```

Also offer the user the same brief as text to paste into the project's instructions (Project settings → Instructions) if they prefer to manage it there.

## 12. Tips to pass on to the user

Give each tip once, at the moment it becomes useful, in one sentence. Menu names and positions can change; describe the function, and if the user cannot find it, say so rather than guessing a path.

- **Microphone button** in the chat input: dictating answers is faster than typing during Stages 1 and 2.
- **Mode picker** next to the chat input: Chat for conversation, Build for saving documents and building.
- **Preview:** look at the phone width before the desktop width.
- **Inline text editing** in the preview: change wording directly on the page.
- **Select an element** in the preview and describe the change, instead of describing where it is.
- **Version history:** bookmark a version that works before trying something bigger; restore it if the attempt fails.
- **Publish** only after the publication check in Stage 3c.

## 13. Avoiding the default look

Pages built by AI tools tend to converge on the same appearance, and visitors have learned to read it as generic. A "high-class" page is mostly restraint. Unless the confirmed design brief asks for one of these explicitly, do not use:

- purple, violet or blue-to-pink gradients as background or on headlines
- glass-effect cards, glowing borders, floating blurred colour blobs
- a centred hero with a pill badge above the headline and two equal buttons below
- three identical cards with an icon, a two-word title and one line of text
- emoji as icons or bullet points
- fully rounded pill buttons and badges everywhere
- invented dashboards, app screens, star ratings or logo rows as decoration
- entrance animations on every element, parallax, animated counters
- stock 3D illustrations and generic "team in a meeting" photos

What carries quality instead:

- typography with a clear hierarchy: one display size, generous line height, line lengths of about 45 to 75 characters
- whitespace as the main layout tool, with consistent section rhythm
- one accent colour used sparingly, mostly for the CTA
- real photographs from the user, cropped with intent
- one consistent corner radius and one shadow style, or none
- alignment to a simple grid; left-aligned text for anything longer than a headline
- details that show care: balanced headline line breaks, proper German quotation marks and dashes, non-breaking spaces in dates and prices

## 14. Examples

Using tokens:

```tsx
// Schwach: fester Wert, eigener Stil nur an dieser Stelle
<button className="bg-[#7c3aed] text-white rounded-full px-8 py-4">Platz sichern</button>

// Stark: Variante aus dem Designsystem, Farbe kommt aus den Tokens
<Button size="lg">Platz sichern</Button>
```

CTA mockup behaviour:

```text
Stark:   Absenden zeigt „Vorschau: So würde es weitergehen. Du bekommst eine E-Mail mit allen Details."
         Keine Netzwerkanfrage, nichts gespeichert, Hinweis „Vorschau: Anmeldung noch nicht aktiv" sichtbar.
Schwach: Eingaben werden im Browser-Speicher abgelegt oder in die Konsole geschrieben;
         Meldung „Danke, du bist angemeldet!" ohne Hinweis auf die Vorschau.
```

Reporting after a build turn:

```text
Stark:   „Gebaut: Designsystem, alle neun Abschnitte mit den Texten aus dem Konzept, Formular als Mockup.
          Nicht verändert: Texte. Offen: zwei Bildplätze mit Platzhalter (Hero, Über mich)."
Schwach: „Ich habe eine wunderschöne, moderne Landing-Page erstellt, die deine Besucher begeistern wird!"
```

Handling a request that breaks the concept:

```text
Wunsch:  „Füg noch einen Abschnitt mit Preisen für meine anderen Angebote ein."
Stark:   „Das wäre ein zweites Ziel auf der Seite und steht nicht im Konzept. Soll ich das Konzept ändern,
          oder verlinken wir die anderen Angebote erst nach der Anmeldung?"
Schwach: Abschnitt einbauen, ohne nachzufragen.
```

# Template: AGENTS.md project brief

Write this block into the root `AGENTS.md` (add it as a section if the file exists; leave everything else untouched). Keep it under 40 lines. Use only the lines for the Etappe reached; replace the block when the next Etappe updates it. Content in the documents' language.

```markdown
## Landing Page Launchpad: project brief

Source of truth: the highest version of docs/Produkt-Strategie and, once it exists,
docs/Produkt-Landing-Page-Konzept. Read them before changing structure or claims.

- Offer: [one sentence]
- Audience: [one line] · Address: [Du/Sie], tone: [three words]
- Single goal of the page: [action] · Measured by: [number, date]

Rules for every change:
- One page, one goal, one primary action. No new sections, pages or features unless asked.
- Do not invent facts, numbers, testimonials, logos, deadlines or scarcity. Only claims
  listed under "Was auf die Seite darf" in the strategy appear as facts.
- Change only what was asked and say what you left untouched.
- If a request contradicts the strategy, say so and ask before building.
```

Lines added in Etappe 3, after the Seitenkonzept is confirmed:

```markdown
- Design: tokens in [file]; use tokens only, no hard-coded colours or fonts
- Fonts are served from the project; nothing is loaded from third-party servers
- Sign-up: MOCKUP. No data is sent or stored. Do not connect a backend, e-mail sending,
  analytics or embeds until the user starts Etappe 5.
- Do not publish while the sign-up is a mockup; tell the user why.
- Wording may be edited freely on the page. Structure and claims follow the Seitenkonzept.
```

Lines that replace the two "Sign-up" and "Do not publish" lines when Etappe 5 starts:

```markdown
- Sign-up: being connected in Etappe 5. E-mail only through a Lovable connector,
  European providers only. No API keys in code or chat.
- Publish only when the user asks after seeing docs/Veroeffentlichungs-Check.
```

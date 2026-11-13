# Quality Checklist

Run this in Stage 3a (Iteration 1), after Iteration 2, and at the end of Stage 3c. Check the built page itself, not your memory of what you built. Report each group as pass, fixed, or open (needs the user).

## Strategy fit

- [ ] The first screen answers: what is this, is it for me, what do I do next
- [ ] The headline matches the promise in the strategy, the announcement text and the link preview
- [ ] Exactly one conversion goal; every CTA leads to the same action with the same wording
- [ ] Form of address (Du/Sie) and tone are consistent in every section, including form messages and success state
- [ ] The audience's own wording from the strategy or the interviews appears in the problem section

## Honesty

- [ ] Every factual claim on the page is listed under "Was auf die Seite darf" in the strategy
- [ ] No invented numbers, testimonials, logos, press mentions, deadlines or scarcity
- [ ] Personal experience is phrased as such
- [ ] Event facts (date, time, place, price, limits) match the strategy exactly
- [ ] No generated or stock people presented as real customers or participants
- [ ] Generated images that could pass as real photos of real people, places or events carry a visible note
- [ ] While the CTA is a mockup, the mockup note is visible near the form

## Structure and copy

- [ ] Section order follows the concept; no empty or padded sections
- [ ] No placeholder text anywhere
- [ ] One `h1`, logical heading levels
- [ ] No links leading away from the page except footer obligations
- [ ] Button text says what happens; the line under the button answers the next worry
- [ ] No machine-written phrasing from the list in the playbook
- [ ] German typography: proper quotation marks, no double hyphens as dashes, non-breaking spaces in dates and prices

## CTA

While it is a mockup:

- [ ] Fields as in the concept, with visible labels and correct input types
- [ ] Validation messages appear and are understandable
- [ ] Submit shows the success state and sends or stores nothing
- [ ] The code comment `MOCKUP` is present at the submit handler
- [ ] All CTA positions lead to the same form

After Stage 3c connected the real sign-up:

- [ ] Sign-up goes through a connector; no API key in project code
- [ ] Success and error states match what the system really did
- [ ] Test with the user's own address passed end to end, including unsubscribe
- [ ] Newsletter consent is a separate, unticked checkbox, or no newsletter is offered
- [ ] All mockup marks are removed

## Design system

- [ ] Colours, fonts, radii come from theme tokens only; no hard-coded values in components
- [ ] One primary button style on the whole page
- [ ] Consistent spacing between sections and a small, consistent type scale
- [ ] None of the default-look patterns from the build rules, unless the design brief asks for them
- [ ] Fonts are served from the project; the page requests nothing from third-party servers

## Phone, accessibility, performance

- [ ] At phone width: single column, nothing cut off, no horizontal scrolling, CTA reachable on the first screen
- [ ] Tap targets large enough; inputs do not trigger zoom
- [ ] Contrast meets WCAG AA for text, buttons and text over images
- [ ] Visible focus states; labels tied to inputs; page language set
- [ ] Meaningful images have alt text; images below the first screen are lazy-loaded and sized for their slot
- [ ] Motion is subtle and respects reduced-motion

## Open for launch (report, do not fix silently)

Until Stage 3c is complete, list what applies:

- [ ] Feedback interviews not yet done or not yet worked in
- [ ] Real sign-up not yet connected
- [ ] Impressum and Datenschutzerklärung missing or still containing `[fehlt]` / `[prüfen]`
- [ ] Site title, description and social preview image not yet set
- [ ] Missing proof or images listed in the concept under "Fehlt noch"
- [ ] Tests recorded as "Später testen" in the strategy

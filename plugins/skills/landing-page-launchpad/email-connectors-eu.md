# E-Mail-System: European providers through connectors

Reference for Stage 3c, Part I3. Provider facts were checked in November 2026 against the providers' and Lovable's own documentation. Connector catalogues change quickly: confirm in the project's Connectors page what is actually available before recommending, and say so if it differs from this file.

## The rule for this workshop

1. **Connectors only.** Sign-ups and e-mails go through a Lovable connector or the provider's official MCP server. No hand-written SMTP code, no API keys in project code, no copy-paste embed scripts.
2. **European providers only.** Brevo, Mailjet and other providers with a European seat and EU data storage. Not offered, even though Lovable lists connectors for them: Resend, Mailchimp, Mailchimp Transactional, Loops, Klaviyo, beehiiv, ActiveCampaign, Mailgun.
3. Lovable's built-in e-mail sending is not offered either, because the sending infrastructure behind it is not documented as European. If the user asks for it, say what is unknown and let them decide.

If the user insists on a provider outside the rule, say that it is outside the workshop's rule, name the consequence for the privacy notice (transfer to a third country), and record the decision in the check.

## How connectors work in Lovable

Two kinds, and the difference decides what is possible:

| Kind | Used when | Runs in the published page? | Account |
|---|---|---|---|
| **App + chat connector** | The published page needs the service: store a sign-up, send an e-mail | Yes | One shared connection, added with an API key under Connectors |
| **Chat connector (MCP server)** | You, the agent, need the service while building: read and set up the account | No. It is not part of the published app | Personal, per user |

Consequence: an MCP server alone cannot make the sign-up form work, because visitors of the published page never reach it. The form needs an app + chat connector. An MCP server is the right tool for the setup work in the provider's account (lists, templates, sender check) during the session. Explain this to the user in two sentences if they ask for "MCP only".

Custom MCP servers are added by URL and must be remote servers; sign-in is by OAuth or by token. A server that only runs on the user's own computer cannot be connected.

## Provider comparison

| Provider | Seat | App + chat connector in Lovable (published page) | Official MCP server usable as chat connector (setup) | Fits |
|---|---|---|---|---|
| **Brevo** | France | Yes: transactional and marketing e-mail, contacts, lists | Yes: hosted, token in the request header, modules for contacts, lists, templates, senders, domains | Default recommendation: covers both paths |
| **Mailjet** | France, part of Sinch (Sweden) | Yes: transactional e-mail, adding contacts to lists, delivery status; region selectable | Official server exists but runs locally on a computer and is described for reading account data, so it cannot be added in Lovable | Published page works; setup is done by hand in Mailjet |
| **MailerLite** | Founded in Lithuania, EU data storage according to the provider | No listed connector | Yes: hosted, OAuth sign-in, campaigns created as drafts | Setup by MCP is possible, but the published page has no connector path; outside the rule unless Lovable adds one |
| **Lettermint** | Netherlands | No listed connector | Yes: hosted, OAuth sign-in | Transactional sending only, no newsletter lists; same limitation as MailerLite |
| CleverReach, rapidmail, GetResponse | Germany, Germany, Poland | No listed connector | No official MCP server found | Not usable under the rule today |

Recommendation logic:

- No provider yet, or newsletter planned: **Brevo**.
- Already on Mailjet and only confirmation e-mails needed: **Mailjet**.
- Already on another European provider without a Lovable connector: say that the rule cannot be met with it in Lovable today; options are a second account at Brevo for this page, or keeping the sign-up on the provider's own hosted form and linking to it from the CTA button (no connector, no code, but the visitor leaves the page).

## What has to exist before building

Ask for these and record gaps as blockers:

1. Account at the provider, with the processor agreement accepted in the account.
2. **Sender domain authenticated** (SPF, DKIM, DMARC records at the domain's DNS). Without it, confirmation e-mails land in spam or are rejected; this needs access to the domain's DNS settings and can take hours to take effect.
3. A list or group for this page.
4. For a newsletter: a double opt-in template without any advertising, and a confirmation page or redirect target.
5. An API key with the narrowest permissions the provider offers, created for this project only.

## Setup steps

1. **Connect.** The user opens Connectors, selects the provider, adds a connection with the API key and links it to this project. The key is entered only in that dialog: never in chat, never in code, never in a document. For Mailjet, choose the EU region.
2. **Optional, Brevo only: chat connector for setup.** The user creates a Brevo MCP token and adds Brevo's MCP server as a custom chat connector, preferably the module endpoints for contacts, lists, templates and senders rather than the full server. Use it to check that sender and domain are verified and to create the list and the templates. Every action that changes the account needs the user's approval on the approval card; do not ask for "always allow". Suggest removing the connector and revoking the token after setup.
3. **Texts first.** Write and confirm with the user: confirmation e-mail, double opt-in e-mail if a newsletter is offered, reminder for events, the success message on the page, the error message. Organisational e-mails contain no advertising.
4. **Replace the mockup.** The form submits through the app + chat connector on the server side. Check the provider's current API reference for the exact call rather than relying on memory:
   - Sign-up only: create or update the contact in the list and send the confirmation e-mail.
   - With newsletter consent: use the provider's double opt-in flow, so the address joins the newsletter list only after the confirmation click. Brevo offers a dedicated double opt-in call; with Mailjet, as far as known, the confirmation step has to be built with a transactional e-mail and a confirmation link, which needs the project's backend. Verify before promising either.
   - Record the consent wording shown at the time with the contact, where the provider supports attributes for it.
5. **States on the page.** Success: say exactly what happens next ("Wir haben dir eine E-Mail geschickt. Bitte bestätige deine Adresse."). Error: say that it did not work and how to reach the provider otherwise. Never show success when the call failed.
6. **Test** with the user's own address: submit, receive, confirm, check the contact in the provider's account, unsubscribe. Then test once from a phone.
7. **Remove the mockup marks:** the visible note near the form, the `MOCKUP` comment, and the "CTA status" line in `AGENTS.md`.
8. **Count sign-ups** for the goal in the provider's list; if the built-in analytics stays enabled, record the completed sign-up as an event.

## Guardrails

- **Keys and tokens never appear** in chat, code, documents or screenshots. If the user pastes one into chat, tell them to revoke it and create a new one.
- **No imports.** Do not upload existing contact lists, address books or scraped addresses. Only people who sign up through the form enter the list.
- **No sending by you to real recipients** beyond the user's own test address without explicit confirmation of text and recipients. Campaigns are created as drafts.
- **No tracking without notice.** Open and click tracking in newsletters is switched off, or named in the privacy notice and covered by the consent.
- **Newsletter consent is never implied** by the sign-up. No consent box ticked, no newsletter.
- **Honest states.** The success message matches what the system did.
- **If the connector path fails twice,** stop, report what happened, and offer the hosted-form link as a fallback instead of writing direct API code.
- **Check before claiming.** Do not state that a provider supports a feature (double opt-in, EU region, consent attributes) unless you have just read it in its documentation or seen it in the account.

## Examples

Confirmation e-mail for an event sign-up (pattern only):

```text
Gut:      Betreff: „Deine Anmeldung für [Titel] am [Datum]"
          Inhalt: Bestätigung, Datum, Uhrzeit, Ort oder Link, was mitzubringen ist, Kontakt für Absagen, Anbieterangaben.
Schlecht: Betreff: „Willkommen in der Community! 🎉"
          Inhalt: Rabattcode für andere Angebote, Aufforderung, Freunden zu folgen.
```

The bad version turns an organisational e-mail into advertising, which needs consent.

Double opt-in e-mail:

```text
Gut:      „Bitte bestätige deine E-Mail-Adresse für den Newsletter von [Anbieter]: [Link].
           Wenn du dich nicht angemeldet hast, ignoriere diese E-Mail."
Schlecht: derselbe Text mit Logo-Banner „Jetzt 20 % sparen" und drei Produktempfehlungen.
```

Answering "MCP only":

```text
Gut:      „Ein MCP-Server arbeitet nur für mich beim Bauen; deine Besucher erreichen ihn nicht. Für das
           Formular nutze ich deshalb den Brevo-Konnektor von Lovable, für die Einrichtung in deinem
           Brevo-Konto den MCP-Server von Brevo. Beides sind Konnektoren, kein eigener Code."
Schlecht: stillschweigend direkten API-Code mit Schlüssel in die Seite schreiben, weil es schneller geht.
```

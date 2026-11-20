# Art direction

How to turn the strategy into a visual direction that Lovable can build without falling back on its defaults. Read before Block 1.

Lovable asks its own generic design questions when a landing page request leaves the look open, and builds directly when the request names fonts, colours, layout and style. A precise brief is therefore also the technical way to get the user's decisions built.

## What a direction consists of

Six parts. A direction that lacks one of them will be filled in by defaults.

1. **Bild in einem Satz** for the user: plain imagery, no jargon. „Wirkt wie eine Werkstatt mit Holz und Leinen: ruhig, warm, handfest."
2. **Reference world:** where the look comes from outside web design, chosen from the audience's world: a trade, a printed medium, a place, an era of print or signage.
3. **Composition of the first screen:** where headline, image and button sit, and what is deliberately unusual about it (headline left and oversized with the image cut by the edge; a full-width photo with a text band; text only with one large numeral; a split screen).
4. **Typography:** character of heading and body type and the size contrast between them. Type carries most of a page's distinctness.
5. **Colour by role with hex values:** background, surface, text, primary (the button), accent. One accent, used sparingly. Text on background and button text on primary must meet WCAG AA.
6. **One signature element** that recurs: a hand-drawn underline, numbered section markers, a ruled line system, a stamp-like badge for the date, an unusual image crop.

Derive all six from audience, tone of address and positioning in the strategy, not from fashion. With an existing brand, parts 4 and 5 are given; parts 3 and 6 still have to be decided.

## Two worked examples

They are deliberately far apart. Do not reuse either.

```text
A · „Wirkt wie ein gut gemachtes Vereinsheft: klar, freundlich, etwas altmodisch im besten Sinn."
Welt:        gedruckte Programmhefte, Aushänge am Schwarzen Brett
Erster Bildschirm: Überschrift links, sehr groß, über zwei Zeilen; rechts ein hochkantiges Foto, vom Rand angeschnitten;
             Datum als runder Stempel, leicht gedreht
Schrift:     Überschriften in einer kräftigen Serifenschrift, Fließtext in einer ruhigen Grotesk, Größenverhältnis etwa 4 : 1
Farben:      Hintergrund #F6F1E7, Fläche #FFFFFF, Text #1E1E1C, Primär #1F4D3A, Akzent #D9A441
Signatur:    der Stempel kehrt als Nummerierung der Abschnitte wieder
```

```text
B · „Wirkt wie ein Plakat für ein Konzert: laut, direkt, wenig Text."
Welt:        Siebdruck-Plakate, Baustellenschilder
Erster Bildschirm: nur Text, Überschrift in Versalien über die ganze Breite, darunter eine Zeile mit Datum, Ort, Preis;
             kein Bild
Schrift:     schmale, fette Grotesk für Überschriften, Monospace für Daten und Zahlen
Farben:      Hintergrund #111111, Fläche #1C1C1C, Text #F2F2F2, Primär #FFE14A, Akzent #FF5A36
Signatur:    dicke Trennbalken zwischen den Abschnitten, Zahlen immer in Monospace
```

```text
Schwach: „Modern, clean, professionell, in Blau."   (passt zu jeder Firma, ergibt das Standardbild)
```

## What to avoid, and why

Pages built by AI tools converge on one look, and visitors read it as generic. The brief prevents most of it. These few patterns slip through even with a good brief, so do not use them unless the brief asks for them:

- violet or blue-to-pink gradients; glass-effect cards; glowing borders
- a centred first screen with a small pill badge above the headline and two equal buttons
- three identical cards with an icon, a two-word title and one line of text
- emoji as icons
- invented dashboards, star ratings or logo rows as decoration
- entrance animations on every element

Also check the two worked examples against your own proposal: if all directions you offer are off-white with a serif and one muted colour, you have replaced one default with another. Replace one of them.

## Fonts

Serve fonts from the project, not from an external font server; in Germany loading fonts from a third party before consent is a known legal problem. Choose typefaces that are freely licensed for self-hosting. If a chosen font cannot be served from the project in this build, use a system font stack, tell the user, and record the font as an offener Punkt. How Lovable installs fonts has not been verified for this skill; report what you actually did.

German sets long words: allow hyphenation for body text and size headlines so that the longest word of the headline fits a phone screen.

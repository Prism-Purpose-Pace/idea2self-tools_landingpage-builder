# Landing Page Launchpad (Lovable-Skill)

Geführter Workshop: vom Pitch über Produkt-Grundlage und Produkt-Strategie zum ersten klickbaren Landing-Page-Entwurf (3 Stunden), danach Feedback-Interviews mit echten Menschen, zwei bis drei Iterationen und ein Veröffentlichungs-Check mit Rechts-Check und echter Anmeldung.

Diese Datei ist für Menschen gedacht. Der Skill selbst liest sie nicht.

## Installieren

Als Workspace-Skill (Owner oder Admin): Workspace settings → Skills → Add → Upload ZIP.

Als persönlicher Skill (jede Person für sich): Account settings → Personal skills → ZIP importieren.

Der Name `landing-page-launchpad` lässt sich nach dem Anlegen nicht mehr ändern. Eine neuere Fassung ersetzt die alte: bestehenden Skill löschen und das neue ZIP hochladen.

## Vorbereiten

`vorbereitung.md` vor dem Workshop an die Teilnehmenden schicken. Die größten Hebel für die Qualität der Seite liegen vor dem Workshop: echte Zitate aus der Zielgruppe, verbindliche Eckdaten, eigene Fotos, eine Referenzseite, Namen für die Feedback-Gespräche.

## Starten

1. Neues Lovable-Projekt anlegen.
2. Im Projekt-Chat `/landing-page-launchpad` eingeben und den Pitch in 3–5 Sätzen schreiben oder diktieren.
3. Zu Beginn jeder Etappe den Skill erneut aufrufen, z. B. `/landing-page-launchpad weiter mit Etappe 2`.

## Ablauf

| Etappe | Inhalt | Ergebnis | Zeit |
|---|---|---|---|
| 0 | Kickoff und Pitch | – | 5 min |
| 1 | Erkunden, klären, festlegen (9 Fragenblöcke) | `docs/Produkt-Grundlage_v1.md` | 60 min |
| 2 | Roast und Refine | `docs/Produkt-Strategie_v1.md` | 40 min |
| 3a | Branding, Bilder, Konzept, Bau, Iteration 1, Interview-Vorbereitung | `docs/Produkt-Landing-Page-Konzept_v1.md`, Seite, `docs/Interviewleitfaden_v1.md` | 75 min |
| | Ende der 3-Stunden-Sitzung | | |
| 3b | 3–5 Feedback-Interviews, Auswertung, Iteration 2, optional Iteration 3 | `docs/Feedback-Auswertung_v1.md` | 3–5 × 15 min, danach ca. 50 min |
| 3c | Rechts-Check, E-Mail-System, echte Anmeldung, was noch fehlt | `docs/Veroeffentlichungs-Check_v1.md` | 60–90 min |

Befehle im Chat: `weiter`, `überspringen`, `zurück`, `status`, `pause`, `kurzfassung`, `speichern`.

Im Workshop können sich Teilnehmende gegenseitig testen (Peer-Test). Das zählt nur für Verständlichkeit und Bedienung, nicht als Rückmeldung der Zielgruppe.

## Modi und Credits

- Etappe 1 und 2 sind Gespräch und ändern keinen Code. Der Chat-Modus reicht und ist in der Regel am günstigsten.
- Speichern der Dokumente und alles ab dem Bau brauchen den Build-Modus. Der Skill sagt an, wann umgeschaltet werden muss.
- Vor einem Workshop einmal komplett durchspielen und den Credit-Verbrauch notieren. Tarife und Kontingente ändern sich.

## E-Mail und Anmeldung

Regel dieses Skills: nur Konnektoren, nur europäische Anbieter. Empfehlung ist Brevo (Konnektor für die veröffentlichte Seite und offizieller MCP-Server für die Einrichtung), Alternative Mailjet (Konnektor für die veröffentlichte Seite). Ein MCP-Server allein kann das Formular der veröffentlichten Seite nicht bedienen; Einzelheiten in `email-connectors-eu.md`.

Vorab nötig: Konto beim Anbieter, authentifizierte Absender-Domain (DNS-Zugriff), API-Schlüssel.

## Recht

`legal-check-de.md` ist eine Orientierung nach deutschem Recht mit Stand November 2026 und keine Rechtsberatung. Der Skill leitet aus den Antworten ab, was für den konkreten Fall gilt, baut Impressum und einen Entwurf der Datenschutzerklärung aus den eigenen Angaben und markiert alles Ungeprüfte. Österreich und Schweiz sind nur als Hinweise enthalten.

## Dateien

| Datei | Zweck |
|---|---|
| `SKILL.md` | Steuerung: Etappen, Regeln, Befehle, Fortsetzen |
| `vorbereitung.md` | Handout für Teilnehmende |
| `stage-1-explore.md` | Fragenkatalog Etappe 1 |
| `stage-2-roast.md` | Roast, Selbstreflexion, Entscheidungen |
| `stage-3-design-build.md` | Branding, Bilder, Konzept, Bau, Iteration 1, Interview-Vorbereitung |
| `stage-3-feedback-interviews.md` | Interviewleitfaden, Auswertung, Iteration 2 und 3 |
| `stage-3-publish.md` | Rechts-Interview, Anmeldung, Veröffentlichungs-Check |
| `legal-check-de.md` | Rechtsmatrix, Pflichtangaben, Beispiele |
| `email-connectors-eu.md` | Europäische E-Mail-Anbieter über Konnektoren |
| `landing-page-playbook.md` | Aufbau, Texte, CTA-Muster, Belege |
| `lovable-build-rules.md` | Bau- und Iterationsregeln für Lovable, `AGENTS.md`-Vorlage |
| `quality-checklist.md` | Qualitäts-Check |
| `template-*.md` | Vorlagen der fünf Ergebnisdokumente |

Jedes Modul enthält eigene Guardrails und Beispiele für gute und schlechte Ergebnisse.

## Anpassen

- Fragen ändern: `stage-1-explore.md` und passend dazu `template-produkt-grundlage.md`.
- Zeitbudgets ändern: Tabelle in `SKILL.md` und die Angaben im jeweiligen Etappen-Modul.
- Eigene Design-Vorgaben für alle Teilnehmenden: in `stage-3-design-build.md`, Teil A, als feste Brand eintragen.
- Rechtsstand aktualisieren: `legal-check-de.md` und das Datum in `stage-3-publish.md`.
- Anbieterliste aktualisieren: `email-connectors-eu.md`.

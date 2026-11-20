# Landing Page Launchpad (Plugin, v3.0.0)

Geführter Workshop vom Pitch zur Landing-Page, gebaut für Lovable, Dialog auf Deutsch. Ein Skill je Etappe und ein Router.

**Stand:** Die Skills sind bisher nicht in Lovable gelaufen. Vor dem ersten Einsatz mit Teilnehmenden den Probelauf aus `docs/testplan.md` machen.

## Skills

| Skill | Etappe | Ergebnis |
|---|---|---|
| `launchpad` | Router und Kickoff | findet den Stand, übergibt an die richtige Etappe |
| `launchpad-1-erkunden` | 1 Erkunden | `docs/Produkt-Grundlage_v1.md` |
| `launchpad-2-roast` | 2 Roast | `docs/Produkt-Strategie_v1.md`, `AGENTS.md` |
| `launchpad-3-bauen` | 3 Bauen | Seitenkonzept, Entwurf mit Mockup-Anmeldung, Interviewleitfaden |
| `launchpad-4-feedback` | 4 Feedback | `docs/Feedback-Auswertung_v1.md`, überarbeiteter Entwurf |
| `launchpad-5-veroeffentlichen` | 5 Veröffentlichen | `docs/Veroeffentlichungs-Check_v1.md`, Impressum, echte Anmeldung |

Etappe 1 bis 3 sind die Workshop-Sitzung (Richtwert drei Stunden, ungemessen). Etappe 4 und 5 folgen in den Tagen danach.

## Aufbau

```text
.claude-plugin/plugin.json     Plugin-Manifest
skills/<name>/SKILL.md         je Skill nur diese Datei auf oberster Ebene
skills/<name>/references/      Nachschlage-Dateien, die der Skill bei Bedarf liest
skills/<name>/assets/          Vorlagen für die Ergebnisdokumente
shared/core-rules.md           Quelle der gemeinsamen Regeln (Glossar, Sicherheitsmarken, Speichern)
scripts/sync-shared.sh         kopiert core-rules.md in jeden Skill
scripts/flatten-skill.sh       Ausweichweg: flache ZIP-Fassung eines Skills
docs/                          Handouts und Testplan für Menschen
```

`shared/core-rules.md` ist die einzige Stelle, an der die gemeinsamen Regeln gepflegt werden. Nach einer Änderung `scripts/sync-shared.sh` ausführen und committen; jeder Skill trägt eine Kopie, weil ein Skill nicht auf Dateien eines anderen zugreifen kann.

## Installieren

**In Lovable (aus GitHub):** In Workspace settings → Skills → Add → Import from GitHub je Skill eine dieser Adressen einfügen, sechs Importe. Teilnehmende können dieselben Adressen als persönliche Skills importieren.

```text
https://github.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/tree/main/plugins/landing-page-launchpad/skills/launchpad
https://github.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/tree/main/plugins/landing-page-launchpad/skills/launchpad-1-erkunden
https://github.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/tree/main/plugins/landing-page-launchpad/skills/launchpad-2-roast
https://github.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/tree/main/plugins/landing-page-launchpad/skills/launchpad-3-bauen
https://github.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/tree/main/plugins/landing-page-launchpad/skills/launchpad-4-feedback
https://github.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/tree/main/plugins/landing-page-launchpad/skills/launchpad-5-veroeffentlichen
```

Lovables Dokumentation beschreibt Zusatzdateien nur „im selben Verzeichnis wie SKILL.md" und sagt nicht, ob Unterordner beim GitHub-Import gelesen werden. Das ist Punkt 2 im Testplan. Falls nicht: `scripts/flatten-skill.sh <skill>` erzeugt eine flache ZIP-Fassung zum Hochladen.

**Als Plugin (Claude Code):** `/plugin marketplace add Prism-Purpose-Pace/idea2self-tools_landingpage-builder`, dann `/plugin install landing-page-launchpad@idea2self-skills`.

## Starten

Im Projekt-Chat `/launchpad` eingeben. Jeder Abschluss nennt die Zeile für die nächste Etappe.

Befehle im Gespräch: `weiter`, `überspringen`, `zurück`, `vertiefen`, `status`, `pause`, `kurzfassung`, `speichern`.

## Regeln, die bewusst gesetzt sind

- Die Anmeldung im Entwurf ist ein Mockup und speichert nichts. Erst Etappe 5 bindet eine echte Anmeldung an.
- E-Mail nur über Konnektoren und nur über europäische Anbieter. Ein MCP-Server allein kann das Formular einer veröffentlichten Seite nicht bedienen; Einzelheiten in `skills/launchpad-5-veroeffentlichen/references/email-connectors-eu.md`.
- Etappe 5 ist eine Orientierung nach deutschem Recht mit Stand November 2026 und keine Rechtsberatung. Der Skill baut das Impressum aus den eigenen Angaben und schreibt keine Datenschutzerklärung.

## Für die Workshop-Leitung

`docs/vorbereitung.md` vorab verschicken, `docs/moderations-handout.md` für den Ablauf im Raum, `docs/testplan.md` für den Probelauf.

## Änderungen gegenüber v2

- Aufteilung in sechs Skills; Feedback und Veröffentlichung sind eigene Skills für die Zeit nach dem Workshop.
- Gemeinsame Regeln in einer Datei: verbindliches Glossar, Wortwahl-Regeln, sieben Sicherheitsmarken mit Tabelle, was auf die Seite darf.
- Weniger Build-Schritte: vorläufiges Speichern, Seitenkonzept und Bau in einem Schritt, Änderungen nach Thema gebündelt.
- Etappe 1 mit sechs Blöcken und Stern-Fragen als Standard; weitere Fragen über `vertiefen`.
- Kickoff in zwei kurzen Nachrichten.
- Roast mit Rahmen, drei Befunden als Standard, „Kleinster Test" und Kurzantwort „1 B, 2 R, 3 T".
- Seitenkonzept aus einer Argumentationslinie mit fünf Pflichtteilen statt zehn festen Abschnitten.
- Art-Direction mit Welt, Aufbau des ersten Bildschirms und Signatur-Element; Verbotsliste gekürzt.
- Etappe 5 neu geordnet: Fall in einem Satz, Voraussetzungen zuerst, Test nach der Veröffentlichung, fertiges Formular des Anbieters als schneller erster Start.
- Checkliste von 46 auf 12 Punkte.
- Nicht umgesetzt: Schrift-Mechanik (wartet auf den Probelauf).

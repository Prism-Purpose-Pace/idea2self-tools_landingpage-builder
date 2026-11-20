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

### Lovable, Weg 1: Import aus GitHub (empfohlen)

In Workspace settings → Skills → Add → Import from GitHub je Skill eine dieser Adressen einfügen, sechs Importe. Teilnehmende können dieselben Adressen als persönliche Skills importieren.

```text
https://github.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/tree/main/plugins/landing-page-launchpad/skills/launchpad
https://github.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/tree/main/plugins/landing-page-launchpad/skills/launchpad-1-erkunden
https://github.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/tree/main/plugins/landing-page-launchpad/skills/launchpad-2-roast
https://github.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/tree/main/plugins/landing-page-launchpad/skills/launchpad-3-bauen
https://github.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/tree/main/plugins/landing-page-launchpad/skills/launchpad-4-feedback
https://github.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/tree/main/plugins/landing-page-launchpad/skills/launchpad-5-veroeffentlichen
```

Lovables Dokumentation beschreibt Zusatzdateien nur „im selben Verzeichnis wie SKILL.md" und sagt nicht, ob Unterordner beim GitHub-Import gelesen werden. Das ist Punkt 2 im Testplan. Falls nicht: `scripts/flatten-skill.sh <skill>` erzeugt eine flache ZIP-Fassung zum Hochladen.

### Lovable, Weg 2: Installations-Prompt

Für Teilnehmende ohne Admin-Rechte im Workspace. Laut Lovable-Dokumentation kann der Agent im Build-Modus persönliche Skills aus dem Projekt-Chat anlegen, ändern und löschen, und er speichert sie ohne Rückfrage. Das Laden von Dateien aus dem Netz und das Anlegen von Zusatzdateien auf diesem Weg ist nicht geprüft (Testplan Punkt 13).

So geht's:

1. Ein beliebiges Lovable-Projekt öffnen, zum Beispiel ein leeres.
2. Auf **Build-Modus** umschalten; die Installation kostet Credits.
3. Den Prompt unten vollständig einfügen und abschicken.
4. Prüfen unter Account settings → Personal skills: sechs Skills, deren Namen mit `launchpad` beginnen.

````text
Installiere die sechs Skills des Landing Page Launchpad als persönliche Skills in diesem Workspace. Ändere nichts am Projekt-Code und baue nichts.

So gehst du vor:
1. Lade jede unten genannte Datei über ihre Adresse und übernimm den Inhalt Zeichen für Zeichen. Nichts kürzen, übersetzen, verbessern oder zusammenfassen.
2. Lege je Skill einen persönlichen Skill an. Name und Beschreibung stehen im Kopf der jeweiligen SKILL.md zwischen den Linien mit drei Bindestrichen; übernimm sie genau so. Der Inhalt ist der Rest der SKILL.md.
3. Lege die übrigen Dateien eines Skills als Zusatzdateien mit demselben relativen Pfad an (zum Beispiel references/core-rules.md). Wenn persönliche Skills keine Zusatzdateien oder keine Unterordner erlauben, hänge jede Zusatzdatei an das Ende der SKILL.md an, jeweils mit der Überschrift `# Datei: <Pfad>`, und sag mir, dass du das getan hast.
4. Wenn eine Adresse nicht lädt, ein Skill mit diesem Namen schon existiert oder ein Limit greift: hör bei diesem Skill auf, lege nichts Halbes an und nenne mir den Grund. Bestehende Skills überschreibst du nur, wenn ich es bestätige.
5. Melde am Ende als Liste: Skill-Name, angelegt ja oder nein, Anzahl der Dateien, Zusatzdateien oder angehängt.

Skill `launchpad`:
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad/SKILL.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad/references/core-rules.md

Skill `launchpad-1-erkunden`:
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-1-erkunden/SKILL.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-1-erkunden/assets/template-produkt-grundlage.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-1-erkunden/references/core-rules.md

Skill `launchpad-2-roast`:
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-2-roast/SKILL.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-2-roast/assets/template-agents-brief.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-2-roast/assets/template-produkt-strategie.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-2-roast/references/core-rules.md

Skill `launchpad-3-bauen`:
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-3-bauen/SKILL.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-3-bauen/assets/template-agents-brief.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-3-bauen/assets/template-landing-page-konzept.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-3-bauen/references/art-direction.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-3-bauen/references/build-rules.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-3-bauen/references/checklist.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-3-bauen/references/core-rules.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-3-bauen/references/interview-guide.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-3-bauen/references/page-playbook.md

Skill `launchpad-4-feedback`:
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-4-feedback/SKILL.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-4-feedback/assets/template-feedback-auswertung.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-4-feedback/references/build-rules.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-4-feedback/references/checklist.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-4-feedback/references/core-rules.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-4-feedback/references/interview-guide.md

Skill `launchpad-5-veroeffentlichen`:
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-5-veroeffentlichen/SKILL.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-5-veroeffentlichen/assets/template-agents-brief.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-5-veroeffentlichen/assets/template-veroeffentlichungs-check.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-5-veroeffentlichen/references/core-rules.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-5-veroeffentlichen/references/email-connectors-eu.md
- https://raw.githubusercontent.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/main/plugins/landing-page-launchpad/skills/launchpad-5-veroeffentlichen/references/legal-check-de.md
````

Wenn der Agent eine Datei nicht laden kann, Weg 1 nutzen oder die flache ZIP-Fassung aus `scripts/flatten-skill.sh` hochladen.

### Claude Code

`/plugin marketplace add Prism-Purpose-Pace/idea2self-tools_landingpage-builder`, dann `/plugin install landing-page-launchpad@idea2self-skills`.

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

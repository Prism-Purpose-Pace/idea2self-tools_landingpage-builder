# Idea2Self Skills

Marketplace mit den Skills für die Idea2Self-Workshops. Die Skills sind für Lovable gedacht und funktionieren auch in Claude Code und anderen Werkzeugen, die das Agent-Skills-Format mit `SKILL.md` lesen.

## Plugins

| Plugin | Ordner | Inhalt |
|---|---|---|
| `landing-page-launchpad` | `plugins/landing-page-launchpad/` | Geführter Workshop in fünf Etappen vom Pitch zur Landing-Page: Erkunden, Roast, Bauen, Feedback-Gespräche, Veröffentlichung. Ein Skill je Etappe plus Router. Version 3.0.0 |
| `landingpage-builder` | `plugins/landingpage-builder/` | Sammlung einzelner Skills für Positionierung, Texte und Landing-Pages, darunter Jobs to be done, One-Page-Marketing, Humanizer, Fact-Checker |

## In Lovable importieren

Das Repository ist öffentlich. In Lovable unter Workspace settings → Skills → Add → Import from GitHub die Adresse eines Skill-Ordners einfügen, zum Beispiel:

```text
https://github.com/Prism-Purpose-Pace/idea2self-tools_landingpage-builder/tree/main/plugins/landing-page-launchpad/skills/launchpad
```

Jeder Skill wird einzeln importiert. Die Liste aller Adressen für den Launchpad steht in `plugins/landing-page-launchpad/README.md`.

## In Claude Code installieren

```text
/plugin marketplace add Prism-Purpose-Pace/idea2self-tools_landingpage-builder
/plugin install landing-page-launchpad@idea2self-skills
```

## Prüfen

```text
claude plugin validate --strict .
claude plugin validate --strict plugins/landing-page-launchpad
claude plugin validate --strict plugins/landingpage-builder
```

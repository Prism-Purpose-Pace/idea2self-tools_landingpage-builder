# Rechts-Check für Landing-Pages (Deutschland)

Reference for Stage 3c. The content is German because the terms are German law. Use it as a dated starting point: verify what you rely on, cite the source in the check, and keep the status marks.

**Rechtsstand:** November 2026. **Keine Rechtsberatung.**

Statusmarken:

- `[gesichert]` gesetzlich klar oder ständige Rechtsprechung
- `[Praxisstandard]` nicht ausdrücklich vorgeschrieben, aber in der Praxis der sichere Weg
- `[umstritten]` unterschiedliche Auffassungen oder Abgrenzung im Einzelfall
- `[im Fluss]` Rechtslage oder Fristen ändern sich gerade

## Inhalt

1. Entscheidungsmatrix
2. Impressum: Pflichtangaben
3. Datenschutzerklärung: Pflichtinhalte und Datenfluss-Inventar
4. Formular, Einwilligung, Newsletter
5. Kostenpflichtige Angebote an Verbraucher
6. Barrierefreiheit
7. Bilder, KI-Inhalte, Referenzen
8. Werbeaussagen
9. Österreich und Schweiz (nur Hinweise)
10. Beispiele

## 1. Entscheidungsmatrix

| Bereich | Trifft zu, wenn | Ergebnis auf der Seite | Status |
|---|---|---|---|
| Impressum | Die Seite dient einem geschäftlichen Zweck, auch ohne Verkauf (Angebot, Event, Warteliste) | Eigene Seite „Impressum", Link im Footer | `[gesichert]` § 5 DDG |
| Datenschutzerklärung | Immer, sobald personenbezogene Daten verarbeitet werden; schon der Abruf der Seite verarbeitet IP-Adressen | Eigene Seite „Datenschutz", Link im Footer und am Formular | `[gesichert]` Art. 13 DSGVO |
| Auftragsverarbeitung | Dienstleister verarbeiten Daten in deinem Auftrag (Hosting, E-Mail-Anbieter) | Vertrag zur Auftragsverarbeitung mit jedem Dienstleister abschließen oder akzeptieren; kein Seiteninhalt | `[gesichert]` Art. 28 DSGVO |
| Einwilligungs-Banner | Cookies oder ähnliche Techniken, die nicht technisch nötig sind; eingebundene Dienste Dritter | Banner mit echter Wahl vor dem Laden | `[gesichert]` § 25 TDDDG |
| Kein Banner | Keine Tracking-Cookies, keine externen Einbindungen | Nichts | `[gesichert]` |
| Newsletter-Einwilligung | Werbliche E-Mails an Angemeldete | Eigenes, nicht vorangekreuztes Kästchen; Double-Opt-in | `[gesichert]` § 7 UWG, Art. 6, 7 DSGVO; Double-Opt-in `[Praxisstandard]` |
| Verbraucher-Pflichtinformationen, Widerruf, Bestellbutton | Kostenpflichtiger Vertrag mit Privatpersonen wird über die Seite geschlossen | Siehe Abschnitt 5 | `[gesichert]`, Ausnahmen `[umstritten]` |
| AGB | Nie gesetzlich vorgeschrieben; sinnvoll bei bezahlten Angeboten für Storno, Ausfall, Teilnahmebedingungen | Wenn genutzt: vor Vertragsschluss verlinkt und abrufbar | `[gesichert]` §§ 305 ff. BGB |
| Barrierefreiheit (BFSG) | Verträge mit Verbrauchern über die Seite und kein Kleinstunternehmen | Anforderungen einhalten, Erklärung zur Barrierefreiheit | `[gesichert]`, Abgrenzung `[umstritten]` |
| Hinweis Verbraucherschlichtung | Verträge mit Verbrauchern, Website oder AGB, mehr als zehn Beschäftigte | Angabe zur Teilnahmebereitschaft | `[gesichert]` § 36 VSBG |
| Kennzeichnung KI-Bilder | Täuschend echte KI-Darstellungen realer Personen, Orte oder Ereignisse | Sichtbarer Hinweis | `[im Fluss]` Art. 50 KI-VO |

Reine kostenlose Anmeldung oder Warteliste ohne Newsletter: in der Regel genügen Impressum, Datenschutzerklärung, Datenschutzhinweis am Formular und Verträge zur Auftragsverarbeitung.

## 2. Impressum: Pflichtangaben

Grundlage § 5 DDG. Der Link heißt „Impressum", ist von jeder Seite aus erreichbar, leicht erkennbar und nicht von Bannern verdeckt. `[gesichert]`

| Angabe | Wer | Status |
|---|---|---|
| Vor- und Nachname; bei Unternehmen Firma, Rechtsform und Vertretungsberechtigte | alle | `[gesichert]` |
| Ladungsfähige Anschrift (Straße, Hausnummer, PLZ, Ort; kein Postfach) | alle | `[gesichert]` |
| E-Mail-Adresse und ein weiterer Weg für schnelle, unmittelbare Kontaktaufnahme (üblich: Telefon) | alle | `[gesichert]`; Telefon nicht zwingend, ein zweiter direkter Weg schon |
| Register und Registernummer | Eingetragene (HR, VR, PR, GnR) | `[gesichert]` |
| Umsatzsteuer-ID oder Wirtschafts-ID | wer eine hat | `[gesichert]`; die persönliche Steuernummer gehört nicht ins Impressum |
| Zuständige Aufsichtsbehörde | zulassungspflichtige Tätigkeiten | `[gesichert]` |
| Kammer, Berufsbezeichnung, verleihender Staat, berufsrechtliche Regelungen | reglementierte Berufe | `[gesichert]` |
| Inhaltlich verantwortliche Person mit Anschrift | journalistisch-redaktionelle Inhalte | `[gesichert]` § 18 Abs. 2 MStV; eine reine Angebotsseite fällt in der Regel nicht darunter |
| Bereitschaft zur Verbraucherschlichtung | siehe Matrix | `[gesichert]` |

Nicht mehr hinein: der Hinweis auf die EU-Plattform zur Online-Streitbeilegung. Die Plattform wurde am 20.07.2025 eingestellt; alte Vorlagen enthalten den Hinweis noch, und ein Verweis auf eine abgeschaltete Plattform kann als irreführend gelten. `[gesichert]`

Offener Punkt für Einzelpersonen: Wer von zu Hause arbeitet, muss trotzdem eine ladungsfähige Anschrift nennen. Ob Adressdienste dafür ausreichen, hängt von deren Ausgestaltung ab. `[umstritten]`

## 3. Datenschutzerklärung: Pflichtinhalte und Datenfluss-Inventar

Pflichtinhalte nach Art. 13 DSGVO `[gesichert]`:

- Name und Kontaktdaten des Verantwortlichen; Datenschutzbeauftragte, falls vorhanden
- je Verarbeitung: Zweck, Rechtsgrundlage, Empfänger, Übermittlung in Länder außerhalb der EU mit Garantie, Speicherdauer
- Rechte der Betroffenen: Auskunft, Berichtigung, Löschung, Einschränkung, Datenübertragbarkeit, Widerspruch
- Recht, eine Einwilligung jederzeit zu widerrufen
- Beschwerderecht bei einer Datenschutz-Aufsichtsbehörde
- ob die Angabe der Daten erforderlich ist und was ohne sie geschieht

Datenfluss-Inventar: die Erklärung wird daraus gebaut, nicht aus einer Vorlage.

| Verarbeitung | Daten | Dienst | Zweck | Rechtsgrundlage (typisch) | Zu klären |
|---|---|---|---|---|---|
| Abruf der Seite | IP-Adresse, Zeit, Browserdaten | Hosting (bei Lovable-Projekten: Lovable) | Auslieferung, Sicherheit | berechtigtes Interesse | Anbieter, Serverstandorte, Drittland, Vertrag: beim Anbieter nachlesen, nicht vermuten |
| Anmeldung | Name, E-Mail, weitere Felder | Formular, E-Mail-Anbieter, ggf. Datenbank | Durchführung der Anmeldung | Vertrag oder vorvertragliche Maßnahme | Speicherort, Löschfrist |
| Newsletter | E-Mail, Zeitpunkt und Nachweis der Einwilligung | E-Mail-Anbieter | Werbung | Einwilligung | Auswertung von Öffnungen und Klicks nur mit Hinweis und Einwilligung |
| Reichweitenmessung | Seitenaufrufe, Land, Gerät | integrierte Analytics oder externer Dienst | Erfolgsmessung | je nach Technik | Werden Cookies oder Gerätekennungen genutzt? Ohne solche Techniken kein Banner nach § 25 TDDDG; DSGVO-Grundlage trotzdem nennen `[Praxisstandard]` |
| Schriften | IP-Adresse | externer Schriftserver | Darstellung | — | Vermeiden: Schriften lokal einbinden |
| Einbettungen | IP-Adresse, ggf. Cookies | Video, Karte, Kalender | Komfort | Einwilligung | Erst nach Klick laden oder weglassen |

Schriften von externen Servern: Ein Landgericht hat 2022 die dynamische Einbindung von Google Fonts ohne Einwilligung als Verstoß gewertet (LG München I, 3 O 17493/20). Das ist ein Einzelurteil, wird in der Praxis aber durchgehend beachtet: Schriften lokal ausliefern. `[Praxisstandard]`

Die fertige Erklärung ist ein Entwurf. Alles, was nicht aus Unterlagen des jeweiligen Dienstes belegt ist, trägt `[prüfen]`.

## 4. Formular, Einwilligung, Newsletter

- Nur Felder abfragen, die für den nächsten Schritt nötig sind (Datenminimierung). `[gesichert]`
- Am Formular ein kurzer Hinweis mit Link zur Datenschutzerklärung. Für die Anmeldung selbst ist kein Einwilligungs-Kästchen nötig, wenn nur die Anmeldung abgewickelt wird. `[gesichert]`
- Organisatorische E-Mails zur Anmeldung (Bestätigung, Termindetails, Erinnerung) gehören zur Abwicklung und brauchen keine Werbe-Einwilligung, solange sie keine Werbung enthalten. `[gesichert]`
- Newsletter und Werbung nur mit vorheriger ausdrücklicher Einwilligung: eigenes Kästchen, nicht vorangekreuzt, nicht an die Anmeldung gekoppelt, klar benannt, was kommt und von wem. `[gesichert]`
- Die Einwilligung muss nachweisbar sein. Double-Opt-in mit Protokollierung von Wortlaut, Zeitpunkt, Bestätigungs-Mail und Bestätigung ist dafür der übliche Weg; Adresse, IP und Zeitstempel allein wurden gerichtlich als Nachweis für unzureichend gehalten. `[Praxisstandard]`
- Die Bestätigungs-Mail im Double-Opt-in enthält keine Werbung. `[gesichert]`
- Jede werbliche Mail enthält Abmeldelink und Anbieterangaben. `[gesichert]`
- Werbung an Bestandskunden ohne Einwilligung ist nur unter engen Voraussetzungen möglich (§ 7 Abs. 3 UWG) und für eine neue Anmeldeseite in der Regel nicht einschlägig. `[gesichert]`, Reichweite der Ausnahme `[im Fluss]`

## 5. Kostenpflichtige Angebote an Verbraucher

Nur relevant, wenn Privatpersonen über die Seite einen kostenpflichtigen Vertrag schließen. Wird an anderer Stelle gebucht und bezahlt (Ticket- oder Buchungsplattform), liegen diese Pflichten dort; die Angaben auf der Seite müssen aber dazu passen.

- Vor der Bestellung: wesentliche Eigenschaften der Leistung, Gesamtpreis einschließlich Umsatzsteuer und aller Kosten, Zahlungs- und Leistungsbedingungen, Identität des Anbieters. `[gesichert]` Art. 246a EGBGB, PAngV
- Kleinunternehmer ohne Umsatzsteuer weisen beim Preis darauf hin. `[Praxisstandard]`
- Der Bestellbutton ist eindeutig beschriftet, etwa „zahlungspflichtig bestellen" oder „kostenpflichtig buchen". `[gesichert]` § 312j Abs. 3 BGB
- Widerrufsrecht: Verbraucher können Fernabsatzverträge grundsätzlich 14 Tage widerrufen; darüber ist zu belehren. `[gesichert]`
- Seit 19.06.2026 muss zusätzlich eine elektronische Widerrufsfunktion bereitstehen, wenn ein Widerrufsrecht besteht und der Vertrag über eine Online-Oberfläche geschlossen wird. `[gesichert]` § 356a BGB
- Ausnahme für termingebundene Freizeitveranstaltungen (§ 312g Abs. 2 Nr. 9 BGB): für Eintrittskarten anerkannt. Ob sie auch für Seminare, Workshops und Coaching gilt, wird unterschiedlich beurteilt; Ausnahmen werden eng ausgelegt. `[umstritten]` Vorsichtiger Weg: Widerrufsrecht einräumen oder prüfen lassen.
- Bestätigung des Vertrags auf dauerhaftem Datenträger, üblicherweise per E-Mail. `[gesichert]`

Angebote nur an Unternehmen: kein Widerrufsrecht, Preise dürfen netto ausgewiesen werden, wenn der Kreis klar auf Unternehmer beschränkt ist. Ein bloßer Hinweis reicht dafür oft nicht. `[umstritten]`

## 6. Barrierefreiheit

- Pflicht nach BFSG seit 28.06.2025 für Dienstleistungen im elektronischen Geschäftsverkehr gegenüber Verbrauchern, also Seiten, über die Verbraucher Verträge anbahnen und schließen. `[gesichert]`
- Ausnahme für Kleinstunternehmen, die Dienstleistungen erbringen: weniger als zehn Beschäftigte und höchstens 2 Millionen Euro Jahresumsatz oder Bilanzsumme. `[gesichert]`
- Reine Informationsseiten und einfache Kontaktformulare fallen in der Regel nicht darunter; bei Buchung oder Terminvergabe über die Seite wird es anders gesehen. `[umstritten]`
- Wer verpflichtet ist: Maßstab ist im Kern WCAG 2.1 AA, dazu eine Erklärung zur Barrierefreiheit. `[gesichert]`
- Unabhängig von der Pflicht prüft die Qualitäts-Checkliste Kontrast, Beschriftungen und Tastaturbedienung.

## 7. Bilder, KI-Inhalte, Referenzen

- Für jedes Bild eine Lizenz oder eigene Rechte; Lizenzbedingungen von Stock-Anbietern beachten (Nennung, Nutzungsart). `[gesichert]`
- Erkennbare Personen nur mit deren Einwilligung. `[gesichert]`
- Zitate und Referenzen nur echt und mit Erlaubnis; erfundene oder gekaufte Bewertungen sind unlauter. `[gesichert]`
- KI-generierte Bilder: Seit 02.08.2026 gelten Transparenzpflichten nach Art. 50 KI-VO. Für Betreiber einer Seite ist vor allem die Kennzeichnung täuschend echter Darstellungen realer Personen, Orte oder Ereignisse relevant. Einzelne Fristen und Details wurden 2026 angepasst. `[im Fluss]` Sicherer Weg: solche Bilder sichtbar als KI-generiert kennzeichnen oder nicht verwenden; maschinenlesbare Herkunftsangaben in den Dateien nicht entfernen.
- Namens- und Markenkonflikte: vor dem Start den Namen des Angebots in den Markenregistern (DPMA, EUIPO) suchen. `[Praxisstandard]`

## 8. Werbeaussagen

- Keine irreführenden Angaben über Leistung, Ergebnis, Preis, Verfügbarkeit oder Anbieter. `[gesichert]` § 5 UWG
- Verknappung und Fristen nur, wenn sie stimmen.
- Erfolgs- und Gesundheitsversprechen sind besonders riskant; als persönliche Erfahrung formulieren oder weglassen.
- „Kostenlos" nur, wenn keine versteckten Kosten oder Bedingungen folgen.

Das deckt sich mit der Status-Regel des Workshops: nur `[belegt]` erscheint als Tatsache.

## 9. Österreich und Schweiz (nur Hinweise)

Nicht vertieft. Jeden Punkt für das jeweilige Land prüfen.

- Österreich: Informationspflichten nach § 5 ECG und Offenlegung nach § 25 MedienG; E-Mail-Werbung § 174 TKG 2021; DSGVO gilt; Barrierefreiheitsgesetz (BaFG).
- Schweiz: Impressumspflicht im elektronischen Geschäftsverkehr nach Art. 3 Abs. 1 lit. s UWG; Datenschutzerklärung nach revidiertem DSG; Massenwerbung nur mit Einwilligung, Art. 3 Abs. 1 lit. o UWG. Wer sich an Menschen in der EU richtet, muss zusätzlich die DSGVO beachten.

## 10. Beispiele

Impressum für eine Einzelperson. Alle Angaben sind erfunden und dienen nur dem Aufbau; niemals übernehmen.

```text
Impressum

Mara Beispiel
Musterweg 12
12345 Beispielstadt

E-Mail: kontakt@beispiel.example
Telefon: 01234 567890

Umsatzsteuer-ID: [nur falls vorhanden]
```

Hinweis am Formular bei einer kostenlosen Anmeldung:

```text
Gut:      „Wir verwenden deine Angaben nur für deine Anmeldung. Mehr dazu in der Datenschutzerklärung."
Schlecht: „Mit dem Absenden stimmst du unseren AGB, der Datenschutzerklärung und dem Erhalt von Angeboten zu."
```

Der schlechte Text koppelt Werbung an die Anmeldung und verlangt eine Zustimmung zur Datenschutzerklärung, die nur zur Kenntnis genommen werden muss.

Newsletter-Einwilligung als eigenes, leeres Kästchen:

```text
Gut:      „Ja, ich möchte etwa einmal im Monat Neuigkeiten von [Anbieter] per E-Mail erhalten.
           Abmeldung jederzeit über den Link in jeder E-Mail."
Schlecht: vorangekreuztes Kästchen „Newsletter abonnieren"
Schlecht: „Ich möchte über interessante Angebote von uns und unseren Partnern informiert werden."
```

Datenschutzerklärung, ein Abschnitt aus dem Inventar:

```text
Gut:      „Anmeldung: Wir verarbeiten Vorname und E-Mail-Adresse, um deine Anmeldung zu bestätigen und dir
           die Termindetails zu schicken (Art. 6 Abs. 1 lit. b DSGVO). Versanddienstleister: [Anbieter, Sitz].
           Speicherort: [prüfen]. Löschung: [Frist] nach dem Termin."
Schlecht: ein kopierter Absatz über Google Analytics, Facebook-Pixel und YouTube, die auf der Seite gar nicht vorkommen.
```

# 🃏 Klassenkampf – Die Pauker der Tafelrunde

Digitales Lehrertauschkarten-Sammelspiel, gebaut in einer Programmierwoche im Weiterbildungskurs Informatik 7. 

Im Stile eines klassischen Quartettspiels werden Lehrerkarten gegeneinander ausgespielt.

Es soll zwei Spielmodi geben, einmal spielen die Spieler mit allen Karten gegeneinander, wer als erstes alle Karten besitzt, gewinnt. Die Karten erhält jeder Spieler nach dem Match zurück.

Im Spielmodus "Kämpfen" wird nur eine Karte gegen eine andere ausgespielt.

Die Lehrerkarten werden aus einer Datenbank den Spielern zugeteilt.

## Inhaltsverzeichnis

- [Über das Projekt](#über-das-projekt)
- [Tech-Stack](#tech-stack)
- [Erste Schritte](#erste-schritte)
- [Projektstruktur](#projektstruktur)
- [Zeitplan](#zeitplan)
- [Team & Rollen](#team--rollen)
- [Mitwirken](#mitwirken)
- [Datenschutz](#datenschutz)

## Über das Projekt

**Verpflichtender Funktionsumfang:**

- 🖼️ Karten-Creator: Lehrkräfte-Formular → API-Anbindung zur Kartengestaltung
- ✅ DSGVO-Einwilligung per Pflicht-Checkbox
- 👤 Nutzerverwaltung / Accounts (Rollen: Lehrkraft, Schüler:in, Admin)
- 🔁 Tauschfunktion zwischen Schüler-Accounts

- ⚔️ Spielfunktion: Kartenvergleich („Stechen", wie beim klassischen Quartett) mit
  freier Kategoriewahl
- ⭐ Sonderkarten mit Extraregeln

Der Funktionsumfang ist gestuft: **Basis** (Pflicht für alle Gruppen) →
**Erweiterung** → **Bonus**. Details dazu und zum ER-Modell/Klassenkonzept stehen in
[`docs/`](./docs).

## Tech-Stack

| Bereich | Technologie |
|---|---|
| Datenbank | MariaDB |
| Backend | Vanilla PHP (kein Framework) |
| Frontend | HTML, CSS-Framework „Basecode", htmx |
| Ausrichtung | Mobile First; optional als PWA/Homescreen-„App" |
| Versionsverwaltung | GitHub |

## Erste Schritte

Voraussetzungen: PHP ≥ 8.1, MariaDB, Composer optional (falls Abhängigkeiten dazukommen).

```bash
git clone <repo-url> klassenkampf
cd klassenkampf

# Datenbank anlegen und Schema importieren
mysql -u root -p -e "CREATE DATABASE klassenkampf CHARACTER SET utf8mb4"
mysql -u root -p klassenkampf < db/schema.sql

# Zugangsdaten eintragen
cp .env.example .env

# Lokalen PHP-Server starten
php -S localhost:8000 -t public
```

Anschließend ist die Anwendung unter `http://localhost:8000` erreichbar.

## Projektstruktur

```
klassenkampf/
├── public/                     # Einstiegspunkt (index.php), Assets
├── src/
│   ├── Karte.php               # Pflicht-Kernklasse
│   ├── Nutzer.php
│   ├── Kartensammlung.php
│   ├── Deck.php
│   ├── Tausch.php
│   ├── KartenCreatorService.php
│   └── Spiel/
│       ├── Duellrunde.php
│       ├── Vergleichskategorie.php
│       └── Rundenergebnis.php
├── db/
│   └── schema.sql              # ER-Modell als CREATE-TABLE-Statements
├── docs/                       # Entwurfspakete, Scrum-Unterlagen, Product Backlog
└── README.md
```

## Zeitplan

Ein Sprint pro Tag, jeweils mit Daily Scrum, Arbeitsphase und Sprint Review am
Tagesende (Details im Scrum-System-Dokument unter `docs/`).

| Tag | Sprint | Ziel |
|---|---|---|
| Montag | Sprint 0 – Kickoff | Team & Rollen festlegen, ER-Modell entwickeln, MariaDB + GitHub-Repo aufsetzen |
| Montag Nachm. – Dienstag | Sprint 1 | `Karte`-Klasse, Karten-Creator-Formular inkl. DSGVO-Checkbox |
| Mittwoch | Sprint 2 | Nutzerverwaltung/Accounts, erste htmx-Interaktionen, mobile-first Kartenanzeige |
| Donnerstag | Sprint 3 | Differenzierung: Tauschfunktion, Deckbuilding, Spielfunktion – bzw. Vertiefung der Basis |
| Freitag | Sprint 4 | Sonderkarten, Hosting/Deployment, Test, Sprint Review & Präsentation |

Das vollständige Product Backlog (12 User Stories mit Priorität und Größe) liegt als
`docs/product_backlog.csv` vor; `docs/create_issues.py` legt daraus GitHub Issues,
Labels und Milestones an.

## Team & Rollen

- **Product Owner:** Lehrkräfteteam (priorisiert das Backlog, nimmt im Review ab)
- **Scrum Master:** rotiert täglich unter den Schüler:innen einer Gruppe
- **Entwicklungsteam:** restliche Gruppenmitglieder

## Mitwirken

Neue User Stories werden über die Issue-Vorlage [`user_story.md`](./.github/ISSUE_TEMPLATE/user_story.md)
angelegt und im Sprint Planning ins Sprint Backlog übernommen. Jede Story gilt erst als
fertig, wenn sie die Definition of Done erfüllt (Code auf GitHub, mobil getestet,
DSGVO-Checkbox bei Formularen, kurze Doku, Abnahme durch den Product Owner).

## Datenschutz

Während der Programmierwoche wird ausschließlich mit Platzhalter-/Testdaten gearbeitet.
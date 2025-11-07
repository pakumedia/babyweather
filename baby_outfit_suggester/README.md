# Baby Outfit Suggester

Eine Flutter-App, die täglich passende Baby-Outfits vorschlägt – inspiriert von deinem Tailwind-Entwurf und konsequent im Cupertino-/Apple-HIG-Stil umgesetzt.

A Flutter app that suggests baby outfits every day, inspired by your Tailwind mock-up and implemented with a Cupertino/Apple HIG look and feel.

## Screens

- **Home** – Wetterkarte, Kontext-Chips, Outfit-Kacheln und Komfort-Feedback via Sliding-Segmented-Control.
- **Tips** – Kuratierte Abschnittslisten mit hilfreichen Tipps, Badges und einem Call-to-Action für adaptive Vorschläge.
- **Settings** – iCloud-artige Profilkarte, „Add Baby“-Card mit Button sowie gruppierte Einstellungen mit Switches und Chevron-Navigation.

## Projektstruktur / Project Structure

```
lib/
 ├─ app.dart                # CupertinoApp + Tab Scaffold
 ├─ theme/app_theme.dart    # Farbpalette & Cupertino Themes
 └─ screens/
     ├─ home_screen.dart
     ├─ tips_screen.dart
     └─ settings_screen.dart
```

## Voraussetzungen / Prerequisites

- Flutter SDK 3.35 (im Repo als `flutter_sdk/` geklont) oder eine gleichwertige Installation.
- Für iOS: Xcode + CocoaPods (`pod install` im `ios/` Ordner).
- Für Android: Android Studio bzw. SDK, ein Gerät oder Emulator.

## Ausführen / Run

```bash
cd baby_outfit_suggester
../flutter_sdk/bin/flutter pub get
../flutter_sdk/bin/flutter run        # Wählt automatisch ein verbundenes Gerät
```

Für iOS-spezifische Builds:

```bash
cd baby_outfit_suggester
../flutter_sdk/bin/flutter build ios
```

Für Android:

```bash
cd baby_outfit_suggester
../flutter_sdk/bin/flutter build apk
```

> Hinweis / Note: Alternativ kannst du deine eigene Flutter-Installation verwenden (`flutter run`). Stelle sicher, dass die Version ≥ 3.19 ist, damit `CupertinoListTile` und neuere Cupertino-APIs verfügbar sind.

## Nächste Schritte / Next Steps

- Wetterdaten anbinden (z. B. Apple WeatherKit oder OpenWeatherMap).
- Outfit-Empfehlungen auf Basis echter Feedback- und Baby-Profile berechnen.
- Tests (`flutter test`) ergänzen, sobald die Logik hinterlegt ist.

# Discovery Earth

## Short Description
`Discovery Earth` is a Flutter application that implements a responsive, single-page landing experience for an eco-luxury concept brand (`Eden Reverie`).

The current implementation focuses on UI/UX delivery: adaptive layouts, rich visual sections, SVG/image assets, and section-based navigation. Domain/data layers are scaffolded but not yet implemented with real backend logic.

## Main Features
- Responsive landing page with dedicated sections and adaptive behavior for mobile/tablet/desktop.
- Sticky navigation bar and mobile drawer with smooth scroll-to-section navigation.
- Hero section with CTA and local UI state toggle (`Ambient Sound`).
- Themed content sections: Living Gallery, Expeditions, Patrons Club, Art Vault, Journal, Retreats, Impact, Community, Footer.
- Interactive map section using OpenStreetMap tiles (`flutter_map`) with local filters and a status slider.
- Reusable presentation widgets for cards, stats, initiatives, and content blocks.
- Centralized theme setup (colors + typography) and generated typed assets via FlutterGen.

## Technologies Used
- **Framework:** Flutter
- **Language:** Dart
- **Routing:** `go_router`
- **Dependency Injection:** `get_it`
- **Responsive UI:** `responsive_framework`
- **SVG Rendering:** `flutter_svg`
- **Map Rendering:** `flutter_map` + `latlong2`
- **Asset Code Generation:** `flutter_gen_runner` + `build_runner`
- **Linting:** `flutter_lints`

## Tech Stack
- **Presentation:** Flutter widgets, feature-based UI sections, responsive breakpoints.
- **Navigation:** Declarative routing with `GoRouter` (currently one route: `/`).
- **DI & App Config:** `GetIt` container + `AppConfig` registration during bootstrap.
- **Assets:** Typed access from generated files in `lib/gen/`.
- **Platforms:** Android, iOS, Web, Windows, macOS, Linux (Flutter app template targets present).

## Project Structure Overview
```text
lib/
  main.dart                    # Entry point
  bootstrap/                   # App initialization (bindings, DI, config)
  app/
	app.dart                   # MaterialApp.router + responsive wrapper
	router/                    # go_router setup
	theme/                     # Colors, typography, theme
	config/                    # Environment/app config
  core/
	di/                        # Global DI setup (GetIt)
	...                        # Error/network/storage/responsive scaffolding (mostly placeholders)
  features/
	landing/
	  presentation/            # Implemented landing page, sections, widgets, routes
	  domain/                  # Clean architecture scaffolding (currently empty)
	  data/                    # Clean architecture scaffolding (currently empty)
	  di/                      # Feature DI registration hook
  gen/                         # Generated FlutterGen files (assets/fonts)
  shared/                      # Shared scaffolding (currently mostly placeholders)
```

## Architecture Notes
- The repository follows a **feature-first + clean architecture skeleton** (`presentation/domain/data`).
- At the moment, only the **presentation layer** of the landing feature is implemented with real code.
- Domain/data/network/error abstractions exist mostly as placeholders for future expansion.

## State Management & Error Handling
- **State management (current):** local `StatefulWidget` + `setState` for UI interactions (switches, map controls, drawer/section navigation).
- **Global/state pattern status:** BLoC files exist (`landing_bloc`, `landing_event`, `landing_state`) but are currently empty and not wired.
- **Error handling status:** centralized exception/failure infrastructure files exist in `lib/core/errors/`, but no concrete error handling flow is implemented yet.

## Code Generation
Code generation is used for typed asset/font access via FlutterGen.

Already generated files:
- `lib/gen/assets.gen.dart`
- `lib/gen/fonts.gen.dart`

Regenerate when assets/fonts change:
```bash
dart run build_runner build --delete-conflicting-outputs
```

> No `freezed` / `json_serializable` models are currently used in the codebase.

## Environment Requirements
- Flutter SDK (stable channel) compatible with this project.
- Dart SDK constraint from `pubspec.yaml`: `^3.9.0`.
- For Android builds: JDK 11 (project Gradle config targets Java 11).
- For iOS builds: macOS + Xcode + CocoaPods, iOS deployment target `13.0`.

## How To Run
1. Install dependencies:
```bash
flutter pub get
```

2. Run on a device/emulator (example for web):
```bash
flutter run -d chrome
```

3. Run on another target (if available):
```bash
flutter run -d ios
flutter run -d android
```

## Optional Build Commands
Android:
```bash
flutter build apk --release
flutter build appbundle --release
```

iOS:
```bash
flutter build ios --release
```

Web:
```bash
flutter build web --release
```

## Notes for Technical Task Review
- The project demonstrates strong focus on **responsive UI implementation**, **layout adaptation**, and **component-based composition**.
- Current functionality is mostly **static/demo content** with UI interactions; production integrations (API, persistence, robust state/error architecture) are prepared as scaffolding but not yet implemented.


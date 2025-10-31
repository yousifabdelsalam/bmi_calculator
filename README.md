# [bmi_calculator] - Flutter Mobile App

<image-card alt="App Screenshot" src="gg.jpg" ></image-card>  # Upload screenshots to a /screenshots folder in the repo

## Description
A cross-platform mobile app built with Flutter for [brief purpose, e.g., fetching real-time news with search and favorites].

## Features
- Real-time search with debouncing and BLoC/Cubit state management
- API integration (e.g., NewsAPI or FakeStoreAPI)
- Local storage for favorites using path_provider or sqflite
- Custom widgets like reusable TextFormField
- Camera functionality for [if applicable, e.g., subject-based note-taking]

## Technologies
- Flutter & Dart
- State Management: BLoC/Cubit
- Packages: http, provider, camera, saver_gallery, etc.
- APIs: [List any]

## Installation
1. Clone the repo: `git clone https://github.com/your-username/repo-name.git`
2. Run `flutter pub get`
3. Run `flutter run` for development or `flutter build apk` for release.

## Screenshots
<image-card alt="Search Screen" src="screenshots/search.png" ></image-card>
<image-card alt="Home Layout" src="screenshots/home.png" ></image-card>

## What I Learned
- Optimized UI rebuilds to prevent text disappearance in search fields
- Handled type errors in API parsing (e.g., List<dynamic> to Map)
- Managed navigation with Navigator.pushReplacement without state loss

## License
MIT License (or choose one)
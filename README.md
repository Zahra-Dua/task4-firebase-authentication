# task5_firebase_authentication

A Flutter Firebase Authentication app with login and signup functionality.

## Features

- User registration and login with Firebase Authentication
- Form validation and error handling
- Centered UI design for better user experience
- Firestore database integration for user data storage
- Profile screen to display user information

## Getting Started

This project is a starting point for a Flutter application with Firebase integration.

### Prerequisites

- Flutter SDK (^3.8.0)
- Firebase project setup
- Android/iOS development environment

### Dependencies

- `firebase_core: ^4.0.0`
- `firebase_auth: ^6.0.1`
- `cloud_firestore: ^6.0.0`
- `cupertino_icons: ^1.0.8`

### Setup

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Configure Firebase in your project
4. Run `flutter run` to start the app

## Project Structure

```
lib/
├── core/
│   ├── constants/
│   │   └── app_colors.dart
│   └── widgets/
│       └── custom_textfield.dart
├── features/
│   └── auth/
│       ├── data/
│       │   └── auth_service.dart
│       ├── models/
│       │   └── user_model.dart
│       └── presentation/
│           ├── login_screen.dart
│           ├── signup_screen.dart
│           └── profile_screen.dart
├── services/
│   └── firestore_service.dart
└── main.dart
```

## Screenshots

- Login Screen with centered form
- Signup Screen with centered form
- Profile Screen showing user information

## Contributing

Feel free to contribute to this project by submitting issues or pull requests.

## License

This project is open source and available under the [MIT License](LICENSE).

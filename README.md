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
<img width="281" height="644" alt="image" src="https://github.com/user-attachments/assets/39c775a2-aefb-4762-9b77-84b9b82424c3" />

<img width="281" height="643" alt="image" src="https://github.com/user-attachments/assets/d36297bf-27e4-4ea4-8dac-c12f298717af" />

<img width="280" height="646" alt="image" src="https://github.com/user-attachments/assets/5e219adb-651b-490a-a00e-ab4b97bfaa4b" />

<img width="284" height="646" alt="image" src="https://github.com/user-attachments/assets/5e5918f5-8d62-4764-a608-b882f4c4734c" />

<img width="1347" height="602" alt="image" src="https://github.com/user-attachments/assets/806cb84f-edf1-49f4-92e6-7f8f8eadd5ad" />


## Contributing

Feel free to contribute to this project by submitting issues or pull requests.

## License

This project is open source and available under the [MIT License](LICENSE).

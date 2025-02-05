# sidchat
SidChat SidChat is a real-time messaging application designed for seamless communication across platforms. Built with Flutter and Dart for the frontend and Firebase for the backend, SidChat provides a fast and scalable solution for messaging, media sharing, and notifications, available for Android, iOS, and web. Whether you're chatting one-on-one or in groups, SidChat offers a secure, user-friendly experience with real-time updates.
# Features
Real-time Messaging: Instant chat with friends and groups.
Group Chats: Create and participate in group conversations.
Media Sharing: Share images, videos, and files directly in chats.
Push Notifications: Get instant notifications when you receive new messages.
Typing Indicators: See when others are typing.
Message History: Keep a record of your chats, accessible from any device.
Authentication: Secure login and user management with Firebase Authentication.
Cloud Database: Store chat data securely using Firebase Firestore.
Responsive Design: Optimized for mobile devices, tablets, and desktop with Flutter.
# Tech Stack
SidChat utilizes the following technologies:

Frontend: Flutter, Dart
Backend: Firebase
Firebase Authentication (for user login/registration)
Firebase Firestore (for real-time database)
Firebase Cloud Messaging (for push notifications)
Real-Time Communication: Firebase Firestore for syncing messages
Authentication: Firebase Authentication
# Installation
To run SidChat locally, follow the steps below:

Clone the repository:

git clone https://github.com/ogbuinya-princennamdi/sidchat.git
Navigate to the project directory:


cd sidchat
Install Flutter dependencies for the frontend:

cd frontend
flutter pub get
Set up Firebase for the project:

Go to Firebase Console.
Create a new project or use an existing one.
Add Firebase to your Flutter app by following the official instructions for FlutterFire setup.
Download the google-services.json (for Android) and/or GoogleService-Info.plist (for iOS) and place them in the respective directories of your Flutter project.
Configure Firebase in your Flutter app by following the Firebase setup steps for Flutter, ensuring you enable:

# Firebase Authentication
Firestore Database
Firebase Cloud Messaging (for push notifications)
Run the Flutter app on your preferred device:

# For Android/iOS:

flutter run
# For web:

flutter run -d chrome
Open your app and start using SidChat.

Contributing
We welcome contributions to SidChat! If you would like to contribute:

Fork the repository.
Create a new branch for your feature or fix.
Commit your changes.
Push your changes and create a pull request.
Please follow the existing coding conventions and ensure your code is well-documented.

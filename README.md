# Flutter Food Delivery App (Work in Progress)

## Overview

This is a **work-in-progress** Flutter-based food delivery app with integrated features such as:
- **User authentication** using Firebase
- **Restaurant listings** and food item categories
- **Cart management** with a simple checkout flow
- **Stripe payments** integration for secure transactions
- **Order tracking** using Google Maps
- Automated deployment using **Fastlane** and **GitHub Actions** for both Android (Google Play) and iOS (App Store Connect)

---

## Features (In Progress)
- [x] User Authentication with Firebase
- [x] Restaurant Listings with Categories
- [x] Cart Management
- [ ] Payment Integration with Stripe (In Progress)
- [ ] Order Tracking with Google Maps (Pending)
- [ ] Automated Testing & Deployment with Fastlane (In Progress)

---

## Project Structure
```plaintext
lib/
|-- models/           # Data models (e.g., restaurant, food item, cart item)
|-- services/         # Firebase and Stripe services for authentication and payment
|-- screens/          # UI screens for authentication, home, restaurant list, cart, etc.
|-- widgets/          # Reusable widgets for restaurant lists, food grids, etc.
|-- utils/            # Helper functions, theme data, and constants

```
Setup Instructions

Step 1: Clone the repository

```
git clone https://github.com/niteshkumarsinha/PlateMate.git
cd PlateMate
```

Step 2: Install Dependencies

Run the following command to install all the required dependencies:

```
flutter pub get
```

Step 3: Firebase Setup
	•	Download the google-services.json (Android) and GoogleService-Info.plist (iOS) from your Firebase Console and place them in the respective platform folders:
  	•	android/app/google-services.json
  	•	ios/Runner/GoogleService-Info.plist

Step 4: Stripe Setup
•	Add your Stripe API key in the lib/services/payment_service.dart file.

Step 5: Running the App

```
flutter run
```
Deployment (In Progress)

Deployment automation with Fastlane and GitHub Actions is currently being implemented for:

	•	Android: Google Play Store
	•	iOS: TestFlight / App Store Connect

Contribution

This project is currently in the early stages of development. Contributions are welcome, but please open an issue or contact me before submitting major pull requests.

License

This project is licensed under the MIT License - see the LICENSE file for details.

To-Do (Work in Progress)

	•	Implement Stripe payment integration
	•	Add real-time order tracking with Google Maps
	•	Complete Fastlane setup for continuous deployment

### Key Elements:
- **Overview**: Briefly describes the project and its purpose.
- **Features**: Uses checkboxes to show completed and in-progress features.
- **Setup Instructions**: Guides users on how to get the app running.
- **Deployment**: States that automated deployment is still in progress.
- **To-Do**: Lists pending tasks that need to be completed.

You can update the `README.md` as you progress through the project, completing features and automating deployment. Would you like to add or customize any other sections for the `README.md`?

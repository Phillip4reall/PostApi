# A Simple Rest Api Integration Example App


This Flutter Posts app provides solid foundation of a rest api integration which include the listing of all the post and comments of a particular post and handling of bookmark locally.
The UI design is consistent to ensuring a seamless user experience.


## Features
Post Listing: Getting user post from the Api
Comments Screen: Displaying the User comments on a post
Bookmark: Bookmark user post locally by using share preferences
Profile: Display user profile

## Videos
# Click on the video to watch the app functions

https://github.com/user-attachments/assets/67bc02b8-edf8-432c-a133-5d09313abdbc


## Prerequisites
- [FlutterSDK](https://flutter.dev/docs/get-started/install)
- [Android Studio](https://developer.android.com/studio) or [Visual Studio](https://visualstudio.microsoft.com/) with Flutter and Dart plugins

## Dependencies
This Todo app uses the following dependencies to provide essential functionalities and ensure a smooth development experience:


### Core Dependencies

1.. Flutter_riverpod: ^2.6.1
An advanced state management library that is an improvement over the original Provider package, offering better performance and flexibility.

2. SharePreferences: ^2.2.2
A local storage to store and manage app data across the application. making it easy to access save data  from anywhere in the code.

3. Dio: ^5.9.0
   Dio is use to get the data from the Api url and endpoints

## Getting Started
### 1. Clone the Repository
bash
```Copy code
git clone https://github.com/Phillip4reall/PostApi.git
```

### 2. Install Dependencies
Run the following command to install the necessary packages:
bash
```Copy code
flutter pub get
```

### 4. Run the Application
To start the application on an emulator or a connected device, run:
bash
```Copy code
flutter run
```

### 5. Building for Release
For Android:
bash
```Copy code
flutter build apk --release
```

For iOS:
```bash

flutter build ios --release
```

## Project Structure

         








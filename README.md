# Application mobile Flutter for observing Aquaponics data in real-time remotely.

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

*************

## USING:

- Android Studio or VSCode.
- Account creation in Firebase: https://firebase.google.com/
- To download the packages:
- Find and use packages to build Dart and Flutter apps: https://pub.dev/

*************

## Setup

- Create a Flutter project.
- Create a Google Cloud Platform account.
- Create a Firebase account.
- Create a Firebase project.
- Download `google-service.json` file.
- Paste the file `google-service.json` into your app project folder.

![google-service.json](https://user-images.githubusercontent.com/60444937/123498432-d9bc5880-d627-11eb-89d6-c0ab044d5e97.PNG)

### Google Services Gradle Plugin

Add the Google Services plugin to your `build.gradle` file (project-level):

![gradle-project](https://user-images.githubusercontent.com/60444937/123498639-2d7b7180-d629-11eb-8b55-f3a78c2b2269.PNG)

Then, apply it in `app/build.gradle` and add necessary dependencies:

![gradle-app](https://user-images.githubusercontent.com/60444937/123498801-f22d7280-d629-11eb-9bc4-8bbdf46d1a4d.PNG)

## Firebase Data Form

Overview of the mobile application:

![overview](https://user-images.githubusercontent.com/60444937/124836344-be801000-df7a-11eb-999e-bfac4e70446a.png)

### Part 1: Authentication with Firebase

Add the following packages in `pubspec.yaml`:

```yaml
firebase_auth: ^1.1.1
firebase_core: ^1.0.4
firebase_database: ^6.1.2
```

![1](https://user-images.githubusercontent.com/60444937/123497305-a3310e80-d624-11eb-8bb9-212f6261be2f.PNG)
![2](https://user-images.githubusercontent.com/60444937/123497382-23577400-d625-11eb-9976-f9ae6fae8de8.PNG)
![3](https://user-images.githubusercontent.com/60444937/123497444-7af5df80-d625-11eb-9c7b-703ea778afe9.PNG)

### Part 2: Realtime Data from Firebase

![5](https://user-images.githubusercontent.com/60444937/123497614-6bc36180-d626-11eb-8d06-141823fe121e.PNG)
![4](https://user-images.githubusercontent.com/60444937/123497619-6e25bb80-d626-11eb-8e94-bd40544f6de3.PNG)

### Part 3: Information About Fish and Plants in Aquaponics

![++](https://user-images.githubusercontent.com/60444937/123563961-62193580-d7af-11eb-88ab-ccfb1871822b.PNG)
![--](https://user-images.githubusercontent.com/60444937/123563970-69d8da00-d7af-11eb-9af4-8fe8cd7c2671.PNG)
![----](https://user-images.githubusercontent.com/60444937/123563981-70ffe800-d7af-11eb-92f9-143a94aeb4ce.PNG)
![+++++](https://user-images.githubusercontent.com/60444937/123563987-778e5f80-d7af-11eb-9fba-b898ee932715.PNG)

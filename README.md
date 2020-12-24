# hiking-app-flutter
Flutter-based mobile hiking application

# Building
## Code generation
The Freezed package is used to build immutable data classes for the hiking app. If any of the files containing the @freezed annotation are edited the following command should be run to regenerate the dependencies:
'flutter pub run build_runner build  --delete-conflicting-outputs'
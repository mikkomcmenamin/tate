# Tate - Image Annotation

Tate is a simple yet powerful image annotation app built with Flutter.
With Tate, you can easily import images, draw bounding boxes, and annotate objects of interest within the images.
The app is designed for a wide range of use cases, including machine learning, computer vision, and general image annotation tasks.

Tate is currently tested on macOS, but support for web, Windows, and Linux platforms is planned and built-in.

## Features

- Import multiple images at once
- Draw bounding boxes around objects of interest
- Navigate through imported images using a thumbnail grid and choose an image for annotation
- Clear drawn bounding boxes

## ROADMAP Features:

* Auto annotate
* Bounding boxes, polygons, 3d cuboids, image labels
* Google cloud integration
* Manage projects & datasets
* Manage annotators and their tasks
* Track annotation work, hours. Export to payroll?
* Organizations and users management
* Webhooks
* 3 different pricing tiers
* Automated workflows - Zapier?
* APIs to connect to other services

## FUTURE possibilities:
* Train your own vision model
* Export model to cloud, to iPhone/MacOS with CoreML, TensorFlow, etc.
* Annotate Text, Audio and pointclouds
* ALL-IN-ONE Machine learning platform :)

## Getting Started

### Prerequisites

Before you can run the project, make sure you have the following installed:

- Flutter SDK (v3.7.7 or later)
- Dart SDK (v2.19.4 or later)
- For macOS: Xcode (v13.0 or later)

### Running the App

1. Clone this repository:

`git clone https://github.com/your_username/tate.git`

`cd tate`

2. Install dependencies

`flutter pub get`

3. Run on MacOS

`flutter run -d macos`

# Riverpod

When developing, use build runner for riverpod_generator and freezed:

`flutter pub run build_runner watch -d`

It is also recommended to install "Riverpod snippets" plugin

When a stateful provider is needed, use the following syntax. This will create automatically an "exampleStateProvider". Remember to write the part syntax to the top of the file.

```
part 'example_controller.g.dart'

@riverpod
class ExampleState extends _$ExampleState {
  @override
  String build() => "Hello World";

  void setExampleState(String newString) {
    state = newString;
  }
}
```

You can watch the value like so. If the value changes, the widget is automatically rebuilt.

```
final exampleStateValue = ref.watch(exampleStateProvider);  //"Hello World"
```

You can modify the state like so. Notice the "notifier".

```
ref.read(exampleStateProvider.notifier).state = "Hevosen kalleudet";
```

If you don't need to modify state, you can use a stateless provider using the following syntax. You can chain together and combine multiple
providers like this. "Watch" the provider value in the same way you do with the stateful provider.

```
@riverpod
bool isTheSunHot(IsTheSunHotRef ref) {
  final temperature = ref.watch(sunTemperatureProvider);

  if (temperature > 1000000.0) return true;

  return false;
}
```

Sometimes you want to show a one-time alert dialog if a provider state changes.
Use ref.listen() in the build method:

```
ref.listen<StateController<String>>(exampleStateProvider.state, (previous, current) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('${current.state}')),
  );
});
```

by default, the keepAlive is OFF by default, so if a widget that uses a provider gets removed from the tree, 
the provider will be disposed. To prevent this from happening, you can use the following syntax.

```
@Riverpod(keepAlive: true)
```

# Freezed

Freezed is used to generate immutable classes that have automatic properties, toString, ==, copyWith, toJson, fromJson 
overrides and methods. Also supports unions and pattern matching. Use the following syntax:

```
part 'example.g.dart';

@freezed
class Example with _$Example {
  const factory Example({
    required String name,
    required int age,
  }) = _Example;
}
```

Read more: https://pub.dev/packages/freezed

Also it's recommended to install the "Freezed Snippets" plugin, just as with Riverpod generator. 

# Architecture Overview

Tate's architecture emphasizes separation of concerns and maintainability through three main layers: Data, Application, and Presentation.

## Data Layer

Responsible for data management, including models, datasources and repositories.

## Application Layer

Contains core business logic, including controllers and services. In Tate, controllers like BoundingBoxController and ImageFilesController manage the application's state and handle user interactions.

## Presentation Layer

Handles UI display and user input through widgets, views, and screens. In Tate, the Presentation Layer uses Flutter widgets and Riverpod state management. Widgets define the UI structure, while Riverpod providers and hooks manage state and interactions with the Application Layer.

## Useful links:

https://github.com/rrousselGit/riverpod/tree/master/packages/riverpod_lint#all-assists

https://docs-v2.riverpod.dev

https://codewithandrea.com/articles/flutter-riverpod-generator/

https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo

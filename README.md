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

## Todo:

- Manage bounding boxes (add, update, remove)
- Tie annotations to specific images
- Classify annotations
- Different annotation tools (polygon drawing, 3d bounding box..)
- Export dataset (images + annotations information as text)
- Etc...

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

When developing, use riverpod generator:

`flutter pub run build_runner watch -d`

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

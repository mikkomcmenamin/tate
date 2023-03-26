import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tate/pages/main_page.dart';

part 'main.g.dart';

// We create a "provider", which will store a value (here "Hello world").
// By using a provider, this allows us to mock/override the value exposed.
@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hello world';
}

void main() {
  runApp(
    // For widgets to be able to read providers, we need to wrap the entire
    // application in a "ProviderScope" widget.
    // This is where the state of our providers will be stored.
    ProviderScope(
      child: MyApp(),
    ),
  );
}

// Extend ConsumerWidget instead of StatelessWidget, which is exposed by Riverpod
class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('main');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Focus(child: MainPage()),
      theme: ThemeData(
        fontFamily: 'Inconsolata',
        primaryColor: Colors.cyan,
        secondaryHeaderColor: Colors.amber,
        scaffoldBackgroundColor: Colors.grey.shade900,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyMedium: TextStyle(fontSize: 14.0, color: Colors.white),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.cyan,
          iconTheme: IconThemeData(color: Colors.white),
          toolbarTextStyle: TextStyle(color: Colors.white), // Set app bar title text color
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.deepPurple, // Set button color
          textTheme: ButtonTextTheme.primary, // Set button text color
        ),
        // Add other customizations as needed
      ),
    );
  }
}

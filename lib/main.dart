import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tate/presentation/screens/main_screen.dart';
import 'package:tate/presentation/theme/theme_data.dart';

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
      home: const Focus(child: MainScreen()),
      theme: buildThemeData(),
    );
  }
}

import 'package:flutter/material.dart';
import 'presentation/screens/discover/discover_screen.dart';
import 'theme/AppTheme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget App - Scroll de Colores',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).getTheme(),
      home: const DiscoverScreen(),
    );
  }
}

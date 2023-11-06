import 'package:portfolify/providers/current_state.dart';
import 'package:portfolify/providers/theme_provider.dart';
import 'package:portfolify/screen/homescreen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Portfolify());
}

class Portfolify extends StatelessWidget {
  const Portfolify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => CurrentState()),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

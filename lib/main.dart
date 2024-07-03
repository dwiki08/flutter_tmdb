import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_db/presentation/screen/home/home_screen.dart';
import 'package:movie_db/utils/constants.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TMDb Movies',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context)
            .textTheme
            .apply(fontFamily: 'Poppins', bodyColor: textColor),
        colorScheme: ColorScheme.fromSeed(seedColor: colorDark),
        useMaterial3: true,
      ),
      home: const HomeScreen(title: 'TMDb Movies'),
    );
  }
}

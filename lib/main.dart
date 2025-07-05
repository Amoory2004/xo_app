import 'package:flutter/material.dart';
import 'package:xo_app/game_board_screen.dart';
import 'package:xo_app/welcome_screen.dart';

void main() {
  runApp(XoGame());
}

class XoGame extends StatelessWidget {
  const XoGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        GameBoardScreen.routeName: (_) => GameBoardScreen(),
        WelcomeScreen.routeName: (_) => WelcomeScreen(),
      },
      initialRoute: WelcomeScreen.routeName,
    );
  }
}

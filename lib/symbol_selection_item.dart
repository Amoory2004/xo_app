import 'package:flutter/material.dart';
import 'package:xo_app/game_board_screen.dart';

class SymbolSelectionItem extends StatelessWidget {
  String symbol;

  SymbolSelectionItem({required this.symbol});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => Navigator.of(
          context,
        ).pushNamed(GameBoardScreen.routeName, arguments: symbol),
        child: Container(
          padding: EdgeInsets.all(35),
          height: MediaQuery.sizeOf(context).height * .19,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Colors.white,
          ),
          child: Image.asset('assets/images/$symbol.png', fit: BoxFit.fill),
        ),
      ),
    );
  }
}

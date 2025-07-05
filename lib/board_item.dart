import 'package:flutter/material.dart';

class BoardItem extends StatelessWidget {
  String text;
  void Function(int) onPressed;
  int index;

  BoardItem({required this.index, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed(index);
      },
      child: Container(
        color: Colors.white,
        child: text.isEmpty ? null : Image.asset('assets/images/$text.png'),
      ),
    );
  }
}

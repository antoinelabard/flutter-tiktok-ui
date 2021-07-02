import 'package:flutter/material.dart';

class BottomToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
          5,
          (index) => Container(
                color: Colors.purple,
                width: 40,
                height: 40,
              )),
    );
  }
}

import 'package:flutter/material.dart';

class ActionToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      color: Colors.red,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
            5,
            (index) => Container(
                  width: 60,
                  height: 60,
                  color: Colors.blue,
                  margin: EdgeInsets.only(top: 20),
                )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List<Widget>.generate(
            5,
            (index) => Container(
                height: 10,
                color: Colors.green,
                margin: EdgeInsets.only(top: 5))),
      ),
    );
  }
}

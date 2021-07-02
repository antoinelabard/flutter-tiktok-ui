import 'package:flutter/material.dart';

/// Empty page widget fo developers that want to follow along with the tutorial
/// on breaking down and implementing the Tik Tok UI (BLOG_LINK)
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 100,
          color: Colors.yellow,
        ),
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.green,
            )),
            Container(
              width: 100.0,
              color: Colors.red,
            )
          ],
        )),
        Container(
          height: 80,
          color: Colors.blue,
        )
      ],
    ));
  }
}

import 'package:flutter/material.dart';

/// Empty page widget fo developers that want to follow along with the tutorial
/// on breaking down and implementing the Tik Tok UI (BLOG_LINK)
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        _topSection(),
        _middleSection(),
        _bottomSection()
      ],
    ));
  }

  Container _bottomSection() {
    return Container(
        height: 80,
        color: Colors.blue,
      );
  }

  Expanded _middleSection() {
    return Expanded(
          child: Row(
        children: [
          _videoDescription(),
          _actionToolbar()
        ],
      ));
  }

  Expanded _videoDescription() {
    return Expanded(
            child: Container(
          color: Colors.green,
        ));
  }

  Container _actionToolbar() {
    return Container(
          width: 100.0,
          color: Colors.red,
        );
  }

  _topSection() {
    return Container(
        height: 100,
        color: Colors.yellow,
      );
  }
}

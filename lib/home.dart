import 'package:flutter/material.dart';
import 'package:tik_tok_ui/BottomToolbar.dart';

import 'ActionToolbar.dart';
import 'VideoDescription.dart';

/// Empty page widget fo developers that want to follow along with the tutorial
/// on breaking down and implementing the Tik Tok UI (BLOG_LINK)
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [_topSection(), _middleSection(), _bottomSection()],
        ));
  }

  Container _bottomSection() {
    return Container(
        // height: 80,
        // color: Colors.blue,
        child: BottomToolbar());
  }

  Expanded _middleSection() {
    return Expanded(
        child: Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [VideoDescription(), ActionToolbar()],
    ));
  }

  _topSection() {
    return Container(
      height: 100,
      padding: EdgeInsets.only(bottom: 15),
      alignment: Alignment(0, 1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Following'),
          Container(
            width: 15,
          ),
          Text(
            'For you',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tik_tok_ui/tik_tok_icons_icons.dart';

class ActionToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      // color: Colors.red,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getSocialAction(iconData: TikTokIcons.heart, title: '3.2m'),
          _getSocialAction(iconData: TikTokIcons.chat_bubble, title: '16.4k'),
          _getSocialAction(iconData: TikTokIcons.reply, title: 'Share'),
        ]
      ),
    );
  }
  _getSocialAction({String title, IconData iconData}) => Container(
    margin: EdgeInsets.only(top: 15),
    width: 60,
    height: 60,
    child: Column(
      children: [
        Icon(
          iconData,
          size: 35,
          color: Colors.grey[300],
        ),
        Padding(padding: EdgeInsets.only(top: 2),
          child: Text(
            title,
            style: TextStyle(fontSize: 12),
          ),)
      ],
    ),
  );
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tik_tok_ui/tik_tok_icons_icons.dart';

class ActionToolbar extends StatelessWidget {
  static const double ActionWidgetSize = 60.0;
  static const double ActionIconSize = 35.0;
  static const double ShareActionIconSize = 25.0;
  static const double ProfileImageSize = 50.0;
  static const double PlusIconSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      // color: Colors.red,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _getFollowAction(),
        _getSocialAction(iconData: TikTokIcons.heart, title: '3.2m'),
        _getSocialAction(iconData: TikTokIcons.chat_bubble, title: '16.4k'),
        _getSocialAction(iconData: TikTokIcons.reply, title: 'Share'),
        _getMusicPlayerAction()
      ]),
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
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                title,
                style: TextStyle(fontSize: 12),
              ),
            )
          ],
        ),
      );

  _getFollowAction() => Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: 60,
        height: 60,
        child: Stack(
          children: [_getProfilePicture(), _getPlusIcon()],
        ),
      );

  _getProfilePicture() => Positioned(
        left: (ActionWidgetSize / 2) - (ProfileImageSize / 2),
        child: Container(
          padding: EdgeInsets.all(1),
          height: ProfileImageSize,
          width: ProfileImageSize,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(ProfileImageSize / 2)),
          child: CachedNetworkImage(
            imageUrl:
                "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
            placeholder: (context, url) => new CircularProgressIndicator(),
            errorWidget: (context, url, error) => new Icon(Icons.error),
          ),
        ),
      );

  _getPlusIcon() => Positioned(
        bottom: 0,
        left: (ActionWidgetSize / 2) - (PlusIconSize / 2),
        child: Container(
          width: PlusIconSize,
          height: PlusIconSize,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 43, 84),
              borderRadius: BorderRadius.circular(15)),
          child: Icon(Icons.add, color: Colors.white, size: 20),
        ),
      );

  _musicGradient() => LinearGradient(colors: [
        Colors.grey[800],
        Colors.grey[900],
        Colors.grey[900],
        Colors.grey[800],
      ],
    stops: [.0, .4, .6,1.0],
    begin: Alignment.bottomLeft,
    end: Alignment.bottomRight
  );

  _getMusicPlayerAction() => Container(
          margin: EdgeInsets.only(top: 10),
    width: ActionWidgetSize,
    height: ActionWidgetSize,
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(11),
          width: ProfileImageSize,
          height: ProfileImageSize,
          decoration: BoxDecoration(
            gradient: _musicGradient(),
            borderRadius: BorderRadius.circular(ProfileImageSize / 2)
          ),
          child: CachedNetworkImage(
            imageUrl: "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
            placeholder: (context, url) => new CircularProgressIndicator(),
            errorWidget: (context, url, error) => new Icon(Icons.error),
          ),
        )
      ],
    ),
  );
}

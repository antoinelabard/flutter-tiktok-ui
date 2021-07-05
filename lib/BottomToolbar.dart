import 'package:flutter/material.dart';
import 'package:tik_tok_ui/tik_tok_icons_icons.dart';

class BottomToolbar extends StatelessWidget {
  static const double NavigationIconSize = 20.0;
  static const double CreateButtonWidth = 35.0;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Icon(TikTokIcons.home, color: Colors.white, size: NavigationIconSize),
      Icon(TikTokIcons.search, color: Colors.white, size: NavigationIconSize),
      _getCreateIcon(),
      Icon(TikTokIcons.messages, color: Colors.white, size: NavigationIconSize),
      Icon(TikTokIcons.profile, color: Colors.white, size: NavigationIconSize)
    ]);
  }

  _getCreateIcon() => Container(
        width: 45,
        height: 27,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              width: CreateButtonWidth,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 45, 108),
                  borderRadius: BorderRadius.circular(7)),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              width: CreateButtonWidth,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 32, 211, 234),
                  borderRadius: BorderRadius.circular(7)),
            ),
            Center(
                child: Container(
                    height: double.infinity,
                    width: CreateButtonWidth,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7)),
                    child: Icon(
                      Icons.add,
                      size: 20,
                    )))
          ],
        ),
      );
}

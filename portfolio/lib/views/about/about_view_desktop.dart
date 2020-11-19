import 'package:flutter/material.dart';
import 'package:portfolio/views/about/MyPic_widget_desktop.dart';
import 'package:portfolio/views/about/about_view_intro_desktop.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutContentDesktop extends StatelessWidget {
  const AboutContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final aboutTitle = "--- About Me ---"
        .text
        .white
        .xl
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        color: Color(0xff0A192F),
        width: 600,
        height: 600,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Align(alignment: Alignment.centerRight, child: MyPicAboutDesktop()),
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 40),
                  child: Align(
                    alignment: Alignment.center,
                    child: aboutTitle,
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IntroductionAboutDesktop(),
                    ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

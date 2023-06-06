// @dart=2.9
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:portfolio/views/home/home_content_mobile.dart';
import 'package:portfolio/views/home/home_content_desktop.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ListView(
        children: [
          HomeContentMobile(),
        ],
      ),
      desktop: HomeContentDesktop(),
    );
  }
}

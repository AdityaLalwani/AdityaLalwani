// @dart=2.9
import 'package:flutter/material.dart';
import 'package:portfolio/views/home/name_widget/name_widget.dart';
import 'package:portfolio/views/home/Introduction/introduction.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          NameWidget(),
          SizedBox(
            height: 5,
          ),
          IntroductionWidget(),
        ]);
  }
}

// @dart=2.9
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:portfolio/views/Experience/Experience_view_desktop.dart';
import 'package:portfolio/views/Experience/experience_view_mobile.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ExperienceViewMobile(),
      desktop: SingleChildScrollView(child: ExperienceViewDesktop()),
    );
  }
}

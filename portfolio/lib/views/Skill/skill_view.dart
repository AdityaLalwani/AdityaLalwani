import 'package:flutter/material.dart';
import 'package:portfolio/views/Skill/skill_view_desktop.dart';
import 'package:portfolio/views/Skill/skill_view_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenTypeLayout(
        mobile: SkillViewMobile(),
        desktop: SkillViewDesktop(),
      ),
    );
  }
}

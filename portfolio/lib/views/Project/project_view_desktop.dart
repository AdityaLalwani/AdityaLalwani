import 'package:flutter/material.dart';
import 'package:portfolio/views/Project/FeatureProjectInvertedWidget.dart';
import 'package:portfolio/views/Project/FeatureProjectWidget.dart';
import 'package:portfolio/widgets/method/method.dart';
import 'package:velocity_x/velocity_x.dart';

class ProjectViewDesktop extends StatelessWidget {
  const ProjectViewDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final projectTitle = "--- Projects ---"
        .text
        .white
        .xl
        .lineHeight(1.3)
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
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 40),
              child: Align(
                alignment: Alignment.center,
                child: projectTitle,
              ),
            ),
            Projects(),
          ],
        ),
      ),
    );
  }
}

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  Method method = Method();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProject(
          imagePath: "assets/images/Portfolio.png",
          ontab: () {
            method.launchURL("https://github.com/AdityaLalwani/adityalalwani");
          },
          projectDesc:
              "My Portfolio Website which i have created using Flutter Web.",
          projectTitle: "Portfolio Website",
          tech1: "Flutter",
          tech2: "Dart",
          tech3: "Web",
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
      ],
    );
  }
}

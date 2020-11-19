import 'package:flutter/material.dart';
import 'package:portfolio/widgets/method/method.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:portfolio/views/Project/FeatureProjectMobile.dart';

class ProjectViewMobile extends StatelessWidget {
  const ProjectViewMobile({Key key}) : super(key: key);

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
        height: 6850,
        child: ListView(
//          shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            addAutomaticKeepAlives: true,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: projectTitle,
                ),
              ),
              Projects(),
            ]),
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
    return Column(children: [
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method.launchURL("https://github.com/AdityaLalwani/adityalalwani");
        },
        image: "assets/images/Portfolio.png",
        projectname: 'Portfolio Website',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
    ]);
  }
}

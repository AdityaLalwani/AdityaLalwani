// @dart=2.9
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
        height: 3000,
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
          method.launchURL(
              "https://github.com/AdityaLalwani/sketch-to-face-gans");
        },
        image: "assets/images/sketchtoface.png",
        projectname: 'Sketch to Face Recognition via GANs',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method.launchURL(
              "https://github.com/AdityaLalwani/Machine-Learning-App");
        },
        image: "assets/images/ml.png",
        projectname: 'Machine Learning App',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method.launchURL("https://github.com/AdityaLalwani/AdityaLalwani");
        },
        image: "assets/images/portfolio.png",
        projectname: 'Portfolio Website',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method.launchURL(
              "https://github.com/medicine-details-through-web-scraping/MediFo");
        },
        image: "assets/images/medifo.png",
        projectname: 'Medicine Imformation',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method.launchURL(
              "https://github.com/gstapplication-internship/gstapplication");
        },
        image: "assets/images/gst.png",
        projectname:
            'Gst Application that helps user to calculate and store information of payable tax',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method.launchURL(
              "https://github.com/AdityaLalwani/teslawebsite_clone_UI");
        },
        image: "assets/images/tesla.png",
        projectname: 'Tesla Solar Website UI Design',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method.launchURL("https://github.com/AdityaLalwani/passtime");
        },
        image: "assets/images/game.png",
        projectname: 'Games App',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method.launchURL("https://github.com/AdityaLalwani/My_Portfolio");
        },
        image: "assets/images/portapp.png",
        projectname: 'Portfolio App',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
    ]);
  }
}

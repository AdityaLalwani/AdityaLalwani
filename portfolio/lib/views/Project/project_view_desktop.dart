import 'package:flutter/material.dart';
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
          imagePath: "assets/images/sketchtoface.png",
          ontab: () {
            method.launchURL(
                "https://github.com/AdityaLalwani/sketch-to-face-gans");
          },
          projectDesc:
              "The main objective is to generate face of human from the provided sketch of it with the help of generative adversarial networks (GANs). For a typical GAN model, the discriminator aims to decide whether the given inputs are fake or real, while the generator learns to generate sharper and more realistic samples that are indistinguishable from the real samples.",
          projectTitle: "Sketch to Face Recognition via GANs",
          tech1: "Machine Learning",
          tech2: "Flask",
          tech3: "GANs",
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProject(
          imagePath: "assets/images/ml.png",
          ontab: () {
            method.launchURL(
                "https://github.com/AdityaLalwani/Machine-Learning-App");
          },
          projectDesc:
              "A Flutter application in which user can know What is Machine Learning, How Models are Train and Deployment of these Trained Models.",
          projectTitle: "Machine Learning App",
          tech1: "Flutter",
          tech2: "Tensorflow Lite",
          tech3: "Machine Learning",
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProject(
          imagePath: "assets/images/portfolio.png",
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
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProject(
          imagePath: "assets/images/medifo.png",
          ontab: () {
            method.launchURL(
                "https://github.com/medicine-details-through-web-scraping/MediFo");
          },
          projectDesc:
              "A FLutter Application to dectect text from medicine label and show Imformation About Medicine via Web Scraping.",
          projectTitle: "Medicine Imformation",
          tech1: "Flutter",
          tech2: "ML Text Detection",
          tech3: "Web Sraping",
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProject(
          imagePath: "assets/images/gst.png",
          ontab: () {
            method.launchURL(
                "https://github.com/gstapplication-internship/gstapplication");
          },
          projectDesc:
              "Gst Application that helps user to calculate and store information of payable tax in Flutter using Firebase.",
          projectTitle:
              "Gst Application that helps user to calculate and store information of payable tax",
          tech1: "Flutter",
          tech2: "Real Time Firebase",
          tech3: "Auth",
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProject(
          imagePath: "assets/images/tesla.png",
          ontab: () {
            method.launchURL(
                "https://github.com/AdityaLalwani/teslawebsite_clone_UI");
          },
          projectDesc: "A FLutter Web UI Design of Tesla Solar Panel Website.",
          projectTitle: "Tesla Solar Website UI Design",
          tech1: "Flutter",
          tech2: "Dart",
          tech3: "Web",
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProject(
          imagePath: "assets/images/game.png",
          ontab: () {
            method.launchURL("https://github.com/AdityaLalwani/passtime");
          },
          projectDesc:
              "Flutter application to Play Games and Pass your time, developed in Flutter Hackathon 2020.",
          projectTitle: "Games App",
          tech1: "Flutter",
          tech2: "Dart",
          tech3: "Android",
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProject(
          imagePath: "assets/images/portapp.png",
          ontab: () {
            method.launchURL("https://github.com/AdityaLalwani/My_Portfolio");
          },
          projectDesc:
              "My Portfolio Android Application which i have created using Flutter.",
          projectTitle: "Portfolio App",
          tech1: "Flutter",
          tech2: "Dart",
          tech3: "Android",
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
      ],
    );
  }
}

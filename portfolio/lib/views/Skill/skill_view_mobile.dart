// @dart=2.9
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:velocity_x/velocity_x.dart';

class SkillViewMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final projectTitle = "--- Skills ---"
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
                height: 700,
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
                      SizedBox(
                        height: 40,
                      ),
                      Skill(
                        size: 170,
                        score: 80,
                        skills: "Salesforce",
                      ),
                      Center(
                        child: Wrap(
                          children: <Widget>[
                            Skill(
                              score: 65,
                              skills: "Flutter-Dart",
                            ),
                            Skill(
                              score: 80,
                              skills: "Html/Css/JavaScript",
                            ),
                            Skill(
                              score: 65,
                              skills: "MySQL",
                            ),
                            Skill(
                              score: 75,
                              skills: "Java",
                            ),
                            Skill(
                              score: 80,
                              skills: "Networking",
                            ),
                            Skill(
                              score: 75,
                              skills: "Machine Learning",
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            );
  }
}

// ignore: must_be_immutable
class Skill extends StatefulWidget {
  Color baseColor;
  String skills;
  double width;
  double handleWidth;
  double size;
  double score;
  Skill(
      {this.skills,
      this.baseColor = const Color(0xff303187),
      this.width = 16,
      this.handleWidth = 6,
      this.size = 150,
      this.score = 50});
  @override
  _SkillState createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: SleekCircularSlider(
        initialValue: widget.score,
        innerWidget: inner,
        appearance: CircularSliderAppearance(
            size: widget.size,
            customColors: CustomSliderColors(
              trackColor: widget.baseColor,
            ),
            angleRange: 245,
            startAngle: 150,
            customWidths: CustomSliderWidths(
                progressBarWidth: widget.width,
                handlerSize: widget.handleWidth,
                shadowWidth: 35)),
      ),
    );
  }

  Widget inner(double i) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "${widget.skills}\n${i.toInt()}",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    );
  }
}

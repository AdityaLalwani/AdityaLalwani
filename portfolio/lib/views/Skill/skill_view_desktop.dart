// @dart=2.9
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:portfolio/jsonData.dart';

class SkillViewDesktop extends StatelessWidget {
  Future<void> getData() {
    return Future.value(ReadJsonFile.readJsonData(path: "assets/data.json"));
  }

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
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final data = snapshot.data;
            return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        color: Color(0xff0A192F),
        width: 600,
        height: 600,
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
                height: 20,
              ),
              Skill(
                size: 170,
                score: 85,
                skills: data['skills1'],
              ),
              Center(
                child: Wrap(
                  children: <Widget>[
                    Skill(
                      score: 60,
                      skills: data['skills2'],
                    ),
                    Skill(
                      score: 80,
                      skills: data['skills3'],
                    ),
                    Skill(
                      score: 65,
                      skills: data['skills4'],
                    ),
                  ],
                ),
              ),
              Center(
                  child: Wrap(
                children: [
                  Skill(
                    score: 75,
                    skills: data['skills5'],
                  ),
                  Skill(
                    score: 80,
                    skills: data['skills6'],
                  ),
                  Skill(
                    score: 75,
                    skills: data['skills7'],
                  )
                ],
              )),
            ]),
      ),
    );
          } else {
          return CircularProgressIndicator();
        }
        });
    
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

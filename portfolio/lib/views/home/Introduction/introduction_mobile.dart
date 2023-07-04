// @dart=2.9
import 'package:flutter/material.dart';
import 'package:portfolio/Colors/colors.dart';
import 'package:portfolio/widgets/custom_text/CustomText.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:portfolio/extensions/hover_extensions.dart';

class IntroductionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double cWidth = MediaQuery.of(context).size.width * 0.75;
    double cHeight = MediaQuery.of(context).size.height * 1.3;
    return Container(
      height: cHeight,
      width: cWidth,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: Introduction()),
        ],
      ),
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final introWidget =
        "I have done my B.Tech from Charusat University of Science and technology, Gujarat.\n"
                "I am Your friendly Neighbourhood Developer and a Learning Enthusiast, who is obsessed with the idea of improving himself and wants a platform to grow and excel.\n"
            .text
            .white
            .xl2
            .maxLines(15)
            .make()
            .w(context.isMobile
                ? context.screenWidth
                : context.percentWidth * 40);
    return ListView(
        physics: NeverScrollableScrollPhysics(),
        addAutomaticKeepAlives: true,
        children: <Widget>[
          " - Introduction".text.gray500.widest.sm.make(),
          SizedBox(
            height: 10,
          ),
          CustomText(
            text: "I build things on CLOUD.",
            textsize: 30.0,
            color: Colors.white70,
            fontWeight: FontWeight.w700,
          ),
          introWidget,
          SizedBox(
            height: 20,
          ),

          Row(
            children: [
              LimitedBox(
                maxWidth: 150,
                child: ElevatedButton(
                  onPressed: () {
                    launch(
                        "https://drive.google.com/file/d/1cdy_RkCUgC17pjHq4aiHBhuhYu-Pk3kL/view?usp=sharing");
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Coolors.accentColor),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(color: Coolors.primaryColor)),
                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered))
                          return Vx.blue700; //<-- SEE HERE
                        return null; // Defer to the widget's default.
                      },
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.5))),
                  ),
                  child: "Resume".text.make(),
                ).h(50),
              ),
            ],
          )
              .showCursorOnHover
              .moveUpOnHover, // crossAlignment: CrossAxisAlignment.center,
        ]);
  }
}

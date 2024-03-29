// @dart=2.9
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_text/CustomText.dart';
import 'package:velocity_x/velocity_x.dart';

class IntroductionAboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double cWidth = MediaQuery.of(context).size.width * 0.6;
    double cHeight = MediaQuery.of(context).size.height * 2.3;
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
      width: cWidth,
      height: cHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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

  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xff717C99),
              letterSpacing: 1.75,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final aboutintroWidget =
        "I have done my B.Tech from Charusat University of Science and technology, Gujarat (INDIA).\n"
                "I am Your friendly Neighbourhood Developer  and a Learning Enthusiast,  who is obsessed with the idea of improving himself and wants a platform to grow and excel.\n"
                "I Love Android and Web Development.\n"
            .text
            .white
            .xl2
            .make()
            .w(context.isMobile
                ? context.screenWidth
                : context.percentWidth * 40);
    return ListView(
        physics: NeverScrollableScrollPhysics(),
        addAutomaticKeepAlives: true,
        children: <Widget>[
          aboutintroWidget,
          CustomText(
            text:
                "Here are a few technologies I've been working with recently:\n\n",
            textsize: 16.0,
            color: Color(0xff828DAA),
            fontWeight: FontWeight.w500,
            letterSpacing: 0.75,
          ), // crossAlignment: CrossAxisAlignment.center,
          Container(
            height: size.height * 0.35,
            width: size.width,
            //   color: Colors.redAccent,
            child: Row(
              children: [
                Container(
                  width: size.width * 0.40,
                  height: size.height * 0.35,
                  child: Column(
                    children: [
                      technology(context, "Salesforce"),
                      technology(context, "B2C Commerce Cloud"),
                      technology(context, "Fluter/Dart"),
                      technology(context, "UI/UX"),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.40,
                  height: size.height * 0.35,
                  child: Column(
                    children: [
                      technology(context, "HTML/CSS/Javascript"),
                      technology(context, "Python"),
                      technology(context, "JAVA"),
                      technology(context, "Machine Learning"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]);
  }
}

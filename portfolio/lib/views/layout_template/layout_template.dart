import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:portfolio/locator.dart';
import 'package:portfolio/widgets/nav_drawer/navigation_drawer.dart';
import 'package:portfolio/routing/route_names.dart';
import 'package:portfolio/routing/router.dart';
import 'package:portfolio/services/navigation_service.dart';
import 'package:portfolio/widgets/centered_view/centered_view.dart';
import 'package:portfolio/widgets/navigation_bar/navigation_bar.dart';
import 'package:portfolio/Colors/colors.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        resizeToAvoidBottomInset: false,
        backgroundColor: Coolors.primaryColor,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            CenteredView(
              child: Column(children: <Widget>[
                NavigationBar(),
                Expanded(
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: HomeRoute,
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

// @dart=2.9
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
import 'package:portfolio/locator.dart';
import 'package:portfolio/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
//        Navigator.of(context).pop();
        },
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18, color: Colors.lightBlue[50].withOpacity(0.7)),
        ),
      ),
    );
  }
}

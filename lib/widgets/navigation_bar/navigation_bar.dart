import 'package:flutter/material.dart';
import 'package:webclima/routing/route_names.dart';
import 'package:webclima/widgets/navbar_item/navbar_item.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue.withOpacity(0.75),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                NavBarItem('Home', HomeRoute),
                SizedBox(
                  width: 100,
                ),
                NavBarItem('Clima', ClimaRoute),
                SizedBox(
                  width: 100,
                ),
                NavBarItem('About', AboutRoute),
              ],
            )
          ],
        ),
      ),
    );
  }
}

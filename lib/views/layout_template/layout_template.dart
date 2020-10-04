import 'package:flutter/material.dart';
import 'package:webclima/routing/route_names.dart';
import 'package:webclima/routing/router.dart';
import 'package:webclima/services/navigation_service.dart';
import 'package:webclima/widgets/centered_view/centered_view.dart';
import 'package:webclima/widgets/navigation_bar/navigation_bar.dart';

import '../../locator.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Column(
        children: <Widget>[
          NavigationBar(),
          Expanded(
            child: Navigator(
              key: locator<NavigationService>().navigatorKey,
              onGenerateRoute: generateRoute,
              initialRoute: HomeRoute,
            ),
          )
        ],
      ),
    );
  }
}

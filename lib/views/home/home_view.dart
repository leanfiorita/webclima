import 'package:flutter/material.dart';
import 'package:webclima/widgets/page_details/page_details.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        PageDetails(),
      ],
    );
  }
}

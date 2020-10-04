import 'package:flutter/material.dart';

class PageDetails extends StatelessWidget {
  const PageDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0),
      child: Container(
        width: 650,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Web del Clima.',
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 2, fontSize: 55),
                textAlign: TextAlign.center),
            SizedBox(
              height: 10,
            ),
            Text(
              'Clima del territorio Argentino\n',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 45,
              ),
            )
          ],
        ),
      ),
    );
  }
}

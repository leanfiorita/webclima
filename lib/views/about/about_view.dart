// import 'package:flutter/material.dart';

// class AboutView extends StatelessWidget {
//   const AboutView({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:webclima/constants/constants.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AboutSectionText(
                text:
                    "Ésta es una web que muestra los datos climáticos de distintos puntos de Argentina",
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultPadding),
              padding: EdgeInsets.all(defaultPadding),
              height: 231,
              width: 555,
              decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.circular(10),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 10,
                      color: Colors.white.withOpacity(0.25),
                    )
                  ],
                ),
                child: Column(
                  children: [Image.asset('../../assets/images/about.png')],
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(fontWeight: FontWeight.bold, color: textColor),
        ),
      ],
    );
  }
}

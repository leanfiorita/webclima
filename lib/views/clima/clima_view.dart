import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:webclima/viewmodel/clima_view_model.dart';
import 'package:webclima/widgets/climas_list/climas_list.dart';

class ClimasView extends StatelessWidget {
  const ClimasView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ClimaViewModel>.reactive(
      viewModelBuilder: () => ClimaViewModel(),
      onModelReady: (model) => model.getClimas(),
      builder: (context, model, child) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 50,
            ),
            model.climas == null
                ? CircularProgressIndicator()
                : ClimasList(climas: model.climas),
          ],
        ),
      ),
    );
  }
}

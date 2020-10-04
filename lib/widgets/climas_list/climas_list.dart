import 'package:flutter/material.dart';
import 'package:webclima/datamodels/clima_item_model.dart';
import 'clima_item.dart';

class ClimasList extends StatelessWidget {
  final List<ClimaItemModel> climas;
  ClimasList({this.climas});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: <Widget>[
        ...climas.map(
          (clima) => ClimaItem(model: clima),
        )
      ],
    );
  }
}

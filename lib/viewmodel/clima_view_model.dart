import 'package:flutter/material.dart';
import 'package:webclima/datamodels/clima_item_model.dart';
import 'package:webclima/services/api.dart';

import '../locator.dart';

class ClimaViewModel extends ChangeNotifier {
  final _api = locator<Api>();

  List<ClimaItemModel> _climas;
  List<ClimaItemModel> get climas => _climas;

  Future getClimas() async {
    var climaResults = await _api.getClimas();

    if (climaResults is String) {
      //error
    } else {
      _climas = climaResults;
    }

    _climas = climaResults;

    notifyListeners();
  }
}

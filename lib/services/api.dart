import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:webclima/datamodels/clima_item_model.dart';

class Api {
  static const String _apiURL = 'https://ws.smn.gob.ar/map_items/weather';
  Future<dynamic> getClimas() async {
    var response = await http.get(_apiURL);

    if (response.statusCode == 200) {
      var climas = (json.decode(response.body) as List)
          .map((clima) => ClimaItemModel.fromJson(clima))
          .toList();

      return climas;
    }

    return 'No pudo obtenerse respuesta';
  }
}

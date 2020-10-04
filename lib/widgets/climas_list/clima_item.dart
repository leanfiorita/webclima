import 'package:flutter/material.dart';
import 'package:webclima/datamodels/clima_item_model.dart';
import 'package:webclima/routing/route_names.dart';

class ClimaItem extends StatelessWidget {
  final ClimaItemModel model;
  const ClimaItem({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: SizedBox(
        width: 360,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    model.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                    softWrap: true,
                  ),
                  Text(
                    '${model.province}',
                    style: TextStyle(fontSize: 10),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Temp Actual: ' + '${model.weather.temp}',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  new RaisedButton(
                    onPressed: () {
                      // Text('${model.weather.humidity}');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsItem(
                                    model: model,
                                  )));
                    },
                    color: Colors.blue,
                    child: Text('Detalles'),
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsItem extends StatelessWidget {
  final ClimaItemModel model;
  const DetailsItem({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        elevation: 2,
        child: SizedBox(
          width: 360,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  'Detalles de ${model.name}:',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                    'La humedad es: ${model.weather.humidity}\nLa temperatura actual es: ${model.weather.temp}°C\nLa presion es: ${model.weather.pressure}'),
              ),
              if (model.forecast.forecast.the0.tempMax != null)
                Center(
                  child: Text(
                      'La temperatura máxima es: ${model.forecast.forecast.the0.tempMax}\nLa temperatura mínima es: ${model.forecast.forecast.the0.tempMin}'),
                ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Regresar'),
              ))
            ],
          ),
        ));
  }
}

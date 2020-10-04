import 'dart:convert';

List<ClimaItemModel> climaItemModelFromJson(String str) => List<ClimaItemModel>.from(json.decode(str).map((x) => ClimaItemModel.fromJson(x)));

String climaItemModelToJson(List<ClimaItemModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ClimaItemModel {
    ClimaItemModel({
        this.name,
        this.province,
        this.weather,
        this.forecast,
    });

    String name;
    String province;
    Weather weather;
    ClimaItemModelForecast forecast;

    factory ClimaItemModel.fromJson(Map<String, dynamic> json) => ClimaItemModel(
        name: json["name"],
        province: json["province"],
        weather: Weather.fromJson(json["weather"]),
        forecast: ClimaItemModelForecast.fromJson(json["forecast"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "province": province,
        "weather": weather.toJson(),
        "forecast": forecast.toJson(),
    };
}

class ClimaItemModelForecast {
    ClimaItemModelForecast({
        this.forecast,
    });

    ForecastForecast forecast;

    factory ClimaItemModelForecast.fromJson(Map<String, dynamic> json) => ClimaItemModelForecast(
        forecast: ForecastForecast.fromJson(json["forecast"]),
    );

    Map<String, dynamic> toJson() => {
        "forecast": forecast.toJson(),
    };
}

class ForecastForecast {
    ForecastForecast({
        this.the0,
    });

    The0 the0;

    factory ForecastForecast.fromJson(Map<String, dynamic> json) => ForecastForecast(
        the0: The0.fromJson(json["0"]),
    );

    Map<String, dynamic> toJson() => {
        "0": the0.toJson(),
    };
}

class The0 {
    The0({
        this.tempMin,
        this.tempMax,
        this.morning,
        this.afternoon,
    });

    int tempMin;
    int tempMax;
    Afternoon morning;
    Afternoon afternoon;

    factory The0.fromJson(Map<String, dynamic> json) => The0(
        tempMin: json["temp_min"],
        tempMax: json["temp_max"],
        morning: Afternoon.fromJson(json["morning"]),
        afternoon: Afternoon.fromJson(json["afternoon"]),
    );

    Map<String, dynamic> toJson() => {
        "temp_min": tempMin,
        "temp_max": tempMax,
        "morning": morning.toJson(),
        "afternoon": afternoon.toJson(),
    };
}

class Afternoon {
    Afternoon({
        this.weatherId,
        this.description,
    });

    int weatherId;
    String description;

    factory Afternoon.fromJson(Map<String, dynamic> json) => Afternoon(
        weatherId: json["weather_id"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "weather_id": weatherId,
        "description": description,
    };
}

class Weather {
    Weather({
        this.humidity,
        this.pressure,
        this.visibility,
        this.windSpeed,
        this.description,
        this.temp,
    });

    int humidity;
    double pressure;
    double visibility;
    int windSpeed;
    String description;
    double temp;

    factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        humidity: json["humidity"],
        pressure: json["pressure"].toDouble(),
        visibility: json["visibility"].toDouble(),
        windSpeed: json["wind_speed"],
        description: json["description"],
        temp: json["temp"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "humidity": humidity,
        "pressure": pressure,
        "visibility": visibility,
        "wind_speed": windSpeed,
        "description": description,
        "temp": temp,
    };
}

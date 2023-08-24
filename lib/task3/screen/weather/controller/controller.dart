
import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherApi {
  final String apiKey = '8307aa084f4be5c1fc56b1f152d32527';
  final String baseUrl = 'http://api.openweathermap.org/data/2.5/weather';

  Future<Map<String, dynamic>> getCurrentWeatherData(String city) async {
    final response = await http.get(
      Uri.parse(
        '$baseUrl?q=$city&appid=$apiKey&units=metric',
      )
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
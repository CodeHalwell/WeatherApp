import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;


class WeatherAPIClient {
  static const baseURL = 'https://api.openweathermap.org/data/2.5';
  //static const apiKey = '<YOUR_API_KEY>'; if you would like to hardcode the API key

  Future<int> getWeather(String city) async {
    // Make a request to the API to get the weather for the city
    final apiKey = Platform.environment['WEATHER_API_KEY'];
    if (apiKey == null) {
      throw Exception('API key not found in environment variables');
    }
    final locationURL = Uri.parse('$baseURL/weather?q=$city&units=metric&APPID=$apiKey');
    final locationResponse = await http.get(locationURL);

    if (locationResponse.statusCode != 200) {
      print('Response status: ${locationResponse.statusCode}');
      print('Response body: ${locationResponse.body}');
      throw Exception('Failed to get location ID for the city: $city');
    }
    final locationJson = jsonDecode(locationResponse.body);

    // Extract the weather and temperature from the response
    final weather = locationJson['weather'][0]['description'];
    final temperature = locationJson['main']['temp'];
    final feels_like = locationJson['main']['feels_like'];
    print('\nThe weather in $city is $weather with a temperature of $temperature°C and feels like $feels_like°C\n');

    // return the temperature as Integer
    return temperature.toInt();
  }
}

/**
 *  Use Map and List to create a program that stores weather data for different cities (temperature,
 humidity, etc.). Write a function that can retrieve and print weather details using a city name
 * 
 */

import 'dart:io';

void main() {
  Map<String, WeatherData> weatherMap = {
    'New York': WeatherData(city: 'New York', temperature: 22.5, humidity: 60),
    'Los Angeles': WeatherData(
      city: 'Los Angeles',
      temperature: 26.0,
      humidity: 50,
    ),
    'Chicago': WeatherData(city: 'Chicago', temperature: 20.0, humidity: 70),
    'Houston': WeatherData(city: 'Houston', temperature: 28.5, humidity: 65),
  };

  while (true) {
    print('\nEnter a city name to retrieve weather data or type "exit":');
    String? cityName = stdin.readLineSync();

    if (cityName?.toLowerCase() == 'exit') {
      print('Exiting the program.');
      break;
    }

    retrieveWeather(weatherMap, cityName);
  }
}

void retrieveWeather(Map<String, WeatherData> weatherMap, String? cityName) {
  if (cityName != null && weatherMap.containsKey(cityName)) {
    WeatherData weather = weatherMap[cityName]!;
        print(weather.city + ' ' + weather.temperature.toString() + ' ' + weather.humidity.toString());

  } else {
    print('Weather data for the city "$cityName" is not available');
  }
}

class WeatherData {
  String city;
  double temperature;
  double humidity;

  WeatherData({
    required this.city,
    required this.temperature,
    required this.humidity,
  });
}

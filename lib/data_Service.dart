import 'package:http/http.dart' as http;

class DataService {
  void getWeather(String city) async {

    //https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}

final queryParameters = {
  'q': city, 
  'appid': 'e90e962a9bb1c516dc77ae95406e7168'
  };
 
  final uri = Uri.https(
    'api.openweathermap.org', '/data/2.5/weather', queryParameters);

     final response = await http.get(uri);

     print(response.body);

  }
}

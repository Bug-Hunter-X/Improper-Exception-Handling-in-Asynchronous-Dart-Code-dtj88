```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData['someKey']);
    } else {
      //Proper error handling with user-friendly message
      throw Exception('Failed to load data. Server responded with status code: ${response.statusCode}');
    }
  } catch (e, stacktrace) {
    //Log error with stacktrace
    print('Error: $e, stacktrace: $stacktrace'); //Remove in production after testing
    // Display user-friendly error message (depending on context and UI)
    print('An error occurred while fetching data. Please try again later.'); 
  }
}
```
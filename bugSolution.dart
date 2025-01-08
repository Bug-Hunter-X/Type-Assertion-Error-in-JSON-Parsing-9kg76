```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      if (jsonData is List) {
        final dataList = jsonData.cast<dynamic>();
        //Further processing of dataList
      } else if (jsonData is Map) {
        //Handle JSON object response
        print('Json is a Map: $jsonData');
      } else {
        //Handle other JSON response types
        print('JSON is not a list or map: $jsonData');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Handle Error appropriately
  }
}
```
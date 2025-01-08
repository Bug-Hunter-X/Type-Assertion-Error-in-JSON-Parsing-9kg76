```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON list
      final jsonData = jsonDecode(response.body);
      // This will cause an error if jsonData is not a List
      final dataList = jsonData as List<dynamic>;
       //Further processing of dataList
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Handle Error appropriately
  }
}
```
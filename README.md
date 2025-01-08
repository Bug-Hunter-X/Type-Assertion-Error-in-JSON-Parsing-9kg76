# Dart JSON Parsing Type Assertion Bug

This repository demonstrates a common error in Dart when parsing JSON responses: incorrect type assertion. The `bug.dart` file contains code that assumes the JSON response is a list, leading to a runtime error if it's a different data type.  The `bugSolution.dart` provides the corrected code.

## Bug Description
The original code uses `jsonData as List<dynamic>` to assert that the decoded JSON is a list.  If the API returns a JSON object or a different type, this assertion will fail and throw an exception.

## Solution
The solution involves checking the type of `jsonData` before attempting to access it as a list.  This can be done using `jsonData is List` or more robust error handling.
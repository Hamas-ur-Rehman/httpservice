# httpservice

A FLutter package that depends on http package (For now only get command is supported).

## Getting Started

This package contains classes that make it
easy to consume the http package. It's multi-platform, and supports mobile, desktop,
and the browser.

## Using

The easiest way to use this library is to initialize the class and call the function:

```dart
import 'dart:convert';
import 'package:httpservice/httpservice.dart';

void getapidata(String apix) async {
    HttpService httpService = HttpService("$apix");
    var data = await httpService.getContents();
    var decodedData = jsonDecode(data);
    print(decodedData);
  }

```
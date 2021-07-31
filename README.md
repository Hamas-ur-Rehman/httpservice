# httpservice

A FLutter package that depends on http package.


## Getting Started
 
This package contains classes that make it
easy to consume the http package. It's multi-platform, and supports mobile, desktop,
and the browser.
It supports GET,PUT,POST,DELETE and PATCH requests

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

### GET

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


### POST

```dart
import 'dart:convert';
import 'package:httpservice/httpservice.dart';

void postapidata(String apix) async {
    HttpService httpService = HttpService("$apix");
    var data = await httpService.postContents(headers: {"Content-type": "application/json"},body: '{"title": "Hello", "body": "body text", "userId": 1}');
  }

```


### PUT

```dart
import 'dart:convert';
import 'package:httpservice/httpservice.dart';

void postapidata(String apix) async {
    HttpService httpService = HttpService("$apix");
    var data = await httpService.putContents(headers: {"Content-type": "application/json"},body:'{"title": "Hello", "body": "body text", "userId": 1}');
  }

```

### PATCH

```dart
import 'dart:convert';
import 'package:httpservice/httpservice.dart';

void postapidata(String apix) async {
    HttpService httpService = HttpService("$apix");
    var data = await httpService.putContents(headers: {"Content-type": "application/json"},body:'{"title": "Hello"}');
  }

```

### DELETE

```dart
import 'dart:convert';
import 'package:httpservice/httpservice.dart';

void postapidata(String apix) async {
    HttpService httpService = HttpService("$apix");
    var data = await httpService.deleteContents();
  }

```

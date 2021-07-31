import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:httpservice/httpservice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Http Service example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    getapidata("https://www.reddit.com/.json");
  }

  void getapidata(String apix) async {
    HttpService httpService = HttpService("$apix");
    var data = await httpService.getContents();
    var decodedData = jsonDecode(data);
    print(decodedData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:ex01/dto/serverinfo.dart';
import 'package:ex01/dataservice.dart';
import 'package:ex01/startpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({required Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  late Future<List<ServerInfo>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchServerInfo();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Serverstatus monitor",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StartPage(title: "Server status monitor", serverInfo: futureData),
    );
  }
}
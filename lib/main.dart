import 'package:flutter/material.dart';
import 'package:http_example/ServerApi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GitHub"),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("Search"),
        onPressed: () async {
          ServerApi serverApi = ServerApi();
          String result = await serverApi.getGithubUser();
          print("Result: $result");
        },
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http_example/model/GitUserModel.dart';

import 'data/ServerApi.dart';

class ListViewBuilderPage extends StatefulWidget {
  const ListViewBuilderPage({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderPage> createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {

  List<GitUserModel> listItems = new List<GitUserModel>.empty();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    listItems = await getServerData();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: listItems.length,
          itemBuilder: (context, index) {
            return ListTile(leading: Icon(Icons.person_outline_outlined),
              title: Text("id: ${listItems[index].id}"),
              subtitle: Text("Name: ${listItems[index].login}"),);
          }),
    );
  }

  Future<List<GitUserModel>> getServerData() async {

    ServerApi serverApi = ServerApi();
    String jsonString = await serverApi.getGithubUser();
    List<dynamic> result = json.decode(jsonString);
    return result.map((e) => GitUserModel.fromJson(e)).toList();
  }
}

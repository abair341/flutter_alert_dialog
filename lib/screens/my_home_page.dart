import 'package:action_dialog_custom/screens/dilaogs.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final action = await Dilaogs.yesAbortDialog(
              context, "Delete Alert", "You want to delete?");
          print(action);
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Action Dialog"),
      ),
      body: Text("Action Dialog"),
    );
  }
}

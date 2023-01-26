import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stm_demo/add_note_page.dart';

///shows the notes we have
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes App"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Note $index"),
              subtitle: Text("Note Description $index"),
            );
          },
          itemCount: 5
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //takes us from this page to the add note page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddNotePage())
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

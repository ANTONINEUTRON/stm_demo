import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:stm_demo/add_note_page.dart';
import 'package:stm_demo/model/note.dart';
import 'package:stm_demo/providers/note_provider.dart';

///shows the notes we have
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Note> listOfNote = context.watch<NoteProvider>().getListOfNotes();
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes App"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(listOfNote[index].title),
              subtitle: Text(listOfNote[index].description),
            );
          },
          itemCount: listOfNote.length),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //takes us from this page to the add note page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddNotePage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

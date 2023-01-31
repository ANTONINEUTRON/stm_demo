import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:stm_demo/model/note.dart';
import 'package:stm_demo/providers/note_provider.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key});

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  String title = "";
  String description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Note")),
      body: WillPopScope(
        onWillPop: () async {
          //create a Note instance
          var note = Note(title: title, description: description);
          //access provider and save note to the list
          context.read<NoteProvider>().saveNote(note);
          return true;//will enable the user go back
        },
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: ListView(
            children: [
              TextField(
                onChanged: (newTitle) {
                  setState(() {
                    title = newTitle;
                  });
                },
                decoration: InputDecoration(labelText: "Title"),
                maxLines: 2,
              ),
              TextField(
                onChanged: (newDesc) {
                  setState(() {
                    description = newDesc;
                  });
                },
                decoration: InputDecoration(labelText: "Description"),
                maxLines: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}

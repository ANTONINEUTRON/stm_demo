import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note")
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Title"
              ),
              maxLines: 2,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Description"
              ),
              maxLines: null,
            )
          ],
        ),
      ),
    );
  }
}
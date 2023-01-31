import 'package:flutter/material.dart';
import 'package:stm_demo/model/note.dart';

class NoteProvider extends ChangeNotifier {
  List<Note> _listOfNotes = [];

  void saveNote(Note note) {
    _listOfNotes.add(note);
    notifyListeners();
  }

  List<Note> getListOfNotes() {
    return _listOfNotes;
  }
}

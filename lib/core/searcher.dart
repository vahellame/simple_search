import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Searcher with ChangeNotifier {
  // Empty constructor to run 'init' function
  Searcher();

  Map wordsIndexes;
  List wordsList;
  List results = [];

  // Functions
  Future<void> init() async {
    wordsIndexes = await readWordsIndexes();
    wordsList = await readWordsList();
    print('searcher init done');
  }

  Future<Map> readWordsIndexes() async {
    try {
      final contents = await rootBundle.loadString('assets/words_indexes.json');
      return Future.value(json.decode(contents));

      // return null;
    } catch (e) {
      print('e = $e');
      return null;
    }
  }

  Future<List> readWordsList() async {
    try {
      final contents = await rootBundle.loadString('assets/words_list.txt');
      return Future.value(contents.split('\n'));
    } catch (e) {
      print('e = $e');
      return null;
    }
  }

  Future<void> search(String searchQuery) async {
    List indexes = wordsIndexes[searchQuery];
    results = [];

    if (indexes == null) {
      indexes = [];
    } else {
      for (var i = 0; i < indexes.length; i++) {
        var index = indexes[i];
        results.add(wordsList[index]);
      }
    }
    notifyListeners();
  }
}

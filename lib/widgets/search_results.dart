import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_search_2/core/searcher.dart';

class SearchResults extends StatelessWidget {
  const SearchResults();

  @override
  Widget build(BuildContext context) {
    final results = context.watch<Searcher>().results;
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, i) {
        return Container(
          child: Text(
            results[i],
            style: TextStyle(fontSize: 17),
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          margin: const EdgeInsets.all(3),
          padding: const EdgeInsets.fromLTRB(7, 3, 3, 3),
        );
      },
    );
  }
}

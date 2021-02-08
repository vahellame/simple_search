import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_search_2/core/searcher.dart';

class SearchString extends StatelessWidget {
  const SearchString();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        border: const OutlineInputBorder(),
      ),
      onChanged: (searchQuery) async => context.read<Searcher>().search(searchQuery),
    );
  }
}

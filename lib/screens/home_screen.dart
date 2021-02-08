import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_search_2/widgets/search_results.dart';
import 'package:simple_search_2/widgets/search_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Search'),
      ),
      body: Column(
        children: [
          const SearchString(),
          Expanded(
            child: const SearchResults(),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
    );
  }
}

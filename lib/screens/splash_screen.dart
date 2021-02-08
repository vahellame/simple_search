import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:simple_search_2/core/searcher.dart';
import 'package:simple_search_2/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    final initStatus = context.read<Searcher>().init();
    initStatus.then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Created by',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 21,
                    ),
                  ),
                  const Text(
                    'Vadim Reznichenko',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 21,
                    ),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:graph_sync_flutter/utils/cartesian_chart.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  CartesianChart(),
    );
  }
}



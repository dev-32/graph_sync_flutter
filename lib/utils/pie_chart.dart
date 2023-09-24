import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChart extends StatefulWidget {
  const PieChart({super.key});

  @override
  State<PieChart> createState() => _PieChartState();
}

class _PieChartState extends State<PieChart> {
  final List<PieData> charData = [
    PieData(yData: 9000, xData: 'Ayush'),
    PieData(yData: 9800, xData: 'Test Ayush 1'),
    PieData(yData: 4000, xData: 'Test Ayush 2'),

  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
        height:400,
        margin: EdgeInsets.all(10),
        child: SfCircularChart(
          backgroundColor: Colors.yellow.shade100,
          borderWidth: 5,
          borderColor: Colors.yellow.shade200,
          title: ChartTitle(text: "Sales Data"),
          legend: Legend(isVisible: true),
          palette: [Colors.red.shade200, Colors.green.shade200, Colors.blue.shade200],
          series: [
            PieSeries<PieData, String>(
              dataLabelSettings: DataLabelSettings(isVisible: true),
              explode: true,
              radius: '120',
              explodeIndex: 0,
              dataSource: charData,
              xValueMapper: (PieData data, _) => data.xData,
              yValueMapper: (PieData data, _) => data.yData,
            )
          ],
    ));
  }
}

class PieData{
  final num yData;
  final String xData;

  PieData({required this.yData, required this.xData});
}
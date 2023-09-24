import 'package:flutter/material.dart';
import 'package:graph_sync_flutter/utils/pie_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CartesianChart extends StatefulWidget {
  const CartesianChart({super.key});

  @override
  State<CartesianChart> createState() => _CartesianChartState();
}

class _CartesianChartState extends State<CartesianChart> {
  final List<SalesData> chartData = [
    SalesData(year: 2001, sales: 3400, color: Colors.red.shade300),
    SalesData(year: 2002, sales: 3600, color: Colors.yellowAccent.shade200),
    SalesData(year: 2003, sales: 3100, color: Colors.green.shade300),
    SalesData(year: 2004, sales: 2000, color: Colors.orange.shade300),
    SalesData(year: 2005, sales: 3800, color: Colors.purple.shade300),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: const Text('Cartesian Charts'),
        backgroundColor: Colors.green.shade200,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            margin: EdgeInsets.all(10),
            child: SfCartesianChart(
              legend: Legend(isVisible: true),
              title: ChartTitle(text: "Sales Data"),
              series: <ChartSeries>[
                ColumnSeries<SalesData, int>(
                  dashArray: <double> [10,5],
                  pointColorMapper: (SalesData sales, _)=>sales.color,
                  legendItemText:'Sales',
                    dataSource: chartData,
                    xValueMapper: (SalesData sales, _)=>sales.year,
                    yValueMapper: (SalesData sales,_)=> sales.sales)
              ],
            ),
          ),
          const SizedBox(height: 14,),
          PieChart(),
        ],
      ),
    );
  }
}

class SalesData{
  final int year;
  final double sales;
  final Color color;

  SalesData({required this.year, required this.sales, required this.color});
}

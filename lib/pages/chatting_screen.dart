import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChattingScreen extends StatefulWidget {
  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  late TooltipBehavior _tooltipBehavior;

  String intToTime(int value) {
    int h, m ;

    h = value ~/ 3600;
    m = ((value - h * 3600)) ~/ 60 ;

    String result = "$h:$m";
    return result ;
  }

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            height: 240,
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              tooltipBehavior: _tooltipBehavior,
              series: <LineSeries<DayData, String>>[
                LineSeries<DayData, String>(
                  dataSource: <DayData>[
                    DayData('MON', 120, Colors.red),
                    DayData('TUE', 135, Colors.orange),
                    DayData('WED', 80, Colors.yellow),
                    DayData('THU', 200, Colors.green),
                    DayData('FRI', 170, Colors.blue),
                    DayData('SAT', 200, Colors.blueAccent),
                    DayData('SUN', 250, Colors.purple),
                  ],
                  pointColorMapper:(DayData days, _) => days.segmentColor,
                  xValueMapper: (DayData days, _) => days.day,
                  yValueMapper: (DayData days, _) => days.time,
                  dataLabelSettings: DataLabelSettings(isVisible: true)
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}

class DayData {
  DayData(this.day, this.time, this.segmentColor);
  final String day;
  final int time;
  final Color segmentColor;
}
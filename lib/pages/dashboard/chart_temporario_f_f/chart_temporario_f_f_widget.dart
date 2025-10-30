import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'chart_temporario_f_f_model.dart';
export 'chart_temporario_f_f_model.dart';

/// Não será utilizado
class ChartTemporarioFFWidget extends StatefulWidget {
  const ChartTemporarioFFWidget({super.key});

  @override
  State<ChartTemporarioFFWidget> createState() =>
      _ChartTemporarioFFWidgetState();
}

class _ChartTemporarioFFWidgetState extends State<ChartTemporarioFFWidget> {
  late ChartTemporarioFFModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartTemporarioFFModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 230.0,
      child: FlutterFlowLineChart(
        data: [
          FFLineChartData(
            xData: List.generate(random_data.randomInteger(8, 30),
                (index) => random_data.randomInteger(2, 10)),
            yData: List.generate(random_data.randomInteger(8, 100),
                (index) => random_data.randomInteger(0, 10)),
            settings: LineChartBarData(
              color: FlutterFlowTheme.of(context).primary,
              barWidth: 2.0,
              isCurved: true,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                color: FlutterFlowTheme.of(context).accent1,
              ),
            ),
          )
        ],
        chartStylingInfo: ChartStylingInfo(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          showGrid: true,
          showBorder: false,
        ),
        axisBounds: AxisBounds(),
        xAxisLabelInfo: AxisLabelInfo(
          reservedSize: 32.0,
        ),
        yAxisLabelInfo: AxisLabelInfo(
          reservedSize: 40.0,
        ),
      ),
    );
  }
}

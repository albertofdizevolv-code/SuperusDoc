import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'toast_with_temp_model.dart';
export 'toast_with_temp_model.dart';

class ToastWithTempWidget extends StatefulWidget {
  const ToastWithTempWidget({
    super.key,
    required this.type,
    required this.text,
    required this.timeLoading,
  });

  final Toast? type;
  final String? text;
  final TimeLoading? timeLoading;

  @override
  State<ToastWithTempWidget> createState() => _ToastWithTempWidgetState();
}

class _ToastWithTempWidgetState extends State<ToastWithTempWidget> {
  late ToastWithTempModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ToastWithTempModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: () {
            if (widget.timeLoading == TimeLoading.temp10seconds) {
              return 1000;
            } else if (widget.timeLoading == TimeLoading.temp8seconds) {
              return 800;
            } else if (widget.timeLoading == TimeLoading.temp6seconds) {
              return 600;
            } else {
              return 400;
            }
          }(),
        ),
      );
      while (_model.tempCloseModal <= 0.9) {
        await Future.delayed(
          Duration(
            milliseconds: () {
              if (widget.timeLoading == TimeLoading.temp10seconds) {
                return 1000;
              } else if (widget.timeLoading == TimeLoading.temp8seconds) {
                return 800;
              } else if (widget.timeLoading == TimeLoading.temp6seconds) {
                return 600;
              } else {
                return 400;
              }
            }(),
          ),
        );
        _model.tempCloseModal = _model.tempCloseModal + 0.1;
        safeSetState(() {});
      }
      await Future.delayed(
        Duration(
          milliseconds: 400,
        ),
      );
      Navigator.pop(context);
    });

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
      width: 800.0,
      decoration: BoxDecoration(
        color: Color(0xFFE8F5E8),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Color(0xFF75937F),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    FFIcons.kcheckCircle,
                    color: FlutterFlowTheme.of(context).success,
                    size: 20.0,
                  ),
                  Expanded(
                    child: Text(
                      valueOrDefault<String>(
                        widget.text,
                        'Solicitação de Serviço de Andaime Atualizado',
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            font: GoogleFonts.lato(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontStyle,
                          ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.close_outlined,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: LinearPercentIndicator(
                    percent: _model.tempCloseModal,
                    lineHeight: 5.0,
                    animation: true,
                    animateFromLastPercent: true,
                    progressColor: FlutterFlowTheme.of(context).success,
                    backgroundColor: FlutterFlowTheme.of(context).accent4,
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          ].divide(SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}

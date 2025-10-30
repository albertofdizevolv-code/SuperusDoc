import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'toast_model.dart';
export 'toast_model.dart';

class ToastWidget extends StatefulWidget {
  const ToastWidget({
    super.key,
    required this.type,
    required this.text,
  });

  final Toast? type;
  final String? text;

  @override
  State<ToastWidget> createState() => _ToastWidgetState();
}

class _ToastWidgetState extends State<ToastWidget> {
  late ToastModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ToastModel());

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
      height: 40.0,
      decoration: BoxDecoration(
        color: () {
          if (widget.type == Toast.error) {
            return Color(0xFFF6CFCF);
          } else if (widget.type == Toast.warning) {
            return Color(0xFFFFF1D9);
          } else if (widget.type == Toast.info) {
            return Color(0xFFDAE8FE);
          } else if (widget.type == Toast.success) {
            return Color(0xFFE8F5E8);
          } else {
            return Color(0xFFE8F5E8);
          }
        }(),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: () {
            if (widget.type == Toast.error) {
              return Color(0xFFCA7B7B);
            } else if (widget.type == Toast.warning) {
              return Color(0xFFDFBC9C);
            } else if (widget.type == Toast.info) {
              return Color(0xFFA2B6E6);
            } else if (widget.type == Toast.success) {
              return Color(0xFF75937F);
            } else {
              return Color(0xFF75937F);
            }
          }(),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Builder(
              builder: (context) {
                if (widget.type == Toast.error) {
                  return Icon(
                    FFIcons.kwarningCircle,
                    color: FlutterFlowTheme.of(context).error,
                    size: 20.0,
                  );
                } else if (widget.type == Toast.warning) {
                  return Icon(
                    FFIcons.kwarning,
                    color: FlutterFlowTheme.of(context).warning,
                    size: 20.0,
                  );
                } else if (widget.type == Toast.info) {
                  return Icon(
                    FFIcons.kinfo,
                    color: Color(0xFF3B82F6),
                    size: 20.0,
                  );
                } else {
                  return Icon(
                    FFIcons.kcheckCircle,
                    color: FlutterFlowTheme.of(context).success,
                    size: 20.0,
                  );
                }
              },
            ),
            Text(
              valueOrDefault<String>(
                widget.text,
                'Contrato 2 está próximo do limite',
              ),
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    font: GoogleFonts.lato(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodySmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodySmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodySmall.fontWeight,
                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                  ),
            ),
          ].divide(SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}

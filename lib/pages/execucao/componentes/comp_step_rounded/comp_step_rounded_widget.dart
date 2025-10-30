import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'comp_step_rounded_model.dart';
export 'comp_step_rounded_model.dart';

class CompStepRoundedWidget extends StatefulWidget {
  const CompStepRoundedWidget({
    super.key,
    required this.numberTitle,
    required this.statusNumber,
  });

  final int? numberTitle;
  final int? statusNumber;

  @override
  State<CompStepRoundedWidget> createState() => _CompStepRoundedWidgetState();
}

class _CompStepRoundedWidgetState extends State<CompStepRoundedWidget> {
  late CompStepRoundedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompStepRoundedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              widget.statusNumber! > widget.numberTitle!
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).secondaryBackground,
              FlutterFlowTheme.of(context).secondaryBackground,
            ),
            shape: BoxShape.circle,
            border: Border.all(
              color: widget.statusNumber == widget.numberTitle
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            valueOrDefault<String>(
              widget.numberTitle?.toString(),
              '1',
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: () {
                    if (widget.statusNumber == widget.numberTitle) {
                      return FlutterFlowTheme.of(context).primary;
                    } else if (widget.statusNumber! > widget.numberTitle!) {
                      return FlutterFlowTheme.of(context).secondaryBackground;
                    } else {
                      return FlutterFlowTheme.of(context).primaryText;
                    }
                  }(),
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
        ),
        if (widget.numberTitle != 10)
          Expanded(
            child: Container(
              width: 60.0,
              height: 4.0,
              decoration: BoxDecoration(
                color: valueOrDefault<Color>(
                  widget.statusNumber! > widget.numberTitle!
                      ? FlutterFlowTheme.of(context).primary
                      : FlutterFlowTheme.of(context).secondaryBackground,
                  FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

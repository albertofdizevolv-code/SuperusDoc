import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'checkbox_iten_selecionado_model.dart';
export 'checkbox_iten_selecionado_model.dart';

class CheckboxItenSelecionadoWidget extends StatefulWidget {
  const CheckboxItenSelecionadoWidget({
    super.key,
    this.title,
    required this.typeMode,
    this.idItemSelecinado,
  });

  final String? title;
  final WidgetTypeMode? typeMode;
  final int? idItemSelecinado;

  @override
  State<CheckboxItenSelecionadoWidget> createState() =>
      _CheckboxItenSelecionadoWidgetState();
}

class _CheckboxItenSelecionadoWidgetState
    extends State<CheckboxItenSelecionadoWidget> {
  late CheckboxItenSelecionadoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckboxItenSelecionadoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      child: Theme(
        data: ThemeData(
          checkboxTheme: CheckboxThemeData(
            visualDensity: VisualDensity.compact,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          unselectedWidgetColor: FlutterFlowTheme.of(context).accent4,
        ),
        child: CheckboxListTile(
          value: _model.checkboxListTileValue ??= FFAppState()
              .stateSSAcompleta
              .vtItensSelecionadosSINGLE
              .contains(widget.idItemSelecinado),
          onChanged: (widget.typeMode == WidgetTypeMode.view)
              ? null
              : (newValue) async {
                  safeSetState(() => _model.checkboxListTileValue = newValue!);
                  if (newValue!) {
                    FFAppState().updateStateSSAcompletaStruct(
                      (e) => e
                        ..updateVtItensSelecionadosSINGLE(
                          (e) => e.add(widget.idItemSelecinado!),
                        ),
                    );
                    safeSetState(() {});
                  } else {
                    FFAppState().updateStateSSAcompletaStruct(
                      (e) => e
                        ..updateVtItensSelecionadosSINGLE(
                          (e) => e.remove(widget.idItemSelecinado),
                        ),
                    );
                    safeSetState(() {});
                  }
                },
          title: Text(
            widget.title!,
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).titleLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).titleLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
          ),
          tileColor: FlutterFlowTheme.of(context).secondaryBackground,
          activeColor: FlutterFlowTheme.of(context).primary,
          checkColor: (widget.typeMode == WidgetTypeMode.view)
              ? FFAppState()
                      .stateSSAcompleta
                      .vtItensSelecionadosSINGLE
                      .contains(widget.idItemSelecinado)
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).accent4
              : FlutterFlowTheme.of(context).info,
          dense: false,
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}

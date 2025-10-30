import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';
import 'comp_signature_model.dart';
export 'comp_signature_model.dart';

class CompSignatureWidget extends StatefulWidget {
  const CompSignatureWidget({
    super.key,
    String? title,
    required this.typemode,
  }) : this.title = title ?? 'Assinatura do Cliente';

  final String title;
  final WidgetTypeMode? typemode;

  @override
  State<CompSignatureWidget> createState() => _CompSignatureWidgetState();
}

class _CompSignatureWidgetState extends State<CompSignatureWidget> {
  late CompSignatureModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompSignatureModel());

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
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.title,
                      'Assinatura do Cliente',
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontStyle,
                          ),
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontStyle,
                        ),
                  ),
                ],
              ),
              Builder(
                builder: (context) {
                  if (widget.typemode == WidgetTypeMode.create) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 250.0,
                          child: custom_widgets.Assinatura(
                            width: double.infinity,
                            height: 250.0,
                            uploadBase64: FFAppState().uploadBase64,
                            salvarAssinatura: _model.salvar,
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: (FFAppState().uploadBase64 != '')
                              ? null
                              : () async {
                                  _model.salvar = true;
                                  _model.updatePage(() {});
                                  await Future.delayed(
                                    Duration(
                                      milliseconds: 800,
                                    ),
                                  );
                                  _model.salvar = false;
                                  _model.updatePage(() {});
                                },
                          text: valueOrDefault<String>(
                            FFAppState().uploadBase64 != ''
                                ? 'Assinatura salva'
                                : 'Salvar Assinatura',
                            'Salvar Assinatura',
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: valueOrDefault<Color>(
                              FFAppState().uploadBase64 != ''
                                  ? FlutterFlowTheme.of(context).alternate
                                  : FlutterFlowTheme.of(context).primary,
                              FlutterFlowTheme.of(context).primary,
                            ),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: valueOrDefault<Color>(
                                    FFAppState().uploadBase64 != ''
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryText
                                        : Colors.white,
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                            disabledColor:
                                FlutterFlowTheme.of(context).alternate,
                            disabledTextColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ),
                      ].divide(SizedBox(height: 24.0)),
                    );
                  } else {
                    return Container(
                      width: double.infinity,
                      height: 250.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          valueOrDefault<String>(
                            FFAppState().stateSSAcompleta.vtAssinaturaUrl,
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/superus-eq276n/assets/n6sxnehye9af/Title%3DNo_favorites%3B_Cololr%3Dpurple%3B_Fill%3Dgradient%3B.png',
                          ),
                          height: 200.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  }
                },
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                ClipRect(
                  child: Signature(
                    controller: _model.signatureController ??=
                        SignatureController(
                      penStrokeWidth: 2.0,
                      penColor: FlutterFlowTheme.of(context).primaryText,
                      exportBackgroundColor: Colors.white,
                    ),
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    width: 2.0,
                    height: 1.0,
                  ),
                ),
            ].divide(SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}

import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/components/text_field_static_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'comp_dadosdo_contrato_model.dart';
export 'comp_dadosdo_contrato_model.dart';

class CompDadosdoContratoWidget extends StatefulWidget {
  const CompDadosdoContratoWidget({
    super.key,
    required this.typemode,
  });

  final WidgetTypeMode? typemode;

  @override
  State<CompDadosdoContratoWidget> createState() =>
      _CompDadosdoContratoWidgetState();
}

class _CompDadosdoContratoWidgetState extends State<CompDadosdoContratoWidget> {
  late CompDadosdoContratoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompDadosdoContratoModel());

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

    return
        // Obrigatório escolher o cliente (Dropdown)
        // Esse cliente vem da integração(ERP Totv)
        //
        // Preenchido automaticamente ao selecionar o cliente
        // CNPJ
        // Nº Contrato
        // Centro Custo
        //
        //
        // Demais campos Manual são preenchido pelo usuário
        FocusTraversalGroup(
      policy: OrderedTraversalPolicy(),
      child: Material(
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
                Text(
                  'Dados do Contrato',
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .fontStyle,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Cliente',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.lato(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              if (widget.typemode == WidgetTypeMode.edit)
                                Text(
                                  '(Este campo não pode ser alterado)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.lato(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF7B7B7E),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                          Builder(
                            builder: (context) {
                              if (_model.necessarioConfirmarFilipe == 2) {
                                return FutureBuilder<List<ProjetoRow>>(
                                  future: ProjetoTable().queryRows(
                                    queryFn: (q) => q,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<ProjetoRow> containerProjetoRowList =
                                        snapshot.data!;

                                    return Container(
                                      decoration: BoxDecoration(),
                                      child: FlutterFlowDropDown<int>(
                                        controller: _model
                                                .dropProjetoValueController ??=
                                            FormFieldController<int>(
                                          _model.dropProjetoValue ??=
                                              FFAppState()
                                                  .stateSSAcompleta
                                                  .fkIdProjeto,
                                        ),
                                        options: List<int>.from(
                                            containerProjetoRowList
                                                .map((e) => e.idProjeto)
                                                .toList()),
                                        optionLabels: containerProjetoRowList
                                            .map((e) => e.nomeOp)
                                            .toList(),
                                        onChanged: (val) async {
                                          safeSetState(() =>
                                              _model.dropProjetoValue = val);
                                          FFAppState()
                                              .updateStateSSAcompletaStruct(
                                            (e) => e
                                              ..ssaCodigoCentroCusto =
                                                  containerProjetoRowList
                                                      .where((e) =>
                                                          e.idProjeto ==
                                                          _model
                                                              .dropProjetoValue)
                                                      .toList()
                                                      .firstOrNull
                                                      ?.codigoCentroCusto
                                              ..ssaCentroCustoCliente =
                                                  containerProjetoRowList
                                                      .where((e) =>
                                                          e.idProjeto ==
                                                          _model
                                                              .dropProjetoValue)
                                                      .toList()
                                                      .firstOrNull
                                                      ?.codigoCentroCusto
                                              ..nomeProjeto =
                                                  containerProjetoRowList
                                                      .where((e) =>
                                                          e.idProjeto ==
                                                          _model
                                                              .dropProjetoValue)
                                                      .toList()
                                                      .firstOrNull
                                                      ?.nomeOp
                                              ..fkIdProjeto =
                                                  _model.dropProjetoValue,
                                          );
                                          FFAppState().update(() {});
                                        },
                                        width: double.infinity,
                                        height: 40.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.lato(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .accent4,
                                        borderWidth: 0.0,
                                        borderRadius: 8.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    );
                                  },
                                );
                              } else {
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.textFieldStaticModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: TextFieldStaticWidget(
                                        bodyText: FFAppState()
                                            .stateSSAcompleta
                                            .ssaCodigoCentroCusto,
                                      ),
                                    ),
                                  ],
                                );
                              }
                            },
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Código do Centro de Custo',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.lato(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              if (widget.typemode == WidgetTypeMode.edit)
                                Text(
                                  '(Este campo não pode ser alterado)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.lato(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF7B7B7E),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                          wrapWithModel(
                            model: _model.textFieldStaticModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: TextFieldStaticWidget(
                              bodyText: FFAppState().stateSSAcompleta.ssaArea,
                            ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                    ),
                  ].divide(SizedBox(width: 24.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Número Contrato do Cliente',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.lato(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              if (widget.typemode == WidgetTypeMode.edit)
                                Text(
                                  '(Este campo não pode ser alterado)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.lato(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF7B7B7E),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                          wrapWithModel(
                            model: _model.textFieldStaticModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: TextFieldStaticWidget(
                              bodyText: FFAppState()
                                  .stateSSAcompleta
                                  .ssaCodigoCentroCusto,
                            ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'CNPJ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.lato(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              if (widget.typemode == WidgetTypeMode.edit)
                                Text(
                                  '(Este campo não pode ser alterado)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.lato(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF7B7B7E),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                          wrapWithModel(
                            model: _model.textFieldStaticModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: TextFieldStaticWidget(
                              bodyText:
                                  FFAppState().configEmpresaSelecionada.cnpj,
                            ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                    ),
                  ].divide(SizedBox(width: 24.0)),
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Subprojeto',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.lato(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            Builder(
                              builder: (context) {
                                if (widget.typemode == WidgetTypeMode.edit) {
                                  return FutureBuilder<List<SubprojetoRow>>(
                                    future: SubprojetoTable().queryRows(
                                      queryFn: (q) => q.eqOrNull(
                                        'id_projeto',
                                        _model.dropProjetoValue,
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<SubprojetoRow>
                                          containerSubprojetoRowList =
                                          snapshot.data!;

                                      return Container(
                                        decoration: BoxDecoration(),
                                        child: FlutterFlowDropDown<int>(
                                          controller: _model
                                                  .subProjetoValueController ??=
                                              FormFieldController<int>(
                                            _model.subProjetoValue ??=
                                                FFAppState()
                                                    .stateSSAcompleta
                                                    .fkIdSubprojeto,
                                          ),
                                          options: List<int>.from(
                                              containerSubprojetoRowList
                                                  .map((e) => e.idSubprojeto)
                                                  .toList()),
                                          optionLabels:
                                              containerSubprojetoRowList
                                                  .map((e) => e.nomeSub)
                                                  .withoutNulls
                                                  .toList(),
                                          onChanged: (val) async {
                                            safeSetState(() =>
                                                _model.subProjetoValue = val);
                                            FFAppState()
                                                .updateStateSSAcompletaStruct(
                                              (e) => e
                                                ..nomeSubprojeto =
                                                    containerSubprojetoRowList
                                                        .where((e) =>
                                                            e.idSubprojeto ==
                                                            _model
                                                                .subProjetoValue)
                                                        .toList()
                                                        .firstOrNull
                                                        ?.nomeSub
                                                ..fkIdSubprojeto =
                                                    _model.subProjetoValue,
                                            );
                                            FFAppState().update(() {});
                                          },
                                          width: double.infinity,
                                          height: 40.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.lato(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                          hintText: containerSubprojetoRowList
                                                      .length <
                                                  1
                                              ? 'Não possui subprojetos'
                                              : ' ',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: containerSubprojetoRowList
                                                        .length <
                                                    1
                                                ? FlutterFlowTheme.of(context)
                                                    .primaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor: containerSubprojetoRowList
                                                      .length <
                                                  1
                                              ? FlutterFlowTheme.of(context)
                                                  .primaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent4,
                                          borderWidth: 0.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          hidesUnderline: true,
                                          disabled: containerSubprojetoRowList
                                                  .length <
                                              1,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      );
                                    },
                                  );
                                } else {
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.textFieldStaticModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextFieldStaticWidget(
                                          bodyText: valueOrDefault<String>(
                                            FFAppState()
                                                .stateSSAcompleta
                                                .nomeSubprojeto,
                                            'Não possui subprojetos',
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }
                              },
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ),
                    ].divide(SizedBox(width: 24.0)),
                  ),
                ),
              ].divide(SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}

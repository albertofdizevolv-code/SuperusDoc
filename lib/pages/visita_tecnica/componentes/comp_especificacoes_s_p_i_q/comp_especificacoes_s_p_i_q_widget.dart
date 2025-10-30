import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visita_tecnica/componentes/checkbox_iten_selecionado/checkbox_iten_selecionado_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'comp_especificacoes_s_p_i_q_model.dart';
export 'comp_especificacoes_s_p_i_q_model.dart';

class CompEspecificacoesSPIQWidget extends StatefulWidget {
  const CompEspecificacoesSPIQWidget({
    super.key,
    required this.typeMode,
  });

  final WidgetTypeMode? typeMode;

  @override
  State<CompEspecificacoesSPIQWidget> createState() =>
      _CompEspecificacoesSPIQWidgetState();
}

class _CompEspecificacoesSPIQWidgetState
    extends State<CompEspecificacoesSPIQWidget> {
  late CompEspecificacoesSPIQModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompEspecificacoesSPIQModel());

    _model.qntPessoasSPIQTextController ??=
        TextEditingController(text: FFAppState().stateSSAcompleta.vtQntPessoas);
    _model.qntPessoasSPIQFocusNode ??= FocusNode();

    _model.cargaEstruturaTextController ??= TextEditingController(
        text: FFAppState().stateSSAcompleta.vtCargaEstrutura);
    _model.cargaEstruturaFocusNode ??= FocusNode();

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Text(
                            'Tipo de Escada',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            final listtipoEscadaCol = FFAppState()
                                .configItensSelecionaveisVT
                                .where((e) => e.fkIdCategoria == 3)
                                .toList();

                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(listtipoEscadaCol.length,
                                  (listtipoEscadaColIndex) {
                                final listtipoEscadaColItem =
                                    listtipoEscadaCol[listtipoEscadaColIndex];
                                return CheckboxItenSelecionadoWidget(
                                  key: Key(
                                      'Keyefh_${listtipoEscadaColIndex}_of_${listtipoEscadaCol.length}'),
                                  title: listtipoEscadaColItem.nomeItem,
                                  typeMode: widget.typeMode!,
                                  idItemSelecinado:
                                      listtipoEscadaColItem.idItem,
                                );
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Text(
                            'Tipo de ancoragem da estrutura para SPIQ',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            final listancoragemCol = FFAppState()
                                .configItensSelecionaveisVT
                                .where((e) => e.fkIdCategoria == 4)
                                .toList();

                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(listancoragemCol.length,
                                  (listancoragemColIndex) {
                                final listancoragemColItem =
                                    listancoragemCol[listancoragemColIndex];
                                return CheckboxItenSelecionadoWidget(
                                  key: Key(
                                      'Keyh3g_${listancoragemColIndex}_of_${listancoragemCol.length}'),
                                  title: listancoragemColItem.nomeItem,
                                  typeMode: widget.typeMode!,
                                  idItemSelecinado: listancoragemColItem.idItem,
                                );
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Text(
                            'Especificações do elemento de ligação',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            final listespecificacoesLigacoes = FFAppState()
                                .configItensSelecionaveisVT
                                .where((e) => e.fkIdCategoria == 6)
                                .toList();

                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  listespecificacoesLigacoes.length,
                                  (listespecificacoesLigacoesIndex) {
                                final listespecificacoesLigacoesItem =
                                    listespecificacoesLigacoes[
                                        listespecificacoesLigacoesIndex];
                                return CheckboxItenSelecionadoWidget(
                                  key: Key(
                                      'Keygkp_${listespecificacoesLigacoesIndex}_of_${listespecificacoesLigacoes.length}'),
                                  title:
                                      listespecificacoesLigacoesItem.nomeItem,
                                  typeMode: widget.typeMode!,
                                  idItemSelecinado:
                                      listespecificacoesLigacoesItem.idItem,
                                );
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ].divide(SizedBox(width: 28.0)),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Text(
                            'Tipo de Equipamento Predominante',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            final listTipoEquipamentos = FFAppState()
                                .configItensSelecionaveisVT
                                .where((e) => e.fkIdCategoria == 5)
                                .toList();

                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children:
                                  List.generate(listTipoEquipamentos.length,
                                      (listTipoEquipamentosIndex) {
                                final listTipoEquipamentosItem =
                                    listTipoEquipamentos[
                                        listTipoEquipamentosIndex];
                                return Material(
                                  color: Colors.transparent,
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                    child: CheckboxListTile(
                                      value: _model.checkboxListTileValueMap[
                                              listTipoEquipamentosItem] ??=
                                          FFAppState()
                                              .stateSSAcompleta
                                              .vtItensSelecionadosSINGLE
                                              .contains(listTipoEquipamentosItem
                                                  .idItem),
                                      onChanged: ((widget.typeMode ==
                                                  WidgetTypeMode.view) ||
                                              ((_model.idTipoEquipamento !=
                                                      0) &&
                                                  (listTipoEquipamentosItem
                                                          .idItem !=
                                                      _model
                                                          .idTipoEquipamento)))
                                          ? null
                                          : (newValue) async {
                                              safeSetState(() => _model
                                                          .checkboxListTileValueMap[
                                                      listTipoEquipamentosItem] =
                                                  newValue!);
                                              if (newValue!) {
                                                if (_model.idTipoEquipamento !=
                                                    listTipoEquipamentosItem
                                                        .idItem) {
                                                  // removeAll
                                                  FFAppState()
                                                      .updateStateSSAcompletaStruct(
                                                    (e) => e
                                                      ..updateVtItensSelecionadosSINGLE(
                                                        (e) => e.remove(_model
                                                            .idTipoEquipamento),
                                                      ),
                                                  );
                                                  safeSetState(() {});
                                                }
                                                _model.idTipoEquipamento =
                                                    listTipoEquipamentosItem
                                                        .idItem;
                                                safeSetState(() {});
                                                // setState
                                                FFAppState()
                                                    .updateStateSSAcompletaStruct(
                                                  (e) => e
                                                    ..updateVtItensSelecionadosSINGLE(
                                                      (e) => e.add(
                                                          listTipoEquipamentosItem
                                                              .idItem),
                                                    ),
                                                );
                                                safeSetState(() {});
                                              } else {
                                                FFAppState()
                                                    .updateStateSSAcompletaStruct(
                                                  (e) => e
                                                    ..updateVtItensSelecionadosSINGLE(
                                                      (e) => e.remove(
                                                          listTipoEquipamentosItem
                                                              .idItem),
                                                    ),
                                                );
                                                safeSetState(() {});
                                                _model.idTipoEquipamento = 0;
                                                safeSetState(() {});
                                              }
                                            },
                                      title: Text(
                                        listTipoEquipamentosItem.nomeItem,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .fontStyle,
                                              ),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontStyle,
                                            ),
                                      ),
                                      tileColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      checkColor: ((widget.typeMode ==
                                                  WidgetTypeMode.view) ||
                                              ((_model.idTipoEquipamento !=
                                                      0) &&
                                                  (listTipoEquipamentosItem
                                                          .idItem !=
                                                      _model
                                                          .idTipoEquipamento)))
                                          ? FFAppState()
                                                  .stateSSAcompleta
                                                  .vtItensSelecionadosSINGLE
                                                  .contains(
                                                      listTipoEquipamentosItem
                                                          .idItem)
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .accent4
                                          : FlutterFlowTheme.of(context).info,
                                      dense: false,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12.0, 0.0, 12.0, 0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Quantidade de pessoas na estrutura para SPIQ',
                              style: FlutterFlowTheme.of(context)
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
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                            ),
                            Container(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.qntPessoasSPIQTextController,
                                focusNode: _model.qntPessoasSPIQFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.qntPessoasSPIQTextController',
                                  Duration(milliseconds: 0),
                                  () async {
                                    FFAppState().updateStateSSAcompletaStruct(
                                      (e) => e
                                        ..vtQntPessoas = _model
                                            .qntPessoasSPIQTextController.text,
                                    );
                                    safeSetState(() {});
                                  },
                                ),
                                autofocus: false,
                                readOnly:
                                    widget.typeMode == WidgetTypeMode.view,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.lato(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.lato(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  hoverColor:
                                      widget.typeMode == WidgetTypeMode.view
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : Color(0x01000000),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.lato(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                keyboardType: TextInputType.phone,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .qntPessoasSPIQTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                        if (FFAppState()
                                .stateSSAcompleta
                                .vtItensSelecionadosSINGLE
                                .contains(FFAppState()
                                    .stateSSAcompleta
                                    .vtItensSelecionadosSINGLE
                                    .where((e) => (e == 14) || (e == 16))
                                    .toList()
                                    .firstOrNull) ==
                            true)
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Carga na estrutura (pau de carga ou escoramento)',
                                style: FlutterFlowTheme.of(context)
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
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                              ),
                              Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller:
                                      _model.cargaEstruturaTextController,
                                  focusNode: _model.cargaEstruturaFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.cargaEstruturaTextController',
                                    Duration(milliseconds: 0),
                                    () async {
                                      FFAppState().updateStateSSAcompletaStruct(
                                        (e) => e
                                          ..vtCargaEstrutura = _model
                                              .cargaEstruturaTextController
                                              .text,
                                      );
                                      safeSetState(() {});
                                    },
                                  ),
                                  autofocus: false,
                                  readOnly:
                                      widget.typeMode == WidgetTypeMode.view,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.lato(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.lato(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    hoverColor:
                                        widget.typeMode == WidgetTypeMode.view
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : Color(0x01000000),
                                  ),
                                  style: FlutterFlowTheme.of(context)
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
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model
                                      .cargaEstruturaTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                      ].divide(SizedBox(height: 24.0)),
                    ),
                  ),
                ].divide(SizedBox(width: 28.0)),
              ),
            ].divide(SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}

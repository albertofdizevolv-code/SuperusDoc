import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'select_drop_down_projeto_model.dart';
export 'select_drop_down_projeto_model.dart';

class SelectDropDownProjetoWidget extends StatefulWidget {
  const SelectDropDownProjetoWidget({super.key});

  @override
  State<SelectDropDownProjetoWidget> createState() =>
      _SelectDropDownProjetoWidgetState();
}

class _SelectDropDownProjetoWidgetState
    extends State<SelectDropDownProjetoWidget> {
  late SelectDropDownProjetoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectDropDownProjetoModel());

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

    return Flex(
      direction: Axis.horizontal,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: FutureBuilder<List<ProjetoRow>>(
            future: ProjetoTable().queryRows(
              queryFn: (q) => q.eqOrNull(
                'empresa_ref',
                FFAppState().configEmpresaSelecionada.uidEmpresa,
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
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }
              List<ProjetoRow> dropDownProjetoProjetoRowList = snapshot.data!;

              return FlutterFlowDropDown<int>(
                controller: _model.dropDownProjetoValueController ??=
                    FormFieldController<int>(
                  _model.dropDownProjetoValue ??=
                      FFAppState().configProjetoSelecionado.hasIdProjeto()
                          ? FFAppState().configProjetoSelecionado.idProjeto
                          : 0,
                ),
                options: List<int>.from(dropDownProjetoProjetoRowList
                    .map((e) => e.idProjeto)
                    .toList()),
                optionLabels:
                    dropDownProjetoProjetoRowList.map((e) => e.nomeOp).toList(),
                onChanged: (val) async {
                  safeSetState(() => _model.dropDownProjetoValue = val);
                  FFAppState().configProjetoSelecionado =
                      CfProjetoSelecionadoStruct(
                    idProjeto: dropDownProjetoProjetoRowList
                        .where(
                            (e) => e.idProjeto == _model.dropDownProjetoValue)
                        .toList()
                        .firstOrNull
                        ?.idProjeto,
                    nomeOp: dropDownProjetoProjetoRowList
                        .where(
                            (e) => e.idProjeto == _model.dropDownProjetoValue)
                        .toList()
                        .firstOrNull
                        ?.nomeOp,
                    codigoCentroCusto: dropDownProjetoProjetoRowList
                        .where(
                            (e) => e.idProjeto == _model.dropDownProjetoValue)
                        .toList()
                        .firstOrNull
                        ?.codigoCentroCusto,
                    clienteOp: dropDownProjetoProjetoRowList
                        .where(
                            (e) => e.idProjeto == _model.dropDownProjetoValue)
                        .toList()
                        .firstOrNull
                        ?.clienteOp,
                    enderecoOp: dropDownProjetoProjetoRowList
                        .where(
                            (e) => e.idProjeto == _model.dropDownProjetoValue)
                        .toList()
                        .firstOrNull
                        ?.enderecoOp,
                    gestorOp: dropDownProjetoProjetoRowList
                        .where(
                            (e) => e.idProjeto == _model.dropDownProjetoValue)
                        .toList()
                        .firstOrNull
                        ?.gestorOp,
                    statusOp: dropDownProjetoProjetoRowList
                        .where(
                            (e) => e.idProjeto == _model.dropDownProjetoValue)
                        .toList()
                        .firstOrNull
                        ?.statusOp,
                    tipoLoc: dropDownProjetoProjetoRowList
                        .where(
                            (e) => e.idProjeto == _model.dropDownProjetoValue)
                        .toList()
                        .firstOrNull
                        ?.tipoLoc,
                    revalidacao: dropDownProjetoProjetoRowList
                        .where(
                            (e) => e.idProjeto == _model.dropDownProjetoValue)
                        .toList()
                        .firstOrNull
                        ?.revalidacao,
                    prazo: dropDownProjetoProjetoRowList
                        .where(
                            (e) => e.idProjeto == _model.dropDownProjetoValue)
                        .toList()
                        .firstOrNull
                        ?.prazo,
                    carencia: dropDownProjetoProjetoRowList
                        .where(
                            (e) => e.idProjeto == _model.dropDownProjetoValue)
                        .toList()
                        .firstOrNull
                        ?.carencia,
                    localEstoque: dropDownProjetoProjetoRowList
                        .where(
                            (e) => e.idProjeto == _model.dropDownProjetoValue)
                        .toList()
                        .firstOrNull
                        ?.localEstoque,
                    frequanciaInv: dropDownProjetoProjetoRowList
                        .where(
                            (e) => e.idProjeto == _model.dropDownProjetoValue)
                        .toList()
                        .firstOrNull
                        ?.frequanciaInv,
                    saldoInicial: dropDownProjetoProjetoRowList
                        .where(
                            (e) => e.idProjeto == _model.dropDownProjetoValue)
                        .toList()
                        .firstOrNull
                        ?.saldoInicial,
                    empresaRef: dropDownProjetoProjetoRowList
                        .where(
                            (e) => e.idProjeto == _model.dropDownProjetoValue)
                        .toList()
                        .firstOrNull
                        ?.empresaRef,
                  );
                  safeSetState(() {});
                },
                width: 200.0,
                height: 40.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.lato(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                hintText: 'Selecione o projeto',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).accent4,
                borderWidth: 0.0,
                borderRadius: 6.0,
                margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                hidesUnderline: true,
                isOverButton: false,
                isSearchable: false,
                isMultiSelect: false,
              );
            },
          ),
        ),
        Expanded(
          child: FutureBuilder<List<SubprojetoRow>>(
            future: SubprojetoTable().queryRows(
              queryFn: (q) => q.eqOrNull(
                'id_projeto',
                _model.dropDownProjetoValue,
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
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }
              List<SubprojetoRow> dropDownSubProjetoSubprojetoRowList =
                  snapshot.data!;

              return FlutterFlowDropDown<int>(
                controller: _model.dropDownSubProjetoValueController ??=
                    FormFieldController<int>(
                  _model.dropDownSubProjetoValue ??= 0,
                ),
                options: List<int>.from(dropDownSubProjetoSubprojetoRowList
                    .map((e) => e.idSubprojeto)
                    .toList()),
                optionLabels: dropDownSubProjetoSubprojetoRowList
                    .map((e) => e.nomeSub)
                    .withoutNulls
                    .toList(),
                onChanged: (val) =>
                    safeSetState(() => _model.dropDownSubProjetoValue = val),
                width: 200.0,
                height: 40.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.lato(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                hintText: 'Selecione o subprojeto',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).accent4,
                borderWidth: 0.0,
                borderRadius: 6.0,
                margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                hidesUnderline: true,
                isOverButton: false,
                isSearchable: false,
                isMultiSelect: false,
              );
            },
          ),
        ),
      ].divide(true ? SizedBox(width: 12.0) : SizedBox(height: 12.0)),
    );
  }
}

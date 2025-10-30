import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/programacao/components/comp_dadosdo_efetivo/comp_dadosdo_efetivo_widget.dart';
import '/pages/programacao/components/comp_form/comp_form_widget.dart';
import '/pages/programacao/components/comp_listade_peas/comp_listade_peas_widget.dart';
import '/pages/programacao/components/comp_resumode_producao/comp_resumode_producao_widget.dart';
import 'u_i_programacao_widget.dart' show UIProgramacaoWidget;
import 'package:flutter/material.dart';

class UIProgramacaoModel extends FlutterFlowModel<UIProgramacaoWidget> {
  ///  Local state fields for this component.

  List<int> listDeleteToUpload = [];
  void addToListDeleteToUpload(int item) => listDeleteToUpload.add(item);
  void removeFromListDeleteToUpload(int item) =>
      listDeleteToUpload.remove(item);
  void removeAtIndexFromListDeleteToUpload(int index) =>
      listDeleteToUpload.removeAt(index);
  void insertAtIndexInListDeleteToUpload(int index, int item) =>
      listDeleteToUpload.insert(index, item);
  void updateListDeleteToUploadAtIndex(int index, Function(int) updateFn) =>
      listDeleteToUpload[index] = updateFn(listDeleteToUpload[index]);

  ///  State fields for stateful widgets in this component.

  // Model for comp_form component.
  late CompFormModel compFormModel;
  // Model for Comp_DadosdoEfetivo component.
  late CompDadosdoEfetivoModel compDadosdoEfetivoModel;
  // Model for Comp_ListadePeas component.
  late CompListadePeasModel compListadePeasModel;
  // Stores action output result for [Backend Call - Query Rows] action in Comp_ListadePeas widget.
  List<VwEstoqueConsultaRow>? outEstoque;
  // Model for Comp_ResumodeProducao component.
  late CompResumodeProducaoModel compResumodeProducaoModel;
  // Stores action output result for [Backend Call - Insert Row] action in create widget.
  ProgramacaoRow? outNewProgramacao;
  // Stores action output result for [Backend Call - Update Row(s)] action in edit widget.
  List<ProgramacaoRow>? outUpdateProgramacao;

  @override
  void initState(BuildContext context) {
    compFormModel = createModel(context, () => CompFormModel());
    compDadosdoEfetivoModel =
        createModel(context, () => CompDadosdoEfetivoModel());
    compListadePeasModel = createModel(context, () => CompListadePeasModel());
    compResumodeProducaoModel =
        createModel(context, () => CompResumodeProducaoModel());
  }

  @override
  void dispose() {
    compFormModel.dispose();
    compDadosdoEfetivoModel.dispose();
    compListadePeasModel.dispose();
    compResumodeProducaoModel.dispose();
  }

  /// Action blocks.
  Future loopEfetivo(BuildContext context) async {
    List<EquipeVisitaRow>? outEquipe;

    if (widget!.typemode == WidgetTypeMode.edit) {
      outEquipe = await EquipeVisitaTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'visita_tec_ref',
          FFAppState().stateSSAcompleta.fkIdVisitaTecnica,
        ),
      );
      listDeleteToUpload =
          outEquipe.map((e) => e.id).toList().toList().cast<int>();
      while (listDeleteToUpload.length >= 1) {
        await EquipeVisitaTable().delete(
          matchingRows: (rows) => rows.eqOrNull(
            'id',
            listDeleteToUpload.firstOrNull,
          ),
        );
        removeFromListDeleteToUpload(listDeleteToUpload.firstOrNull!);
      }
    }
    while (FFAppState().stateSSAcompleta.prDadosEfetivo.length >= 1) {
      await EquipeVisitaTable().insert({
        'created_at': supaSerialize<DateTime>(getCurrentTimestamp),
        'visita_tec_ref': FFAppState().stateSSAcompleta.fkIdVisitaTecnica,
        'funcionario_ref':
            FFAppState().stateSSAcompleta.prDadosEfetivo.firstOrNull?.fkIdUser,
        'hora_inicio': supaSerialize<PostgresTime>(PostgresTime(FFAppState()
            .stateSSAcompleta
            .prDadosEfetivo
            .firstOrNull
            ?.horarioInicio)),
        'hora_fim': supaSerialize<PostgresTime>(PostgresTime(FFAppState()
            .stateSSAcompleta
            .prDadosEfetivo
            .firstOrNull
            ?.horaTermino)),
        'horas_totais': FFAppState()
            .stateSSAcompleta
            .prDadosEfetivo
            .firstOrNull
            ?.horasTotais,
      });
      FFAppState().updateStateSSAcompletaStruct(
        (e) => e
          ..updatePrDadosEfetivo(
            (e) => e.remove(
                FFAppState().stateSSAcompleta.prDadosEfetivo.firstOrNull),
          ),
      );
    }
  }

  Future loopListaPecasProgramacao(
    BuildContext context, {
    required int? fkIdProgramacao,
  }) async {
    List<ListaPecasProgramacaoRow>? outListaPecasP;

    if (widget!.typemode == WidgetTypeMode.edit) {
      outListaPecasP = await ListaPecasProgramacaoTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'programacao_ref',
          FFAppState().stateSSAcompleta.fkIdProgramacao,
        ),
      );
      listDeleteToUpload =
          outListaPecasP.map((e) => e.id).toList().toList().cast<int>();
      while (listDeleteToUpload.length >= 1) {
        await ListaPecasProgramacaoTable().delete(
          matchingRows: (rows) => rows.eqOrNull(
            'id',
            listDeleteToUpload.firstOrNull,
          ),
        );
        removeFromListDeleteToUpload(listDeleteToUpload.firstOrNull!);
      }
    }
    while (FFAppState().stateSSAcompleta.prListaPecas.length >= 1) {
      await ListaPecasProgramacaoTable().insert({
        'created_at': supaSerialize<DateTime>(getCurrentTimestamp),
        'programacao_ref': fkIdProgramacao,
        'material_ref':
            FFAppState().stateSSAcompleta.prListaPecas.firstOrNull?.id,
        'quantidade_reservada':
            FFAppState().stateSSAcompleta.prListaPecas.firstOrNull?.quantidade,
      });
      FFAppState().updateStateSSAcompletaStruct(
        (e) => e
          ..updatePrListaPecas(
            (e) => e
                .remove(FFAppState().stateSSAcompleta.prListaPecas.firstOrNull),
          ),
      );
    }
  }
}

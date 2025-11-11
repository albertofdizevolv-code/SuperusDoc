import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visita_tecnica/componentes/comentarios/comentarios_widget.dart';
import '/pages/visita_tecnica/componentes/comp_card_row/comp_card_row_widget.dart';
import '/pages/visita_tecnica/componentes/comp_especificacoes_s_p_i_q/comp_especificacoes_s_p_i_q_widget.dart';
import '/pages/visita_tecnica/componentes/comp_nivel_piso/comp_nivel_piso_widget.dart';
import '/pages/visita_tecnica/componentes/comp_signature/comp_signature_widget.dart';
import '/pages/visita_tecnica/componentes/comp_trecho/comp_trecho_widget.dart';
import '/pages/visita_tecnica/componentes/croqui/croqui_widget.dart';
import '/pages/visita_tecnica/componentes/lista_pecas/lista_pecas_widget.dart';
import '/pages/visita_tecnica/componentes/registro_de_vista/registro_de_vista_widget.dart';
import 'ui_visita_tecnica_widget.dart' show UiVisitaTecnicaWidget;
import 'package:flutter/material.dart';

class UiVisitaTecnicaModel extends FlutterFlowModel<UiVisitaTecnicaWidget> {
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

  // Model for RegistroDeVista component.
  late RegistroDeVistaModel registroDeVistaModel;
  // Model for Comp_CardRow component.
  late CompCardRowModel compCardRowModel1;
  // Model for Comp_CardRow component.
  late CompCardRowModel compCardRowModel2;
  // Model for croqui component.
  late CroquiModel croquiModel;
  bool isDataUploading_croquiUploadData023 = false;
  FFUploadedFile uploadedLocalFile_croquiUploadData023 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Model for Comp_EspecificacoesSPIQ component.
  late CompEspecificacoesSPIQModel compEspecificacoesSPIQModel;
  // Model for Comp_Trecho component.
  late CompTrechoModel compTrechoModel;
  // Model for Comp_NivelPiso component.
  late CompNivelPisoModel compNivelPisoModel;
  // Model for listaPecas component.
  late ListaPecasModel listaPecasModel;
  // Model for Comp_Signature component.
  late CompSignatureModel compSignatureModel;
  // Model for comentarios component.
  late ComentariosModel comentariosModel;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<VisitaTecnicaRow>? outUpdateVisitaTecnica;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  VisitaTecnicaRow? outNewVisitaTecnica;

  @override
  void initState(BuildContext context) {
    registroDeVistaModel = createModel(context, () => RegistroDeVistaModel());
    compCardRowModel1 = createModel(context, () => CompCardRowModel());
    compCardRowModel2 = createModel(context, () => CompCardRowModel());
    croquiModel = createModel(context, () => CroquiModel());
    compEspecificacoesSPIQModel =
        createModel(context, () => CompEspecificacoesSPIQModel());
    compTrechoModel = createModel(context, () => CompTrechoModel());
    compNivelPisoModel = createModel(context, () => CompNivelPisoModel());
    listaPecasModel = createModel(context, () => ListaPecasModel());
    compSignatureModel = createModel(context, () => CompSignatureModel());
    comentariosModel = createModel(context, () => ComentariosModel());
  }

  @override
  void dispose() {
    registroDeVistaModel.dispose();
    compCardRowModel1.dispose();
    compCardRowModel2.dispose();
    croquiModel.dispose();
    compEspecificacoesSPIQModel.dispose();
    compTrechoModel.dispose();
    compNivelPisoModel.dispose();
    listaPecasModel.dispose();
    compSignatureModel.dispose();
    comentariosModel.dispose();
  }

  /// Action blocks.
  Future loopNiveisPiso(
    BuildContext context, {
    required WidgetTypeMode? typemode,
    required int? fkVisitaTecnica,
  }) async {
    List<PisosRow>? outQueryPiso;

    if (typemode == WidgetTypeMode.edit) {
      outQueryPiso = await PisosTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'visita_tec_ref',
          fkVisitaTecnica,
        ),
      );
      listDeleteToUpload =
          outQueryPiso.map((e) => e.id).toList().toList().cast<int>();
      while (listDeleteToUpload.length >= 1) {
        await PisosTable().delete(
          matchingRows: (rows) => rows.eqOrNull(
            'id',
            listDeleteToUpload.firstOrNull,
          ),
        );
        removeFromListDeleteToUpload(listDeleteToUpload.firstOrNull!);
      }
    }
    while (FFAppState().stateSSAcompleta.vtNivelPiso.length >= 1) {
      await PisosTable().insert({
        'created_at': supaSerialize<DateTime>(getCurrentTimestamp),
        'nivel': valueOrDefault<double>(
          FFAppState().stateSSAcompleta.vtNivelPiso.firstOrNull?.nivelPiso,
          0.0,
        ),
        'elevacao': valueOrDefault<double>(
          FFAppState().stateSSAcompleta.vtNivelPiso.firstOrNull?.elevacao,
          0.0,
        ),
        'comp': valueOrDefault<double>(
          FFAppState().stateSSAcompleta.vtNivelPiso.firstOrNull?.comprimento,
          0.0,
        ),
        'larg': valueOrDefault<double>(
          FFAppState().stateSSAcompleta.vtNivelPiso.firstOrNull?.largura,
          0.0,
        ),
        'area_descontar': valueOrDefault<double>(
          FFAppState().stateSSAcompleta.vtNivelPiso.firstOrNull?.areaDescontar,
          0.0,
        ),
        'area_nivel': valueOrDefault<double>(
          FFAppState().stateSSAcompleta.vtNivelPiso.firstOrNull?.areaNivel,
          0.0,
        ),
        'visita_tec_ref': fkVisitaTecnica,
      });
      FFAppState().updateStateSSAcompletaStruct(
        (e) => e
          ..updateVtNivelPiso(
            (e) =>
                e.remove(FFAppState().stateSSAcompleta.vtNivelPiso.firstOrNull),
          ),
      );
    }
  }

  Future loopTrechos(
    BuildContext context, {
    required WidgetTypeMode? typemode,
    required int? fkVisitaTecnica,
  }) async {
    List<TrechosRow>? outTrecho;

    if (typemode == WidgetTypeMode.edit) {
      outTrecho = await TrechosTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'visita_tec_ref',
          fkVisitaTecnica,
        ),
      );
      listDeleteToUpload =
          outTrecho.map((e) => e.id).toList().toList().cast<int>();
      while (listDeleteToUpload.length >= 1) {
        await TrechosTable().delete(
          matchingRows: (rows) => rows.eqOrNull(
            'id',
            listDeleteToUpload.firstOrNull,
          ),
        );
        removeFromListDeleteToUpload(listDeleteToUpload.firstOrNull!);
      }
    }
    while (FFAppState().stateSSAcompleta.vtTrecho.length >= 1) {
      await TrechosTable().insert({
        'created_at': supaSerialize<DateTime>(getCurrentTimestamp),
        'visita_tec_ref': fkVisitaTecnica,
        'trecho': valueOrDefault<String>(
          FFAppState().stateSSAcompleta.vtTrecho.firstOrNull?.trecho,
          '0',
        ),
        'tipo': valueOrDefault<String>(
          FFAppState().stateSSAcompleta.vtTrecho.firstOrNull?.tipoTrecho,
          '0',
        ),
        'comp': valueOrDefault<double>(
          FFAppState().stateSSAcompleta.vtTrecho.firstOrNull?.comprimento,
          0.0,
        ),
        'alt': valueOrDefault<double>(
          FFAppState().stateSSAcompleta.vtTrecho.firstOrNull?.altura,
          0.0,
        ),
        'larg': valueOrDefault<double>(
          FFAppState().stateSSAcompleta.vtTrecho.firstOrNull?.largura,
          0.0,
        ),
        'v_desc': valueOrDefault<double>(
          FFAppState().stateSSAcompleta.vtTrecho.firstOrNull?.descontar,
          0.0,
        ),
        'v_total': valueOrDefault<double>(
          FFAppState().stateSSAcompleta.vtTrecho.firstOrNull?.volumeTotal,
          0.0,
        ),
      });
      FFAppState().updateStateSSAcompletaStruct(
        (e) => e
          ..updateVtTrecho(
            (e) => e.remove(FFAppState().stateSSAcompleta.vtTrecho.firstOrNull),
          ),
      );
    }
  }

  Future loopListaPecasVT(
    BuildContext context, {
    required WidgetTypeMode? type,
    required int? fkVisitaTecnica,
  }) async {
    List<ListaPecasVTRow>? outQueryListaPecas;

    if (type == WidgetTypeMode.edit) {
      outQueryListaPecas = await ListaPecasVTTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'visitaTec',
          fkVisitaTecnica,
        ),
      );
      listDeleteToUpload =
          outQueryListaPecas.map((e) => e.id).toList().toList().cast<int>();
      while (listDeleteToUpload.length >= 1) {
        await ListaPecasVTTable().delete(
          matchingRows: (rows) => rows.eqOrNull(
            'id',
            listDeleteToUpload.firstOrNull,
          ),
        );
        removeFromListDeleteToUpload(listDeleteToUpload.firstOrNull!);
      }
    }
    while (FFAppState().stateSSAcompleta.vtListaPecas.length >= 1) {
      await ListaPecasVTTable().insert({
        'created_at': supaSerialize<DateTime>(getCurrentTimestamp),
        'visitaTec': fkVisitaTecnica,
        'quantidadePrevista': valueOrDefault<int>(
          FFAppState().stateSSAcompleta.vtListaPecas.firstOrNull?.quantidade,
          0,
        ),
        'Material': valueOrDefault<int>(
          FFAppState().stateSSAcompleta.vtListaPecas.firstOrNull?.idMaterial,
          0,
        ),
      });
      FFAppState().updateStateSSAcompletaStruct(
        (e) => e
          ..updateVtListaPecas(
            (e) => e
                .remove(FFAppState().stateSSAcompleta.vtListaPecas.firstOrNull),
          ),
      );
    }
  }

  Future loopItensSelecionados(
    BuildContext context, {
    required WidgetTypeMode? typemode,
    required int? fkVisitaTecnica,
  }) async {
    List<VisitaTecnicaItensSelecionadosRow>? outItensSelecionados;

    if (typemode == WidgetTypeMode.edit) {
      // Primeiro apagamos todos itens selecionados, depois salvamos novamente
      outItensSelecionados =
          await VisitaTecnicaItensSelecionadosTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'fk_id_visita',
          fkVisitaTecnica,
        ),
      );
      listDeleteToUpload = outItensSelecionados
          .map((e) => e.idSelecao)
          .toList()
          .toList()
          .cast<int>();
      while (listDeleteToUpload.length >= 1) {
        await VisitaTecnicaItensSelecionadosTable().delete(
          matchingRows: (rows) => rows.eqOrNull(
            'id_selecao',
            listDeleteToUpload.firstOrNull,
          ),
        );
        removeFromListDeleteToUpload(listDeleteToUpload.firstOrNull!);
      }
    }
    while (
        FFAppState().stateSSAcompleta.vtItensSelecionadosSINGLE.firstOrNull! >=
            1) {
      await VisitaTecnicaItensSelecionadosTable().insert({
        'fk_id_visita': fkVisitaTecnica,
        'data_selecao': supaSerialize<DateTime>(getCurrentTimestamp),
        'fk_id_item':
            FFAppState().stateSSAcompleta.vtItensSelecionadosSINGLE.firstOrNull,
      });
      FFAppState().updateStateSSAcompletaStruct(
        (e) => e
          ..updateVtItensSelecionadosSINGLE(
            (e) => e.remove(FFAppState()
                .stateSSAcompleta
                .vtItensSelecionadosSINGLE
                .firstOrNull),
          ),
      );
    }
  }
}

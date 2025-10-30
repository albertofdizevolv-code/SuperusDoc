import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/execucao/componentes/comp_anexar_arquivo/comp_anexar_arquivo_widget.dart';
import '/pages/execucao/componentes/comp_captura_imagens/comp_captura_imagens_widget.dart';
import '/pages/execucao/componentes/comp_interferencia/comp_interferencia_widget.dart';
import '/pages/execucao/componentes/comp_lista_pecas_ex/comp_lista_pecas_ex_widget.dart';
import '/pages/execucao/componentes/comp_nivel_piso_ex/comp_nivel_piso_ex_widget.dart';
import '/pages/execucao/componentes/comp_step_rounded/comp_step_rounded_widget.dart';
import '/pages/execucao/componentes/comp_trecho_ex/comp_trecho_ex_widget.dart';
import '/pages/programacao/components/comp_dadosdo_efetivo/comp_dadosdo_efetivo_widget.dart';
import '/pages/ssa/componentes/comp_obs_geraisda_s_s_a/comp_obs_geraisda_s_s_a_widget.dart';
import 'u_i_form_preenchimento_widget.dart' show UIFormPreenchimentoWidget;
import 'package:flutter/material.dart';

class UIFormPreenchimentoModel
    extends FlutterFlowModel<UIFormPreenchimentoWidget> {
  ///  Local state fields for this component.

  int statusPageComponent = 1;

  List<FmTrechoStruct> trecho = [];
  void addToTrecho(FmTrechoStruct item) => trecho.add(item);
  void removeFromTrecho(FmTrechoStruct item) => trecho.remove(item);
  void removeAtIndexFromTrecho(int index) => trecho.removeAt(index);
  void insertAtIndexInTrecho(int index, FmTrechoStruct item) =>
      trecho.insert(index, item);
  void updateTrechoAtIndex(int index, Function(FmTrechoStruct) updateFn) =>
      trecho[index] = updateFn(trecho[index]);

  List<FmPisoStruct> piso = [];
  void addToPiso(FmPisoStruct item) => piso.add(item);
  void removeFromPiso(FmPisoStruct item) => piso.remove(item);
  void removeAtIndexFromPiso(int index) => piso.removeAt(index);
  void insertAtIndexInPiso(int index, FmPisoStruct item) =>
      piso.insert(index, item);
  void updatePisoAtIndex(int index, Function(FmPisoStruct) updateFn) =>
      piso[index] = updateFn(piso[index]);

  List<FmDadosEfetivoStruct> efetivo = [];
  void addToEfetivo(FmDadosEfetivoStruct item) => efetivo.add(item);
  void removeFromEfetivo(FmDadosEfetivoStruct item) => efetivo.remove(item);
  void removeAtIndexFromEfetivo(int index) => efetivo.removeAt(index);
  void insertAtIndexInEfetivo(int index, FmDadosEfetivoStruct item) =>
      efetivo.insert(index, item);
  void updateEfetivoAtIndex(
          int index, Function(FmDadosEfetivoStruct) updateFn) =>
      efetivo[index] = updateFn(efetivo[index]);

  List<FmListaPecasStruct> listaPecas = [];
  void addToListaPecas(FmListaPecasStruct item) => listaPecas.add(item);
  void removeFromListaPecas(FmListaPecasStruct item) => listaPecas.remove(item);
  void removeAtIndexFromListaPecas(int index) => listaPecas.removeAt(index);
  void insertAtIndexInListaPecas(int index, FmListaPecasStruct item) =>
      listaPecas.insert(index, item);
  void updateListaPecasAtIndex(
          int index, Function(FmListaPecasStruct) updateFn) =>
      listaPecas[index] = updateFn(listaPecas[index]);

  List<FmInterferenciaExecucaoStruct> interferencias = [];
  void addToInterferencias(FmInterferenciaExecucaoStruct item) =>
      interferencias.add(item);
  void removeFromInterferencias(FmInterferenciaExecucaoStruct item) =>
      interferencias.remove(item);
  void removeAtIndexFromInterferencias(int index) =>
      interferencias.removeAt(index);
  void insertAtIndexInInterferencias(
          int index, FmInterferenciaExecucaoStruct item) =>
      interferencias.insert(index, item);
  void updateInterferenciasAtIndex(
          int index, Function(FmInterferenciaExecucaoStruct) updateFn) =>
      interferencias[index] = updateFn(interferencias[index]);

  List<FFUploadedFile> imagensAntes = [];
  void addToImagensAntes(FFUploadedFile item) => imagensAntes.add(item);
  void removeFromImagensAntes(FFUploadedFile item) => imagensAntes.remove(item);
  void removeAtIndexFromImagensAntes(int index) => imagensAntes.removeAt(index);
  void insertAtIndexInImagensAntes(int index, FFUploadedFile item) =>
      imagensAntes.insert(index, item);
  void updateImagensAntesAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      imagensAntes[index] = updateFn(imagensAntes[index]);

  List<FFUploadedFile> imagensDepois = [];
  void addToImagensDepois(FFUploadedFile item) => imagensDepois.add(item);
  void removeFromImagensDepois(FFUploadedFile item) =>
      imagensDepois.remove(item);
  void removeAtIndexFromImagensDepois(int index) =>
      imagensDepois.removeAt(index);
  void insertAtIndexInImagensDepois(int index, FFUploadedFile item) =>
      imagensDepois.insert(index, item);
  void updateImagensDepoisAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      imagensDepois[index] = updateFn(imagensDepois[index]);

  ///  State fields for stateful widgets in this component.

  // Model for comp_Step_rounded component.
  late CompStepRoundedModel compStepRoundedModel1;
  // Model for comp_Step_rounded component.
  late CompStepRoundedModel compStepRoundedModel2;
  // Model for comp_Step_rounded component.
  late CompStepRoundedModel compStepRoundedModel3;
  // Model for comp_Step_rounded component.
  late CompStepRoundedModel compStepRoundedModel4;
  // Model for comp_Step_rounded component.
  late CompStepRoundedModel compStepRoundedModel5;
  // Model for comp_Step_rounded component.
  late CompStepRoundedModel compStepRoundedModel6;
  // Model for comp_Step_rounded component.
  late CompStepRoundedModel compStepRoundedModel7;
  // Model for comp_Step_rounded component.
  late CompStepRoundedModel compStepRoundedModel8;
  // Model for comp_Step_rounded component.
  late CompStepRoundedModel compStepRoundedModel9;
  // Model for comp_Step_rounded component.
  late CompStepRoundedModel compStepRoundedModel10;
  // State field(s) for Column widget.
  ScrollController? columnController;
  DateTime? datePicked;
  // Model for Comp_Trecho_ex component.
  late CompTrechoExModel compTrechoExModel;
  // Model for Comp_NivelPiso_ex component.
  late CompNivelPisoExModel compNivelPisoExModel;
  // Model for Comp_DadosdoEfetivo component.
  late CompDadosdoEfetivoModel compDadosdoEfetivoModel;
  // Model for comp_interferencia component.
  late CompInterferenciaModel compInterferenciaModel;
  // Model for Comp_ListaPecas_ex component.
  late CompListaPecasExModel compListaPecasExModel;
  // Model for comp_ObsGeraisdaSSA component.
  late CompObsGeraisdaSSAModel compObsGeraisdaSSAModel;
  // Model for comp_captura_imagens_antgas.
  late CompCapturaImagensModel compCapturaImagensAntgasModel;
  // Model for comp_captura_imagens_depois.
  late CompCapturaImagensModel compCapturaImagensDepoisModel;
  // Model for comp_anexar_arquivo component.
  late CompAnexarArquivoModel compAnexarArquivoModel;

  @override
  void initState(BuildContext context) {
    compStepRoundedModel1 = createModel(context, () => CompStepRoundedModel());
    compStepRoundedModel2 = createModel(context, () => CompStepRoundedModel());
    compStepRoundedModel3 = createModel(context, () => CompStepRoundedModel());
    compStepRoundedModel4 = createModel(context, () => CompStepRoundedModel());
    compStepRoundedModel5 = createModel(context, () => CompStepRoundedModel());
    compStepRoundedModel6 = createModel(context, () => CompStepRoundedModel());
    compStepRoundedModel7 = createModel(context, () => CompStepRoundedModel());
    compStepRoundedModel8 = createModel(context, () => CompStepRoundedModel());
    compStepRoundedModel9 = createModel(context, () => CompStepRoundedModel());
    compStepRoundedModel10 = createModel(context, () => CompStepRoundedModel());
    columnController = ScrollController();
    compTrechoExModel = createModel(context, () => CompTrechoExModel());
    compNivelPisoExModel = createModel(context, () => CompNivelPisoExModel());
    compDadosdoEfetivoModel =
        createModel(context, () => CompDadosdoEfetivoModel());
    compInterferenciaModel =
        createModel(context, () => CompInterferenciaModel());
    compListaPecasExModel = createModel(context, () => CompListaPecasExModel());
    compObsGeraisdaSSAModel =
        createModel(context, () => CompObsGeraisdaSSAModel());
    compCapturaImagensAntgasModel =
        createModel(context, () => CompCapturaImagensModel());
    compCapturaImagensDepoisModel =
        createModel(context, () => CompCapturaImagensModel());
    compAnexarArquivoModel =
        createModel(context, () => CompAnexarArquivoModel());
  }

  @override
  void dispose() {
    compStepRoundedModel1.dispose();
    compStepRoundedModel2.dispose();
    compStepRoundedModel3.dispose();
    compStepRoundedModel4.dispose();
    compStepRoundedModel5.dispose();
    compStepRoundedModel6.dispose();
    compStepRoundedModel7.dispose();
    compStepRoundedModel8.dispose();
    compStepRoundedModel9.dispose();
    compStepRoundedModel10.dispose();
    columnController?.dispose();
    compTrechoExModel.dispose();
    compNivelPisoExModel.dispose();
    compDadosdoEfetivoModel.dispose();
    compInterferenciaModel.dispose();
    compListaPecasExModel.dispose();
    compObsGeraisdaSSAModel.dispose();
    compCapturaImagensAntgasModel.dispose();
    compCapturaImagensDepoisModel.dispose();
    compAnexarArquivoModel.dispose();
  }

  /// Action blocks.
  Future addTrecho(
    BuildContext context, {
    required WidgetTypeMode? typemodeInBlock,
  }) async {
    if (typemodeInBlock == WidgetTypeMode.create) {
      for (int loop1Index = 0; loop1Index < trecho.length; loop1Index++) {
        final currentLoop1Item = trecho[loop1Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateExTrecho(
              (e) => e.add(FmTrechoStruct(
                fkInterno: widget!.fkid,
                trecho: currentLoop1Item.trecho,
                tipoTrecho: currentLoop1Item.tipoTrecho,
                comprimento: currentLoop1Item.comprimento,
                altura: currentLoop1Item.altura,
                largura: currentLoop1Item.largura,
                descontar: currentLoop1Item.descontar,
                volumeTotal: currentLoop1Item.volumeTotal,
              )),
            ),
        );
      }
    } else if (typemodeInBlock == WidgetTypeMode.edit) {
    } else if (typemodeInBlock == WidgetTypeMode.view) {
      for (int loop3Index = 0;
          loop3Index < FFAppState().stateSSAcompleta.exTrecho.length;
          loop3Index++) {
        final currentLoop3Item =
            FFAppState().stateSSAcompleta.exTrecho[loop3Index];
        addToTrecho(FmTrechoStruct(
          trecho: currentLoop3Item.trecho,
          tipoTrecho: currentLoop3Item.tipoTrecho,
          comprimento: currentLoop3Item.comprimento,
          altura: currentLoop3Item.altura,
          largura: currentLoop3Item.largura,
          descontar: currentLoop3Item.descontar,
          volumeTotal: currentLoop3Item.volumeTotal,
        ));
      }
    } else {
      for (int loop2Index = 0;
          loop2Index < FFAppState().stateSSAcompleta.vtTrecho.length;
          loop2Index++) {
        final currentLoop2Item =
            FFAppState().stateSSAcompleta.vtTrecho[loop2Index];
        addToTrecho(FmTrechoStruct(
          trecho: currentLoop2Item.trecho,
          tipoTrecho: currentLoop2Item.tipoTrecho,
          comprimento: currentLoop2Item.comprimento,
          altura: currentLoop2Item.altura,
          largura: currentLoop2Item.largura,
          descontar: currentLoop2Item.descontar,
          volumeTotal: currentLoop2Item.volumeTotal,
        ));
      }
    }
  }

  Future addPiso(
    BuildContext context, {
    required WidgetTypeMode? typemodeInBlock,
  }) async {
    if (typemodeInBlock == WidgetTypeMode.create) {
      for (int loop1Index = 0; loop1Index < piso.length; loop1Index++) {
        final currentLoop1Item = piso[loop1Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateExPiso(
              (e) => e.add(FmPisoStruct(
                fkInterno: widget!.fkid,
                nivelPiso: currentLoop1Item.nivelPiso,
                elevacao: currentLoop1Item.elevacao,
                comprimento: currentLoop1Item.comprimento,
                largura: currentLoop1Item.comprimento,
                areaDescontar: currentLoop1Item.areaDescontar,
                areaNivel: currentLoop1Item.areaNivel,
              )),
            ),
        );
      }
    } else if (typemodeInBlock == WidgetTypeMode.edit) {
    } else if (typemodeInBlock == WidgetTypeMode.view) {
      for (int loop3Index = 0;
          loop3Index < FFAppState().stateSSAcompleta.exPiso.length;
          loop3Index++) {
        final currentLoop3Item =
            FFAppState().stateSSAcompleta.exPiso[loop3Index];
        addToPiso(FmPisoStruct(
          nivelPiso: currentLoop3Item.nivelPiso,
          elevacao: currentLoop3Item.elevacao,
          comprimento: currentLoop3Item.comprimento,
          largura: currentLoop3Item.comprimento,
          areaDescontar: currentLoop3Item.areaDescontar,
          areaNivel: currentLoop3Item.areaNivel,
        ));
      }
    } else {
      for (int loop2Index = 0;
          loop2Index < FFAppState().stateSSAcompleta.vtNivelPiso.length;
          loop2Index++) {
        final currentLoop2Item =
            FFAppState().stateSSAcompleta.vtNivelPiso[loop2Index];
        addToPiso(FmPisoStruct(
          nivelPiso: currentLoop2Item.nivelPiso,
          elevacao: currentLoop2Item.elevacao,
          comprimento: currentLoop2Item.comprimento,
          largura: currentLoop2Item.comprimento,
          areaDescontar: currentLoop2Item.areaDescontar,
          areaNivel: currentLoop2Item.areaNivel,
        ));
      }
    }
  }

  Future addEfetivo(
    BuildContext context, {
    required WidgetTypeMode? typemodeInBlock,
  }) async {
    if (typemodeInBlock == WidgetTypeMode.create) {
      for (int loop1Index = 0; loop1Index < efetivo.length; loop1Index++) {
        final currentLoop1Item = efetivo[loop1Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateExDadosEfetivo(
              (e) => e.add(FmDadosEfetivoStruct(
                fkInterno: widget!.fkid,
                nome: currentLoop1Item.nome,
                funcao: currentLoop1Item.funcao,
                horarioInicio: currentLoop1Item.horarioInicio,
                horaTermino: currentLoop1Item.horaTermino,
                horasTotais: currentLoop1Item.horasTotais,
                fkIdUser: currentLoop1Item.fkIdUser,
              )),
            ),
        );
      }
    } else if (typemodeInBlock == WidgetTypeMode.edit) {
    } else if (typemodeInBlock == WidgetTypeMode.view) {
      for (int loop3Index = 0;
          loop3Index <
              FFAppState()
                  .stateSSAcompleta
                  .exDadosEfetivo
                  .where((e) => e.fkInterno == widget!.fkid)
                  .toList()
                  .length;
          loop3Index++) {
        final currentLoop3Item = FFAppState()
            .stateSSAcompleta
            .exDadosEfetivo
            .where((e) => e.fkInterno == widget!.fkid)
            .toList()[loop3Index];
        addToEfetivo(FmDadosEfetivoStruct(
          fkIdUser: currentLoop3Item.fkIdUser,
          nome: currentLoop3Item.nome,
          funcao: currentLoop3Item.funcao,
          horarioInicio: currentLoop3Item.horarioInicio,
          horaTermino: currentLoop3Item.horaTermino,
          horasTotais: currentLoop3Item.horasTotais,
        ));
      }
    } else {
      for (int loop2Index = 0;
          loop2Index < FFAppState().stateSSAcompleta.prDadosEfetivo.length;
          loop2Index++) {
        final currentLoop2Item =
            FFAppState().stateSSAcompleta.prDadosEfetivo[loop2Index];
        addToEfetivo(FmDadosEfetivoStruct(
          fkIdUser: currentLoop2Item.fkIdUser,
          nome: currentLoop2Item.nome,
          funcao: currentLoop2Item.funcao,
          horarioInicio: currentLoop2Item.horarioInicio,
          horaTermino: currentLoop2Item.horaTermino,
          horasTotais: currentLoop2Item.horasTotais,
        ));
      }
    }
  }

  Future addListaPecas(
    BuildContext context, {
    required WidgetTypeMode? typemodeInBlock,
  }) async {
    if (typemodeInBlock == WidgetTypeMode.create) {
      for (int loop1Index = 0; loop1Index < listaPecas.length; loop1Index++) {
        final currentLoop1Item = listaPecas[loop1Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateExListaPecas(
              (e) => e.add(FmListaPecasStruct(
                fkInterno: widget!.fkid,
                idMaterial: currentLoop1Item.idMaterial,
                codigo: currentLoop1Item.codigo,
                pecas: currentLoop1Item.pecas,
                peso: currentLoop1Item.peso,
                quantidade: currentLoop1Item.quantidade,
                tamanho: currentLoop1Item.tamanho,
              )),
            ),
        );
      }
    } else if (typemodeInBlock == WidgetTypeMode.edit) {
    } else if (typemodeInBlock == WidgetTypeMode.view) {
      for (int loop3Index = 0;
          loop3Index < FFAppState().stateSSAcompleta.exListaPecas.length;
          loop3Index++) {
        final currentLoop3Item =
            FFAppState().stateSSAcompleta.exListaPecas[loop3Index];
        addToListaPecas(FmListaPecasStruct(
          id: currentLoop3Item.id,
          idMaterial: currentLoop3Item.idMaterial,
          codigo: currentLoop3Item.codigo,
          pecas: currentLoop3Item.pecas,
          peso: currentLoop3Item.peso,
          quantidade: currentLoop3Item.quantidade,
          tamanho: currentLoop3Item.tamanho,
        ));
      }
    } else {
      for (int loop2Index = 0;
          loop2Index < FFAppState().stateSSAcompleta.prListaPecas.length;
          loop2Index++) {
        final currentLoop2Item =
            FFAppState().stateSSAcompleta.prListaPecas[loop2Index];
        addToListaPecas(FmListaPecasStruct(
          id: currentLoop2Item.id,
          idMaterial: currentLoop2Item.idMaterial,
          codigo: currentLoop2Item.codigo,
          pecas: currentLoop2Item.pecas,
          peso: currentLoop2Item.peso,
          quantidade: currentLoop2Item.quantidade,
          tamanho: currentLoop2Item.tamanho,
        ));
      }
    }
  }

  /// atenção: A opção para criar é utilizado para salvar, nesse caso utilizar o
  /// modo undefined para popular os dados iniciais
  Future addInterferencias(
    BuildContext context, {
    required WidgetTypeMode? typemodeInBlock,
  }) async {
    if (widget!.typemode == WidgetTypeMode.create) {
      for (int loop1Index = 0;
          loop1Index < interferencias.length;
          loop1Index++) {
        final currentLoop1Item = interferencias[loop1Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateExInterferencias(
              (e) => e.add(FmInterferenciaExecucaoStruct(
                fkInterno: widget!.fkid,
                descricao: currentLoop1Item.descricao,
                duracao: currentLoop1Item.duracao,
                efetivoAfetado: currentLoop1Item.efetivoAfetado,
                impactoHora: currentLoop1Item.impactoHora,
              )),
            ),
        );
      }
    } else if (typemodeInBlock == WidgetTypeMode.edit) {
    } else {
      for (int loop2Index = 0;
          loop2Index < FFAppState().stateSSAcompleta.exInterferencias.length;
          loop2Index++) {
        final currentLoop2Item =
            FFAppState().stateSSAcompleta.exInterferencias[loop2Index];
        addToInterferencias(FmInterferenciaExecucaoStruct(
          fkInterno: currentLoop2Item.fkInterno,
          descricao: currentLoop2Item.descricao,
          duracao: currentLoop2Item.duracao,
          efetivoAfetado: currentLoop2Item.efetivoAfetado,
          impactoHora: currentLoop2Item.impactoHora,
        ));
      }
    }
  }
}

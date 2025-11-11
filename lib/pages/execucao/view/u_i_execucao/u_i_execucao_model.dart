import '/components/tab_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/execucao/componentes/comp_anexar_arquivo/comp_anexar_arquivo_widget.dart';
import '/pages/execucao/componentes/comp_area_s_s_a_execucao/comp_area_s_s_a_execucao_widget.dart';
import '/pages/execucao/componentes/comp_captura_imagens/comp_captura_imagens_widget.dart';
import '/pages/execucao/componentes/comp_interferencia/comp_interferencia_widget.dart';
import '/pages/execucao/componentes/comp_lista_pecas_ex/comp_lista_pecas_ex_widget.dart';
import '/pages/execucao/componentes/comp_montagem/comp_montagem_widget.dart';
import '/pages/execucao/componentes/comp_nivel_piso_ex/comp_nivel_piso_ex_widget.dart';
import '/pages/execucao/componentes/comp_trecho_ex/comp_trecho_ex_widget.dart';
import '/pages/programacao/components/comp_dadosdo_efetivo/comp_dadosdo_efetivo_widget.dart';
import '/pages/ssa/componentes/comp_obs_geraisda_s_s_a/comp_obs_geraisda_s_s_a_widget.dart';
import 'u_i_execucao_widget.dart' show UIExecucaoWidget;
import 'package:flutter/material.dart';

class UIExecucaoModel extends FlutterFlowModel<UIExecucaoWidget> {
  ///  Local state fields for this component.

  int pageActive = 0;

  List<FFUploadedFile> imgsAntigas = [];
  void addToImgsAntigas(FFUploadedFile item) => imgsAntigas.add(item);
  void removeFromImgsAntigas(FFUploadedFile item) => imgsAntigas.remove(item);
  void removeAtIndexFromImgsAntigas(int index) => imgsAntigas.removeAt(index);
  void insertAtIndexInImgsAntigas(int index, FFUploadedFile item) =>
      imgsAntigas.insert(index, item);
  void updateImgsAntigasAtIndex(int index, Function(FFUploadedFile) updateFn) =>
      imgsAntigas[index] = updateFn(imgsAntigas[index]);

  List<FFUploadedFile> imgsDepois = [];
  void addToImgsDepois(FFUploadedFile item) => imgsDepois.add(item);
  void removeFromImgsDepois(FFUploadedFile item) => imgsDepois.remove(item);
  void removeAtIndexFromImgsDepois(int index) => imgsDepois.removeAt(index);
  void insertAtIndexInImgsDepois(int index, FFUploadedFile item) =>
      imgsDepois.insert(index, item);
  void updateImgsDepoisAtIndex(int index, Function(FFUploadedFile) updateFn) =>
      imgsDepois[index] = updateFn(imgsDepois[index]);

  FFUploadedFile? anexo;

  ///  State fields for stateful widgets in this component.

  // Model for comp_areaSSA_execucao component.
  late CompAreaSSAExecucaoModel compAreaSSAExecucaoModel;
  // Models for Comp_montagem dynamic component.
  late FlutterFlowDynamicModels<CompMontagemModel> compMontagemModels;
  // Models for tabBar dynamic component.
  late FlutterFlowDynamicModels<TabBarModel> tabBarModels;
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
  // Model for comp_anexar_arquivo component.
  late CompAnexarArquivoModel compAnexarArquivoModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for comp_captura_imagens component.
  late CompCapturaImagensModel compCapturaImagensModel1;
  // Model for comp_captura_imagens component.
  late CompCapturaImagensModel compCapturaImagensModel2;

  @override
  void initState(BuildContext context) {
    compAreaSSAExecucaoModel =
        createModel(context, () => CompAreaSSAExecucaoModel());
    compMontagemModels = FlutterFlowDynamicModels(() => CompMontagemModel());
    tabBarModels = FlutterFlowDynamicModels(() => TabBarModel());
    compTrechoExModel = createModel(context, () => CompTrechoExModel());
    compNivelPisoExModel = createModel(context, () => CompNivelPisoExModel());
    compDadosdoEfetivoModel =
        createModel(context, () => CompDadosdoEfetivoModel());
    compInterferenciaModel =
        createModel(context, () => CompInterferenciaModel());
    compListaPecasExModel = createModel(context, () => CompListaPecasExModel());
    compObsGeraisdaSSAModel =
        createModel(context, () => CompObsGeraisdaSSAModel());
    compAnexarArquivoModel =
        createModel(context, () => CompAnexarArquivoModel());
    compCapturaImagensModel1 =
        createModel(context, () => CompCapturaImagensModel());
    compCapturaImagensModel2 =
        createModel(context, () => CompCapturaImagensModel());
  }

  @override
  void dispose() {
    compAreaSSAExecucaoModel.dispose();
    compMontagemModels.dispose();
    tabBarModels.dispose();
    compTrechoExModel.dispose();
    compNivelPisoExModel.dispose();
    compDadosdoEfetivoModel.dispose();
    compInterferenciaModel.dispose();
    compListaPecasExModel.dispose();
    compObsGeraisdaSSAModel.dispose();
    compAnexarArquivoModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    compCapturaImagensModel1.dispose();
    compCapturaImagensModel2.dispose();
  }
}

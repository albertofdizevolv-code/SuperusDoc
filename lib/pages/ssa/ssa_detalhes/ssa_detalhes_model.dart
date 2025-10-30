import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/pages/approval/approval_details_component/approval_details_component_widget.dart';
import '/pages/execucao/view/u_i_execucao/u_i_execucao_widget.dart';
import '/pages/inventory/card_inventory/card_inventory_widget.dart';
import '/pages/material_collection/material_collection_details_component/material_collection_details_component_widget.dart';
import '/pages/programacao/view/u_i_programacao/u_i_programacao_widget.dart';
import '/pages/ssa/view/u_i_ssa/u_i_ssa_widget.dart';
import '/pages/visita_tecnica/view/ui_visita_tecnica/ui_visita_tecnica_widget.dart';
import 'ssa_detalhes_widget.dart' show SsaDetalhesWidget;
import 'package:flutter/material.dart';

class SsaDetalhesModel extends FlutterFlowModel<SsaDetalhesWidget> {
  ///  Local state fields for this page.

  int setChoiceChip = 1;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Ssa_detalhes widget.
  List<VwHistoricoCompletoRow>? outHistorico;
  // Model for SideBarMenuPrincipal component.
  late SideBarMenuPrincipalModel sideBarMenuPrincipalModel;
  // State field(s) for scroll widget.
  ScrollController? scrollScrollController;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for UI_Ssa component.
  late UISsaModel uISsaModel;
  // Model for card_inventory component.
  late CardInventoryModel cardInventoryModel;
  // Model for Ui_visitaTecnica component.
  late UiVisitaTecnicaModel uiVisitaTecnicaModel;
  // Model for UI_programacao component.
  late UIProgramacaoModel uIProgramacaoModel;
  // Model for UI_execucao component.
  late UIExecucaoModel uIExecucaoModel;
  // Model for approval_details_component component.
  late ApprovalDetailsComponentModel approvalDetailsComponentModel;
  // Model for material_collection_details_component component.
  late MaterialCollectionDetailsComponentModel
      materialCollectionDetailsComponentModel;

  @override
  void initState(BuildContext context) {
    sideBarMenuPrincipalModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    scrollScrollController = ScrollController();
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
    uISsaModel = createModel(context, () => UISsaModel());
    cardInventoryModel = createModel(context, () => CardInventoryModel());
    uiVisitaTecnicaModel = createModel(context, () => UiVisitaTecnicaModel());
    uIProgramacaoModel = createModel(context, () => UIProgramacaoModel());
    uIExecucaoModel = createModel(context, () => UIExecucaoModel());
    approvalDetailsComponentModel =
        createModel(context, () => ApprovalDetailsComponentModel());
    materialCollectionDetailsComponentModel =
        createModel(context, () => MaterialCollectionDetailsComponentModel());
  }

  @override
  void dispose() {
    sideBarMenuPrincipalModel.dispose();
    scrollScrollController?.dispose();
    headtitleButtonModel.dispose();
    uISsaModel.dispose();
    cardInventoryModel.dispose();
    uiVisitaTecnicaModel.dispose();
    uIProgramacaoModel.dispose();
    uIExecucaoModel.dispose();
    approvalDetailsComponentModel.dispose();
    materialCollectionDetailsComponentModel.dispose();
  }
}

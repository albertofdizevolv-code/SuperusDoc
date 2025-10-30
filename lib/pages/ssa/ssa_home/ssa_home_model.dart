import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/select_drop_down_projeto/select_drop_down_projeto_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/pages/ssa/componentes/filter_options_panel/filter_options_panel_widget.dart';
import '/index.dart';
import 'ssa_home_widget.dart' show SsaHomeWidget;
import 'package:flutter/material.dart';

class SsaHomeModel extends FlutterFlowModel<SsaHomeWidget> {
  ///  Local state fields for this page.

  List<VwTabelaHomeRow> listVwSSA = [];
  void addToListVwSSA(VwTabelaHomeRow item) => listVwSSA.add(item);
  void removeFromListVwSSA(VwTabelaHomeRow item) => listVwSSA.remove(item);
  void removeAtIndexFromListVwSSA(int index) => listVwSSA.removeAt(index);
  void insertAtIndexInListVwSSA(int index, VwTabelaHomeRow item) =>
      listVwSSA.insert(index, item);
  void updateListVwSSAAtIndex(int index, Function(VwTabelaHomeRow) updateFn) =>
      listVwSSA[index] = updateFn(listVwSSA[index]);

  VwTabelaHomeRow? listfilter;

  bool filtro = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Ssa_home widget.
  List<VwTabelaHomeRow>? outviewTabelaHome;
  // Model for SideBarMenuPrincipal component.
  late SideBarMenuPrincipalModel sideBarMenuPrincipalModel;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  // Model for SelectDropDownProjeto component.
  late SelectDropDownProjetoModel selectDropDownProjetoModel;
  // Model for FilterOptionsPanel component.
  late FilterOptionsPanelModel filterOptionsPanelModel;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<FuncionariosRow>? outFuncinario;
  // State field(s) for Nova widget.
  final novaController = FlutterFlowDataTableController<VwTabelaHomeRow>();

  @override
  void initState(BuildContext context) {
    sideBarMenuPrincipalModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
    selectDropDownProjetoModel =
        createModel(context, () => SelectDropDownProjetoModel());
    filterOptionsPanelModel =
        createModel(context, () => FilterOptionsPanelModel());
  }

  @override
  void dispose() {
    sideBarMenuPrincipalModel.dispose();
    headtitleButtonModel.dispose();
    selectDropDownProjetoModel.dispose();
    filterOptionsPanelModel.dispose();
    novaController.dispose();
  }
}

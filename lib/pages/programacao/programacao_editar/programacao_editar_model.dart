import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/pages/programacao/view/u_i_programacao/u_i_programacao_widget.dart';
import 'programacao_editar_widget.dart' show ProgramacaoEditarWidget;
import 'package:flutter/material.dart';

class ProgramacaoEditarModel extends FlutterFlowModel<ProgramacaoEditarWidget> {
  ///  Local state fields for this page.
  /// loop Insert
  List<ListaPecasViewRow> listaPecas = [];
  void addToListaPecas(ListaPecasViewRow item) => listaPecas.add(item);
  void removeFromListaPecas(ListaPecasViewRow item) => listaPecas.remove(item);
  void removeAtIndexFromListaPecas(int index) => listaPecas.removeAt(index);
  void insertAtIndexInListaPecas(int index, ListaPecasViewRow item) =>
      listaPecas.insert(index, item);
  void updateListaPecasAtIndex(
          int index, Function(ListaPecasViewRow) updateFn) =>
      listaPecas[index] = updateFn(listaPecas[index]);

  ///  State fields for stateful widgets in this page.

  // Model for SideBarMenuPrincipal component.
  late SideBarMenuPrincipalModel sideBarMenuPrincipalModel;
  // State field(s) for Scroll widget.
  ScrollController? scrollScrollController;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  // Model for UI_programacao component.
  late UIProgramacaoModel uIProgramacaoModel;

  @override
  void initState(BuildContext context) {
    sideBarMenuPrincipalModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    scrollScrollController = ScrollController();
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
    uIProgramacaoModel = createModel(context, () => UIProgramacaoModel());
  }

  @override
  void dispose() {
    sideBarMenuPrincipalModel.dispose();
    scrollScrollController?.dispose();
    headtitleButtonModel.dispose();
    uIProgramacaoModel.dispose();
  }
}

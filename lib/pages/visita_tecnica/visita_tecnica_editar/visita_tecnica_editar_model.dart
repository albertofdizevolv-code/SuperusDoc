import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/pages/visita_tecnica/view/ui_visita_tecnica/ui_visita_tecnica_widget.dart';
import 'visita_tecnica_editar_widget.dart' show VisitaTecnicaEditarWidget;
import 'package:flutter/material.dart';

class VisitaTecnicaEditarModel
    extends FlutterFlowModel<VisitaTecnicaEditarWidget> {
  ///  Local state fields for this page.

  List<MaterialRow> listaItenSelecionado = [];
  void addToListaItenSelecionado(MaterialRow item) =>
      listaItenSelecionado.add(item);
  void removeFromListaItenSelecionado(MaterialRow item) =>
      listaItenSelecionado.remove(item);
  void removeAtIndexFromListaItenSelecionado(int index) =>
      listaItenSelecionado.removeAt(index);
  void insertAtIndexInListaItenSelecionado(int index, MaterialRow item) =>
      listaItenSelecionado.insert(index, item);
  void updateListaItenSelecionadoAtIndex(
          int index, Function(MaterialRow) updateFn) =>
      listaItenSelecionado[index] = updateFn(listaItenSelecionado[index]);

  /// valores para o loop
  List<int> itensSelecionadosLoop = [];
  void addToItensSelecionadosLoop(int item) => itensSelecionadosLoop.add(item);
  void removeFromItensSelecionadosLoop(int item) =>
      itensSelecionadosLoop.remove(item);
  void removeAtIndexFromItensSelecionadosLoop(int index) =>
      itensSelecionadosLoop.removeAt(index);
  void insertAtIndexInItensSelecionadosLoop(int index, int item) =>
      itensSelecionadosLoop.insert(index, item);
  void updateItensSelecionadosLoopAtIndex(int index, Function(int) updateFn) =>
      itensSelecionadosLoop[index] = updateFn(itensSelecionadosLoop[index]);

  List<int> listQnt = [];
  void addToListQnt(int item) => listQnt.add(item);
  void removeFromListQnt(int item) => listQnt.remove(item);
  void removeAtIndexFromListQnt(int index) => listQnt.removeAt(index);
  void insertAtIndexInListQnt(int index, int item) =>
      listQnt.insert(index, item);
  void updateListQntAtIndex(int index, Function(int) updateFn) =>
      listQnt[index] = updateFn(listQnt[index]);

  ///  State fields for stateful widgets in this page.

  // Model for SideBarMenuPrincipal component.
  late SideBarMenuPrincipalModel sideBarMenuPrincipalModel;
  // State field(s) for Scroll widget.
  ScrollController? scrollScrollController;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  // Model for Ui_visitaTecnica component.
  late UiVisitaTecnicaModel uiVisitaTecnicaModel;

  @override
  void initState(BuildContext context) {
    sideBarMenuPrincipalModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    scrollScrollController = ScrollController();
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
    uiVisitaTecnicaModel = createModel(context, () => UiVisitaTecnicaModel());
  }

  @override
  void dispose() {
    sideBarMenuPrincipalModel.dispose();
    scrollScrollController?.dispose();
    headtitleButtonModel.dispose();
    uiVisitaTecnicaModel.dispose();
  }
}

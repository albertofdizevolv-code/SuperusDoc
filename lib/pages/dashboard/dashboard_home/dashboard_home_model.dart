import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/select_drop_down_projeto/select_drop_down_projeto_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/global_components/toast/toast_widget.dart';
import '/pages/dashboard/card_dashboard/card_dashboard_widget.dart';
import 'dashboard_home_widget.dart' show DashboardHomeWidget;
import 'package:flutter/material.dart';

class DashboardHomeModel extends FlutterFlowModel<DashboardHomeWidget> {
  ///  Local state fields for this page.

  List<double> testeGraficoY = [2000.0, 1050.0, 920.0, 500.0, 5000.0];
  void addToTesteGraficoY(double item) => testeGraficoY.add(item);
  void removeFromTesteGraficoY(double item) => testeGraficoY.remove(item);
  void removeAtIndexFromTesteGraficoY(int index) =>
      testeGraficoY.removeAt(index);
  void insertAtIndexInTesteGraficoY(int index, double item) =>
      testeGraficoY.insert(index, item);
  void updateTesteGraficoYAtIndex(int index, Function(double) updateFn) =>
      testeGraficoY[index] = updateFn(testeGraficoY[index]);

  List<double> testeGraficoX = [500.0, 200.0, 5.0];
  void addToTesteGraficoX(double item) => testeGraficoX.add(item);
  void removeFromTesteGraficoX(double item) => testeGraficoX.remove(item);
  void removeAtIndexFromTesteGraficoX(int index) =>
      testeGraficoX.removeAt(index);
  void insertAtIndexInTesteGraficoX(int index, double item) =>
      testeGraficoX.insert(index, item);
  void updateTesteGraficoXAtIndex(int index, Function(double) updateFn) =>
      testeGraficoX[index] = updateFn(testeGraficoX[index]);

  List<int> teste = [5, 2, 8, 5];
  void addToTeste(int item) => teste.add(item);
  void removeFromTeste(int item) => teste.remove(item);
  void removeAtIndexFromTeste(int index) => teste.removeAt(index);
  void insertAtIndexInTeste(int index, int item) => teste.insert(index, item);
  void updateTesteAtIndex(int index, Function(int) updateFn) =>
      teste[index] = updateFn(teste[index]);

  ///  State fields for stateful widgets in this page.

  // Model for SideBarMenuPrincipal component.
  late SideBarMenuPrincipalModel sideBarMenuPrincipalModel;
  // State field(s) for Scroll widget.
  ScrollController? scrollScrollController;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  // Model for SelectDropDownProjeto component.
  late SelectDropDownProjetoModel selectDropDownProjetoModel;
  // Model for cardDashboard component.
  late CardDashboardModel cardDashboardModel1;
  // Model for cardDashboard component.
  late CardDashboardModel cardDashboardModel2;
  // Model for cardDashboard component.
  late CardDashboardModel cardDashboardModel3;
  // Model for cardDashboard component.
  late CardDashboardModel cardDashboardModel4;
  // Model for toast component.
  late ToastModel toastModel1;
  // Model for toast component.
  late ToastModel toastModel2;
  // Model for toast component.
  late ToastModel toastModel3;
  // Model for toast component.
  late ToastModel toastModel4;
  // Model for toast component.
  late ToastModel toastModel5;
  // Model for toast component.
  late ToastModel toastModel6;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<int>();

  @override
  void initState(BuildContext context) {
    sideBarMenuPrincipalModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    scrollScrollController = ScrollController();
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
    selectDropDownProjetoModel =
        createModel(context, () => SelectDropDownProjetoModel());
    cardDashboardModel1 = createModel(context, () => CardDashboardModel());
    cardDashboardModel2 = createModel(context, () => CardDashboardModel());
    cardDashboardModel3 = createModel(context, () => CardDashboardModel());
    cardDashboardModel4 = createModel(context, () => CardDashboardModel());
    toastModel1 = createModel(context, () => ToastModel());
    toastModel2 = createModel(context, () => ToastModel());
    toastModel3 = createModel(context, () => ToastModel());
    toastModel4 = createModel(context, () => ToastModel());
    toastModel5 = createModel(context, () => ToastModel());
    toastModel6 = createModel(context, () => ToastModel());
  }

  @override
  void dispose() {
    sideBarMenuPrincipalModel.dispose();
    scrollScrollController?.dispose();
    headtitleButtonModel.dispose();
    selectDropDownProjetoModel.dispose();
    cardDashboardModel1.dispose();
    cardDashboardModel2.dispose();
    cardDashboardModel3.dispose();
    cardDashboardModel4.dispose();
    toastModel1.dispose();
    toastModel2.dispose();
    toastModel3.dispose();
    toastModel4.dispose();
    toastModel5.dispose();
    toastModel6.dispose();
    paginatedDataTableController.dispose();
  }
}

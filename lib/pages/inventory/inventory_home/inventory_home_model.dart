import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/index.dart';
import 'inventory_home_widget.dart' show InventoryHomeWidget;
import 'package:flutter/material.dart';

class InventoryHomeModel extends FlutterFlowModel<InventoryHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBarMenuPrincipal component.
  late SideBarMenuPrincipalModel sideBarMenuPrincipalModel;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  // State field(s) for Cliente widget.
  FocusNode? clienteFocusNode;
  TextEditingController? clienteTextController;
  String? Function(BuildContext, String?)? clienteTextControllerValidator;
  // State field(s) for Nova widget.
  final novaController1 = FlutterFlowDataTableController<int>();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Nova widget.
  final novaController2 = FlutterFlowDataTableController<int>();

  @override
  void initState(BuildContext context) {
    sideBarMenuPrincipalModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    columnController = ScrollController();
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
  }

  @override
  void dispose() {
    sideBarMenuPrincipalModel.dispose();
    columnController?.dispose();
    headtitleButtonModel.dispose();
    clienteFocusNode?.dispose();
    clienteTextController?.dispose();

    novaController1.dispose();
    textFieldFocusNode?.dispose();
    textController2?.dispose();

    novaController2.dispose();
  }
}

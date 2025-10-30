import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/global_components/count_controler/count_controler_widget.dart';
import 'lista_pecas_widget.dart' show ListaPecasWidget;
import 'package:flutter/material.dart';

class ListaPecasModel extends FlutterFlowModel<ListaPecasWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown_categoria widget.
  String? dropDownCategoriaValue;
  FormFieldController<String>? dropDownCategoriaValueController;
  // State field(s) for DropDown_subcategoria widget.
  String? dropDownSubcategoriaValue;
  FormFieldController<String>? dropDownSubcategoriaValueController;
  // State field(s) for DropDown_pecas widget.
  String? dropDownPecasValue;
  FormFieldController<String>? dropDownPecasValueController;
  // Models for countControler dynamic component.
  late FlutterFlowDynamicModels<CountControlerModel> countControlerModels;

  @override
  void initState(BuildContext context) {
    countControlerModels =
        FlutterFlowDynamicModels(() => CountControlerModel());
  }

  @override
  void dispose() {
    countControlerModels.dispose();
  }
}

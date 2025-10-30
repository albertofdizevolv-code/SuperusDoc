import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_dados_efetivo_widget.dart' show ModalDadosEfetivoWidget;
import 'package:flutter/material.dart';

class ModalDadosEfetivoModel extends FlutterFlowModel<ModalDadosEfetivoWidget> {
  ///  Local state fields for this component.

  double horaTotal = 0.0;

  List<String> dropdown = [];
  void addToDropdown(String item) => dropdown.add(item);
  void removeFromDropdown(String item) => dropdown.remove(item);
  void removeAtIndexFromDropdown(int index) => dropdown.removeAt(index);
  void insertAtIndexInDropdown(int index, String item) =>
      dropdown.insert(index, item);
  void updateDropdownAtIndex(int index, Function(String) updateFn) =>
      dropdown[index] = updateFn(dropdown[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for drop_colaborador widget.
  String? dropColaboradorValue;
  FormFieldController<String>? dropColaboradorValueController;
  // State field(s) for funcaoColaborador widget.
  FocusNode? funcaoColaboradorFocusNode;
  TextEditingController? funcaoColaboradorTextController;
  String? Function(BuildContext, String?)?
      funcaoColaboradorTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    funcaoColaboradorFocusNode?.dispose();
    funcaoColaboradorTextController?.dispose();
  }

  /// Action blocks.
  Future calcularAreaDoNivel(BuildContext context) async {}
}

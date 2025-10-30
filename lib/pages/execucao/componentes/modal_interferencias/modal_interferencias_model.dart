import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'modal_interferencias_widget.dart' show ModalInterferenciasWidget;
import 'package:flutter/material.dart';

class ModalInterferenciasModel
    extends FlutterFlowModel<ModalInterferenciasWidget> {
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
  int? dropColaboradorValue;
  FormFieldController<int>? dropColaboradorValueController;
  // State field(s) for funcaoColaborador widget.
  FocusNode? funcaoColaboradorFocusNode;
  TextEditingController? funcaoColaboradorTextController;
  String? Function(BuildContext, String?)?
      funcaoColaboradorTextControllerValidator;
  // State field(s) for Duracaoemhoras widget.
  FocusNode? duracaoemhorasFocusNode;
  TextEditingController? duracaoemhorasTextController;
  String? Function(BuildContext, String?)?
      duracaoemhorasTextControllerValidator;
  // State field(s) for Efetivoafetado widget.
  FocusNode? efetivoafetadoFocusNode;
  TextEditingController? efetivoafetadoTextController;
  String? Function(BuildContext, String?)?
      efetivoafetadoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    funcaoColaboradorFocusNode?.dispose();
    funcaoColaboradorTextController?.dispose();

    duracaoemhorasFocusNode?.dispose();
    duracaoemhorasTextController?.dispose();

    efetivoafetadoFocusNode?.dispose();
    efetivoafetadoTextController?.dispose();
  }

  /// Action blocks.
  Future calcularImpacto(BuildContext context) async {
    horaTotal = valueOrDefault<double>(
          functions.replaceCommaToDouble(duracaoemhorasTextController.text),
          0.0,
        ) *
        valueOrDefault<double>(
          functions.replaceCommaToDouble(efetivoafetadoTextController.text),
          0.0,
        );
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'modal_trecho_v_t_widget.dart' show ModalTrechoVTWidget;
import 'package:flutter/material.dart';

class ModalTrechoVTModel extends FlutterFlowModel<ModalTrechoVTWidget> {
  ///  Local state fields for this component.

  double valorTotal = 0.0;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for trecho widget.
  FocusNode? trechoFocusNode;
  TextEditingController? trechoTextController;
  String? Function(BuildContext, String?)? trechoTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for comprimento widget.
  FocusNode? comprimentoFocusNode;
  TextEditingController? comprimentoTextController;
  String? Function(BuildContext, String?)? comprimentoTextControllerValidator;
  // State field(s) for altura widget.
  FocusNode? alturaFocusNode;
  TextEditingController? alturaTextController;
  String? Function(BuildContext, String?)? alturaTextControllerValidator;
  // State field(s) for largura widget.
  FocusNode? larguraFocusNode;
  TextEditingController? larguraTextController;
  String? Function(BuildContext, String?)? larguraTextControllerValidator;
  // State field(s) for descontar widget.
  FocusNode? descontarFocusNode;
  TextEditingController? descontarTextController;
  String? Function(BuildContext, String?)? descontarTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    trechoFocusNode?.dispose();
    trechoTextController?.dispose();

    comprimentoFocusNode?.dispose();
    comprimentoTextController?.dispose();

    alturaFocusNode?.dispose();
    alturaTextController?.dispose();

    larguraFocusNode?.dispose();
    larguraTextController?.dispose();

    descontarFocusNode?.dispose();
    descontarTextController?.dispose();
  }

  /// Action blocks.
  Future calcularVolumeTotal(BuildContext context) async {
    valorTotal = (valueOrDefault<double>(
              functions.replaceCommaToDouble(valueOrDefault<String>(
                comprimentoTextController.text,
                '0',
              )),
              0.0,
            ) *
            valueOrDefault<double>(
              functions.replaceCommaToDouble(valueOrDefault<String>(
                alturaTextController.text,
                '0',
              )),
              0.0,
            ) *
            valueOrDefault<double>(
              functions.replaceCommaToDouble(valueOrDefault<String>(
                larguraTextController.text,
                '0',
              )),
              0.0,
            )) -
        valueOrDefault<double>(
          functions.replaceCommaToDouble(valueOrDefault<String>(
            descontarTextController.text,
            '0',
          )),
          0.0,
        );
  }
}

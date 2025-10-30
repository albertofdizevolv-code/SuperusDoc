import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'modal_nivel_piso_v_t_widget.dart' show ModalNivelPisoVTWidget;
import 'package:flutter/material.dart';

class ModalNivelPisoVTModel extends FlutterFlowModel<ModalNivelPisoVTWidget> {
  ///  Local state fields for this component.

  double areaDoNivel = 0.0;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nivel widget.
  FocusNode? nivelFocusNode;
  TextEditingController? nivelTextController;
  String? Function(BuildContext, String?)? nivelTextControllerValidator;
  // State field(s) for Elevacao widget.
  FocusNode? elevacaoFocusNode;
  TextEditingController? elevacaoTextController;
  String? Function(BuildContext, String?)? elevacaoTextControllerValidator;
  // State field(s) for comprimento widget.
  FocusNode? comprimentoFocusNode;
  TextEditingController? comprimentoTextController;
  String? Function(BuildContext, String?)? comprimentoTextControllerValidator;
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
    nivelFocusNode?.dispose();
    nivelTextController?.dispose();

    elevacaoFocusNode?.dispose();
    elevacaoTextController?.dispose();

    comprimentoFocusNode?.dispose();
    comprimentoTextController?.dispose();

    larguraFocusNode?.dispose();
    larguraTextController?.dispose();

    descontarFocusNode?.dispose();
    descontarTextController?.dispose();
  }

  /// Action blocks.
  Future calcularAreaDoNivel(BuildContext context) async {
    areaDoNivel = (valueOrDefault<double>(
              functions.replaceCommaToDouble(comprimentoTextController.text),
              0.0,
            ) *
            valueOrDefault<double>(
              functions.replaceCommaToDouble(larguraTextController.text),
              0.0,
            )) -
        valueOrDefault<double>(
          functions.replaceCommaToDouble(descontarTextController.text),
          0.0,
        );
  }
}

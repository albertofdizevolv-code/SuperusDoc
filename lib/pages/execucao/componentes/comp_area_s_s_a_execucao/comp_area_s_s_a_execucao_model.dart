import '/components/text_field_static_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comp_area_s_s_a_execucao_widget.dart' show CompAreaSSAExecucaoWidget;
import 'package:flutter/material.dart';

class CompAreaSSAExecucaoModel
    extends FlutterFlowModel<CompAreaSSAExecucaoWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for textFieldStatic component.
  late TextFieldStaticModel textFieldStaticModel1;
  // Model for textFieldStatic component.
  late TextFieldStaticModel textFieldStaticModel2;
  // Model for textFieldStatic component.
  late TextFieldStaticModel textFieldStaticModel3;
  // State field(s) for TextField_responsavel_superus widget.
  FocusNode? textFieldResponsavelSuperusFocusNode;
  TextEditingController? textFieldResponsavelSuperusTextController;
  String? Function(BuildContext, String?)?
      textFieldResponsavelSuperusTextControllerValidator;
  // Model for textFieldStatic component.
  late TextFieldStaticModel textFieldStaticModel4;
  // Model for textFieldStatic component.
  late TextFieldStaticModel textFieldStaticModel5;

  @override
  void initState(BuildContext context) {
    textFieldStaticModel1 = createModel(context, () => TextFieldStaticModel());
    textFieldStaticModel2 = createModel(context, () => TextFieldStaticModel());
    textFieldStaticModel3 = createModel(context, () => TextFieldStaticModel());
    textFieldStaticModel4 = createModel(context, () => TextFieldStaticModel());
    textFieldStaticModel5 = createModel(context, () => TextFieldStaticModel());
  }

  @override
  void dispose() {
    textFieldStaticModel1.dispose();
    textFieldStaticModel2.dispose();
    textFieldStaticModel3.dispose();
    textFieldResponsavelSuperusFocusNode?.dispose();
    textFieldResponsavelSuperusTextController?.dispose();

    textFieldStaticModel4.dispose();
    textFieldStaticModel5.dispose();
  }
}

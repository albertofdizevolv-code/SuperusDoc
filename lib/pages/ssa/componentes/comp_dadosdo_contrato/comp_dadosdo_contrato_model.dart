import '/components/text_field_static_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'comp_dadosdo_contrato_widget.dart' show CompDadosdoContratoWidget;
import 'package:flutter/material.dart';

class CompDadosdoContratoModel
    extends FlutterFlowModel<CompDadosdoContratoWidget> {
  ///  Local state fields for this component.
  /// Confirmar se pode trocar o cliente(projeto)
  int necessarioConfirmarFilipe = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropProjeto widget.
  int? dropProjetoValue;
  FormFieldController<int>? dropProjetoValueController;
  // Model for textFieldStatic component.
  late TextFieldStaticModel textFieldStaticModel1;
  // Model for textFieldStatic component.
  late TextFieldStaticModel textFieldStaticModel2;
  // Model for textFieldStatic component.
  late TextFieldStaticModel textFieldStaticModel3;
  // Model for textFieldStatic component.
  late TextFieldStaticModel textFieldStaticModel4;
  // State field(s) for SubProjeto widget.
  int? subProjetoValue;
  FormFieldController<int>? subProjetoValueController;
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
    textFieldStaticModel4.dispose();
    textFieldStaticModel5.dispose();
  }
}

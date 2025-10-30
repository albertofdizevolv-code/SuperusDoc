import '/components/text_field_static_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'comp_dadosda_solicitacao_widget.dart' show CompDadosdaSolicitacaoWidget;
import 'package:flutter/material.dart';

class CompDadosdaSolicitacaoModel
    extends FlutterFlowModel<CompDadosdaSolicitacaoWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for textFieldStatic component.
  late TextFieldStaticModel textFieldStaticModel1;
  // Model for textFieldStatic component.
  late TextFieldStaticModel textFieldStaticModel2;
  // State field(s) for DropDownResponsavelAbertura widget.
  int? dropDownResponsavelAberturaValue;
  FormFieldController<int>? dropDownResponsavelAberturaValueController;

  @override
  void initState(BuildContext context) {
    textFieldStaticModel1 = createModel(context, () => TextFieldStaticModel());
    textFieldStaticModel2 = createModel(context, () => TextFieldStaticModel());
  }

  @override
  void dispose() {
    textFieldStaticModel1.dispose();
    textFieldStaticModel2.dispose();
  }
}

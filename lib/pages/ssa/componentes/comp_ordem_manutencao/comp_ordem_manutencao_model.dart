import '/components/text_field_static_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'comp_ordem_manutencao_widget.dart' show CompOrdemManutencaoWidget;
import 'package:flutter/material.dart';

class CompOrdemManutencaoModel
    extends FlutterFlowModel<CompOrdemManutencaoWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for textFieldStatic component.
  late TextFieldStaticModel textFieldStaticModel1;
  // State field(s) for clienteSolicitante widget.
  String? clienteSolicitanteValue;
  FormFieldController<String>? clienteSolicitanteValueController;
  // Model for textFieldStatic component.
  late TextFieldStaticModel textFieldStaticModel2;
  // State field(s) for OrdemManutencao widget.
  FocusNode? ordemManutencaoFocusNode;
  TextEditingController? ordemManutencaoTextController;
  String? Function(BuildContext, String?)?
      ordemManutencaoTextControllerValidator;
  // State field(s) for clienteProgramador widget.
  String? clienteProgramadorValue;
  FormFieldController<String>? clienteProgramadorValueController;
  // Model for textFieldStatic component.
  late TextFieldStaticModel textFieldStaticModel3;
  // State field(s) for TipoManutencao widget.
  String? tipoManutencaoValue;
  FormFieldController<String>? tipoManutencaoValueController;
  // State field(s) for CentroCustoCliente widget.
  FocusNode? centroCustoClienteFocusNode;
  TextEditingController? centroCustoClienteTextController;
  String? Function(BuildContext, String?)?
      centroCustoClienteTextControllerValidator;

  @override
  void initState(BuildContext context) {
    textFieldStaticModel1 = createModel(context, () => TextFieldStaticModel());
    textFieldStaticModel2 = createModel(context, () => TextFieldStaticModel());
    textFieldStaticModel3 = createModel(context, () => TextFieldStaticModel());
  }

  @override
  void dispose() {
    textFieldStaticModel1.dispose();
    textFieldStaticModel2.dispose();
    ordemManutencaoFocusNode?.dispose();
    ordemManutencaoTextController?.dispose();

    textFieldStaticModel3.dispose();
    centroCustoClienteFocusNode?.dispose();
    centroCustoClienteTextController?.dispose();
  }
}

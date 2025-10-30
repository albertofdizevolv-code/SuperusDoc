import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'compensation_details_component_widget.dart'
    show CompensationDetailsComponentWidget;
import 'package:flutter/material.dart';

class CompensationDetailsComponentModel
    extends FlutterFlowModel<CompensationDetailsComponentWidget> {
  ///  Local state fields for this component.

  bool edit = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Cliente widget.
  FocusNode? clienteFocusNode;
  TextEditingController? clienteTextController;
  String? Function(BuildContext, String?)? clienteTextControllerValidator;
  // State field(s) for codCentroCusto widget.
  FocusNode? codCentroCustoFocusNode;
  TextEditingController? codCentroCustoTextController;
  String? Function(BuildContext, String?)?
      codCentroCustoTextControllerValidator;
  // State field(s) for NumContrato widget.
  FocusNode? numContratoFocusNode;
  TextEditingController? numContratoTextController;
  String? Function(BuildContext, String?)? numContratoTextControllerValidator;
  // State field(s) for Cnpj widget.
  FocusNode? cnpjFocusNode;
  TextEditingController? cnpjTextController;
  String? Function(BuildContext, String?)? cnpjTextControllerValidator;
  // State field(s) for SubProjeto widget.
  FocusNode? subProjetoFocusNode;
  TextEditingController? subProjetoTextController;
  String? Function(BuildContext, String?)? subProjetoTextControllerValidator;
  // State field(s) for SSA widget.
  FocusNode? ssaFocusNode1;
  TextEditingController? ssaTextController1;
  String? Function(BuildContext, String?)? ssaTextController1Validator;
  // State field(s) for DataAbertura widget.
  FocusNode? dataAberturaFocusNode1;
  TextEditingController? dataAberturaTextController1;
  String? Function(BuildContext, String?)? dataAberturaTextController1Validator;
  // State field(s) for SSA widget.
  FocusNode? ssaFocusNode2;
  TextEditingController? ssaTextController2;
  String? Function(BuildContext, String?)? ssaTextController2Validator;
  // State field(s) for DataAbertura widget.
  FocusNode? dataAberturaFocusNode2;
  TextEditingController? dataAberturaTextController2;
  String? Function(BuildContext, String?)? dataAberturaTextController2Validator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;
  // State field(s) for SSA widget.
  FocusNode? ssaFocusNode3;
  TextEditingController? ssaTextController3;
  String? Function(BuildContext, String?)? ssaTextController3Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<int>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    clienteFocusNode?.dispose();
    clienteTextController?.dispose();

    codCentroCustoFocusNode?.dispose();
    codCentroCustoTextController?.dispose();

    numContratoFocusNode?.dispose();
    numContratoTextController?.dispose();

    cnpjFocusNode?.dispose();
    cnpjTextController?.dispose();

    subProjetoFocusNode?.dispose();
    subProjetoTextController?.dispose();

    ssaFocusNode1?.dispose();
    ssaTextController1?.dispose();

    dataAberturaFocusNode1?.dispose();
    dataAberturaTextController1?.dispose();

    ssaFocusNode2?.dispose();
    ssaTextController2?.dispose();

    dataAberturaFocusNode2?.dispose();
    dataAberturaTextController2?.dispose();

    ssaFocusNode3?.dispose();
    ssaTextController3?.dispose();

    paginatedDataTableController.dispose();
  }
}

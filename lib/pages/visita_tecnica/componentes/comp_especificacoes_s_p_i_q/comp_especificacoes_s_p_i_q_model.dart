import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comp_especificacoes_s_p_i_q_widget.dart'
    show CompEspecificacoesSPIQWidget;
import 'package:flutter/material.dart';

class CompEspecificacoesSPIQModel
    extends FlutterFlowModel<CompEspecificacoesSPIQWidget> {
  ///  Local state fields for this component.

  int idTipoEquipamento = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for CheckboxListTile widget.
  Map<CfItensVisitaTecnicaStruct, bool> checkboxListTileValueMap = {};
  List<CfItensVisitaTecnicaStruct> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for QntPessoasSPIQ widget.
  FocusNode? qntPessoasSPIQFocusNode;
  TextEditingController? qntPessoasSPIQTextController;
  String? Function(BuildContext, String?)?
      qntPessoasSPIQTextControllerValidator;
  // State field(s) for CargaEstrutura widget.
  FocusNode? cargaEstruturaFocusNode;
  TextEditingController? cargaEstruturaTextController;
  String? Function(BuildContext, String?)?
      cargaEstruturaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    qntPessoasSPIQFocusNode?.dispose();
    qntPessoasSPIQTextController?.dispose();

    cargaEstruturaFocusNode?.dispose();
    cargaEstruturaTextController?.dispose();
  }
}

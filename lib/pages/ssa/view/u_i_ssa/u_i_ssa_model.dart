import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/ssa/componentes/comp_dadosda_solicitacao/comp_dadosda_solicitacao_widget.dart';
import '/pages/ssa/componentes/comp_dadosdo_contrato/comp_dadosdo_contrato_widget.dart';
import '/pages/ssa/componentes/comp_detalhes_atividade/comp_detalhes_atividade_widget.dart';
import '/pages/ssa/componentes/comp_obs_geraisda_s_s_a/comp_obs_geraisda_s_s_a_widget.dart';
import '/pages/ssa/componentes/comp_ordem_manutencao/comp_ordem_manutencao_widget.dart';
import 'u_i_ssa_widget.dart' show UISsaWidget;
import 'package:flutter/material.dart';

class UISsaModel extends FlutterFlowModel<UISsaWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for comp_DadosdoContrato component.
  late CompDadosdoContratoModel compDadosdoContratoModel;
  // Model for comp_DadosdaSolicitacao component.
  late CompDadosdaSolicitacaoModel compDadosdaSolicitacaoModel;
  // Model for comp_OrdemManutencao component.
  late CompOrdemManutencaoModel compOrdemManutencaoModel;
  // Model for comp_DetalhesAtividade component.
  late CompDetalhesAtividadeModel compDetalhesAtividadeModel;
  // Model for comp_ObsGeraisdaSSA component.
  late CompObsGeraisdaSSAModel compObsGeraisdaSSAModel;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<SsaRow>? outUpdateSSA;

  @override
  void initState(BuildContext context) {
    compDadosdoContratoModel =
        createModel(context, () => CompDadosdoContratoModel());
    compDadosdaSolicitacaoModel =
        createModel(context, () => CompDadosdaSolicitacaoModel());
    compOrdemManutencaoModel =
        createModel(context, () => CompOrdemManutencaoModel());
    compDetalhesAtividadeModel =
        createModel(context, () => CompDetalhesAtividadeModel());
    compObsGeraisdaSSAModel =
        createModel(context, () => CompObsGeraisdaSSAModel());
  }

  @override
  void dispose() {
    compDadosdoContratoModel.dispose();
    compDadosdaSolicitacaoModel.dispose();
    compOrdemManutencaoModel.dispose();
    compDetalhesAtividadeModel.dispose();
    compObsGeraisdaSSAModel.dispose();
  }
}

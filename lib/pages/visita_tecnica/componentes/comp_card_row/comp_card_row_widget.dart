import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/visita_tecnica/componentes/checkbox_iten_selecionado/checkbox_iten_selecionado_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'comp_card_row_model.dart';
export 'comp_card_row_model.dart';

class CompCardRowWidget extends StatefulWidget {
  const CompCardRowWidget({
    super.key,
    required this.title,
    required this.fkCategoria,
    required this.typemode,
  });

  final String? title;

  /// ID referencia da tebela, vem do próprio appState
  ///
  /// 1 ao 6
  final int? fkCategoria;

  final WidgetTypeMode? typemode;

  @override
  State<CompCardRowWidget> createState() => _CompCardRowWidgetState();
}

class _CompCardRowWidgetState extends State<CompCardRowWidget> {
  late CompCardRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompCardRowModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.title,
                  'Descrição de Condições Críticas',
                ),
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      font: GoogleFonts.inter(
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                    ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Builder(
                      builder: (context) {
                        final condicoes01 = FFAppState()
                            .configItensSelecionaveisVT
                            .where((e) =>
                                (e.fkIdCategoria == widget.fkCategoria) &&
                                (e.ordemExibicao <= 4))
                            .toList();

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(condicoes01.length,
                              (condicoes01Index) {
                            final condicoes01Item =
                                condicoes01[condicoes01Index];
                            return CheckboxItenSelecionadoWidget(
                              key: Key(
                                  'Keyoct_${condicoes01Index}_of_${condicoes01.length}'),
                              title: condicoes01Item.nomeItem,
                              typeMode: widget.typemode!,
                              idItemSelecinado: condicoes01Item.idItem,
                            );
                          }),
                        );
                      },
                    ),
                  ),
                  Flexible(
                    child: Builder(
                      builder: (context) {
                        final condicoes02 = FFAppState()
                            .configItensSelecionaveisVT
                            .where((e) =>
                                (e.fkIdCategoria == widget.fkCategoria) &&
                                ((e.ordemExibicao >= 5) &&
                                    (e.ordemExibicao <= 8)))
                            .toList();

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(condicoes02.length,
                              (condicoes02Index) {
                            final condicoes02Item =
                                condicoes02[condicoes02Index];
                            return CheckboxItenSelecionadoWidget(
                              key: Key(
                                  'Keyx23_${condicoes02Index}_of_${condicoes02.length}'),
                              title: condicoes02Item.nomeItem,
                              typeMode: widget.typemode!,
                              idItemSelecinado: condicoes02Item.idItem,
                            );
                          }),
                        );
                      },
                    ),
                  ),
                  Flexible(
                    child: Builder(
                      builder: (context) {
                        final condicoes03 = FFAppState()
                            .configItensSelecionaveisVT
                            .where((e) =>
                                (e.fkIdCategoria == widget.fkCategoria) &&
                                (e.ordemExibicao >= 9))
                            .toList();

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(condicoes03.length,
                              (condicoes03Index) {
                            final condicoes03Item =
                                condicoes03[condicoes03Index];
                            return CheckboxItenSelecionadoWidget(
                              key: Key(
                                  'Keygnj_${condicoes03Index}_of_${condicoes03.length}'),
                              title: condicoes03Item.nomeItem,
                              typeMode: widget.typemode!,
                              idItemSelecinado: condicoes03Item.idItem,
                            );
                          }),
                        );
                      },
                    ),
                  ),
                ].divide(SizedBox(width: 28.0)),
              ),
            ].divide(SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}

import '../database.dart';

class VwVisitaTecnicaCompletaTable
    extends SupabaseTable<VwVisitaTecnicaCompletaRow> {
  @override
  String get tableName => 'vw_visita_tecnica_completa';

  @override
  VwVisitaTecnicaCompletaRow createRow(Map<String, dynamic> data) =>
      VwVisitaTecnicaCompletaRow(data);
}

class VwVisitaTecnicaCompletaRow extends SupabaseDataRow {
  VwVisitaTecnicaCompletaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwVisitaTecnicaCompletaTable();

  int? get idVisita => getField<int>('id_visita');
  set idVisita(int? value) => setField<int>('id_visita', value);

  int? get fkIdSsa => getField<int>('fk_id_ssa');
  set fkIdSsa(int? value) => setField<int>('fk_id_ssa', value);

  DateTime? get dataVisita => getField<DateTime>('data_visita');
  set dataVisita(DateTime? value) => setField<DateTime>('data_visita', value);

  int? get fkIdResponsavelCliente => getField<int>('fk_id_responsavel_cliente');
  set fkIdResponsavelCliente(int? value) =>
      setField<int>('fk_id_responsavel_cliente', value);

  int? get fkIdResponsavelVisita => getField<int>('fk_id_responsavel_visita');
  set fkIdResponsavelVisita(int? value) =>
      setField<int>('fk_id_responsavel_visita', value);

  double? get volumeTotalM2 => getField<double>('volume_total_m2');
  set volumeTotalM2(double? value) =>
      setField<double>('volume_total_m2', value);

  String? get qntPessoasEstrutura => getField<String>('qnt_Pessoas_estrutura');
  set qntPessoasEstrutura(String? value) =>
      setField<String>('qnt_Pessoas_estrutura', value);

  String? get cargaEstrutura => getField<String>('carga_estrutura');
  set cargaEstrutura(String? value) =>
      setField<String>('carga_estrutura', value);

  double? get totalAreaPisoM2 => getField<double>('total_area_piso_m2');
  set totalAreaPisoM2(double? value) =>
      setField<double>('total_area_piso_m2', value);

  String? get croquiAreaUrl => getField<String>('croqui_area_url');
  set croquiAreaUrl(String? value) =>
      setField<String>('croqui_area_url', value);

  String? get assinaturaClienteUrl =>
      getField<String>('assinatura_cliente_url');
  set assinaturaClienteUrl(String? value) =>
      setField<String>('assinatura_cliente_url', value);

  List<String> get comentarios => getListField<String>('comentarios');
  set comentarios(List<String>? value) =>
      setListField<String>('comentarios', value);

  double? get totalMaterialTubularM =>
      getField<double>('total_material_tubular_m');
  set totalMaterialTubularM(double? value) =>
      setField<double>('total_material_tubular_m', value);

  String? get encarregadoVisitaTecnica =>
      getField<String>('encarregado_visitaTecnica');
  set encarregadoVisitaTecnica(String? value) =>
      setField<String>('encarregado_visitaTecnica', value);

  String? get contatoEncarregado => getField<String>('contato_encarregado');
  set contatoEncarregado(String? value) =>
      setField<String>('contato_encarregado', value);

  dynamic get itensSelecionados => getField<dynamic>('itens_selecionados');
  set itensSelecionados(dynamic value) =>
      setField<dynamic>('itens_selecionados', value);

  dynamic get trechos => getField<dynamic>('trechos');
  set trechos(dynamic value) => setField<dynamic>('trechos', value);

  dynamic get pisos => getField<dynamic>('pisos');
  set pisos(dynamic value) => setField<dynamic>('pisos', value);

  dynamic get listaPecas => getField<dynamic>('lista_pecas');
  set listaPecas(dynamic value) => setField<dynamic>('lista_pecas', value);

  double? get somaVTotal => getField<double>('soma_v_total');
  set somaVTotal(double? value) => setField<double>('soma_v_total', value);

  double? get somaAreaNivel => getField<double>('soma_area_nivel');
  set somaAreaNivel(double? value) =>
      setField<double>('soma_area_nivel', value);

  int? get somaQuantidadePrevista => getField<int>('soma_quantidade_prevista');
  set somaQuantidadePrevista(int? value) =>
      setField<int>('soma_quantidade_prevista', value);
}

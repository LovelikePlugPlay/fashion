import '../database.dart';

class UtilizacaoCartaoTable extends SupabaseTable<UtilizacaoCartaoRow> {
  @override
  String get tableName => 'utilizacao_cartao';

  @override
  UtilizacaoCartaoRow createRow(Map<String, dynamic> data) =>
      UtilizacaoCartaoRow(data);
}

class UtilizacaoCartaoRow extends SupabaseDataRow {
  UtilizacaoCartaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UtilizacaoCartaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get usuarioId => getField<int>('usuario_id');
  set usuarioId(int? value) => setField<int>('usuario_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCompra => getField<double>('valor_compra');
  set valorCompra(double? value) => setField<double>('valor_compra', value);
}

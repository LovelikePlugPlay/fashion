import '../database.dart';

class ResultadoTable extends SupabaseTable<ResultadoRow> {
  @override
  String get tableName => 'resultado';

  @override
  ResultadoRow createRow(Map<String, dynamic> data) => ResultadoRow(data);
}

class ResultadoRow extends SupabaseDataRow {
  ResultadoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ResultadoTable();

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

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

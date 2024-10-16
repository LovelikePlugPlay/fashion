import '../database.dart';

class ViewResultadoTable extends SupabaseTable<ViewResultadoRow> {
  @override
  String get tableName => 'view_resultado';

  @override
  ViewResultadoRow createRow(Map<String, dynamic> data) =>
      ViewResultadoRow(data);
}

class ViewResultadoRow extends SupabaseDataRow {
  ViewResultadoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewResultadoTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get usuarioId => getField<int>('usuario_id');
  set usuarioId(int? value) => setField<int>('usuario_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCompra => getField<double>('valor_compra');
  set valorCompra(double? value) => setField<double>('valor_compra', value);

  double? get valorTarifa => getField<double>('valor_tarifa');
  set valorTarifa(double? value) => setField<double>('valor_tarifa', value);

  double? get valorVisa => getField<double>('valor_visa');
  set valorVisa(double? value) => setField<double>('valor_visa', value);

  double? get valorFatura => getField<double>('valor_fatura');
  set valorFatura(double? value) => setField<double>('valor_fatura', value);
}

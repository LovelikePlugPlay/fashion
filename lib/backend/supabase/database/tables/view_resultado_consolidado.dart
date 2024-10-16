import '../database.dart';

class ViewResultadoConsolidadoTable
    extends SupabaseTable<ViewResultadoConsolidadoRow> {
  @override
  String get tableName => 'view_resultado_consolidado';

  @override
  ViewResultadoConsolidadoRow createRow(Map<String, dynamic> data) =>
      ViewResultadoConsolidadoRow(data);
}

class ViewResultadoConsolidadoRow extends SupabaseDataRow {
  ViewResultadoConsolidadoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewResultadoConsolidadoTable();

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorTarifa => getField<double>('valor_tarifa');
  set valorTarifa(double? value) => setField<double>('valor_tarifa', value);

  int? get quantidadeTransacoes => getField<int>('quantidade_transacoes');
  set quantidadeTransacoes(int? value) =>
      setField<int>('quantidade_transacoes', value);

  double? get valorTotalCompras => getField<double>('valor_total_compras');
  set valorTotalCompras(double? value) =>
      setField<double>('valor_total_compras', value);

  double? get valorVisa => getField<double>('valor_visa');
  set valorVisa(double? value) => setField<double>('valor_visa', value);

  double? get valorFatura => getField<double>('valor_fatura');
  set valorFatura(double? value) => setField<double>('valor_fatura', value);
}

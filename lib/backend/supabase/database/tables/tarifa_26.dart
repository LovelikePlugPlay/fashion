import '../database.dart';

class Tarifa26Table extends SupabaseTable<Tarifa26Row> {
  @override
  String get tableName => 'tarifa_26';

  @override
  Tarifa26Row createRow(Map<String, dynamic> data) => Tarifa26Row(data);
}

class Tarifa26Row extends SupabaseDataRow {
  Tarifa26Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa26Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

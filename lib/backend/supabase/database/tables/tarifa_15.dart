import '../database.dart';

class Tarifa15Table extends SupabaseTable<Tarifa15Row> {
  @override
  String get tableName => 'tarifa_15';

  @override
  Tarifa15Row createRow(Map<String, dynamic> data) => Tarifa15Row(data);
}

class Tarifa15Row extends SupabaseDataRow {
  Tarifa15Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa15Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

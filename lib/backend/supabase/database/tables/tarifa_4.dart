import '../database.dart';

class Tarifa4Table extends SupabaseTable<Tarifa4Row> {
  @override
  String get tableName => 'tarifa_4';

  @override
  Tarifa4Row createRow(Map<String, dynamic> data) => Tarifa4Row(data);
}

class Tarifa4Row extends SupabaseDataRow {
  Tarifa4Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa4Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

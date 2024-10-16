import '../database.dart';

class Tarifa18Table extends SupabaseTable<Tarifa18Row> {
  @override
  String get tableName => 'tarifa_18';

  @override
  Tarifa18Row createRow(Map<String, dynamic> data) => Tarifa18Row(data);
}

class Tarifa18Row extends SupabaseDataRow {
  Tarifa18Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa18Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

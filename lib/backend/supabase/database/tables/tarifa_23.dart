import '../database.dart';

class Tarifa23Table extends SupabaseTable<Tarifa23Row> {
  @override
  String get tableName => 'tarifa_23';

  @override
  Tarifa23Row createRow(Map<String, dynamic> data) => Tarifa23Row(data);
}

class Tarifa23Row extends SupabaseDataRow {
  Tarifa23Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa23Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

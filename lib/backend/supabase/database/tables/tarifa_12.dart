import '../database.dart';

class Tarifa12Table extends SupabaseTable<Tarifa12Row> {
  @override
  String get tableName => 'tarifa_12';

  @override
  Tarifa12Row createRow(Map<String, dynamic> data) => Tarifa12Row(data);
}

class Tarifa12Row extends SupabaseDataRow {
  Tarifa12Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa12Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

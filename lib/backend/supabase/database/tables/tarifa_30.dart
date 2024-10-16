import '../database.dart';

class Tarifa30Table extends SupabaseTable<Tarifa30Row> {
  @override
  String get tableName => 'tarifa_30';

  @override
  Tarifa30Row createRow(Map<String, dynamic> data) => Tarifa30Row(data);
}

class Tarifa30Row extends SupabaseDataRow {
  Tarifa30Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa30Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

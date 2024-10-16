import '../database.dart';

class Tarifa8Table extends SupabaseTable<Tarifa8Row> {
  @override
  String get tableName => 'tarifa_8';

  @override
  Tarifa8Row createRow(Map<String, dynamic> data) => Tarifa8Row(data);
}

class Tarifa8Row extends SupabaseDataRow {
  Tarifa8Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa8Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

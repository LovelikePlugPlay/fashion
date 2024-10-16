import '../database.dart';

class Tarifa5Table extends SupabaseTable<Tarifa5Row> {
  @override
  String get tableName => 'tarifa_5';

  @override
  Tarifa5Row createRow(Map<String, dynamic> data) => Tarifa5Row(data);
}

class Tarifa5Row extends SupabaseDataRow {
  Tarifa5Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa5Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

import '../database.dart';

class Tarifa14Table extends SupabaseTable<Tarifa14Row> {
  @override
  String get tableName => 'tarifa_14';

  @override
  Tarifa14Row createRow(Map<String, dynamic> data) => Tarifa14Row(data);
}

class Tarifa14Row extends SupabaseDataRow {
  Tarifa14Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa14Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

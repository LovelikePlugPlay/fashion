import '../database.dart';

class Tarifa32Table extends SupabaseTable<Tarifa32Row> {
  @override
  String get tableName => 'tarifa_32';

  @override
  Tarifa32Row createRow(Map<String, dynamic> data) => Tarifa32Row(data);
}

class Tarifa32Row extends SupabaseDataRow {
  Tarifa32Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa32Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

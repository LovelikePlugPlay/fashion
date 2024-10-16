import '../database.dart';

class Tarifa9Table extends SupabaseTable<Tarifa9Row> {
  @override
  String get tableName => 'tarifa_9';

  @override
  Tarifa9Row createRow(Map<String, dynamic> data) => Tarifa9Row(data);
}

class Tarifa9Row extends SupabaseDataRow {
  Tarifa9Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa9Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

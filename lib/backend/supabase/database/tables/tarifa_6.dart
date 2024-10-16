import '../database.dart';

class Tarifa6Table extends SupabaseTable<Tarifa6Row> {
  @override
  String get tableName => 'tarifa_6';

  @override
  Tarifa6Row createRow(Map<String, dynamic> data) => Tarifa6Row(data);
}

class Tarifa6Row extends SupabaseDataRow {
  Tarifa6Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa6Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

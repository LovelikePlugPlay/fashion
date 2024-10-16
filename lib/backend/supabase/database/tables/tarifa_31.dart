import '../database.dart';

class Tarifa31Table extends SupabaseTable<Tarifa31Row> {
  @override
  String get tableName => 'tarifa_31';

  @override
  Tarifa31Row createRow(Map<String, dynamic> data) => Tarifa31Row(data);
}

class Tarifa31Row extends SupabaseDataRow {
  Tarifa31Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa31Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

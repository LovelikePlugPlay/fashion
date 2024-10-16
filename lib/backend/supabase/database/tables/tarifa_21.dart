import '../database.dart';

class Tarifa21Table extends SupabaseTable<Tarifa21Row> {
  @override
  String get tableName => 'tarifa_21';

  @override
  Tarifa21Row createRow(Map<String, dynamic> data) => Tarifa21Row(data);
}

class Tarifa21Row extends SupabaseDataRow {
  Tarifa21Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa21Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

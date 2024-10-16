import '../database.dart';

class Tarifa34Table extends SupabaseTable<Tarifa34Row> {
  @override
  String get tableName => 'tarifa_34';

  @override
  Tarifa34Row createRow(Map<String, dynamic> data) => Tarifa34Row(data);
}

class Tarifa34Row extends SupabaseDataRow {
  Tarifa34Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa34Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

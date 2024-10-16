import '../database.dart';

class Tarifa16Table extends SupabaseTable<Tarifa16Row> {
  @override
  String get tableName => 'tarifa_16';

  @override
  Tarifa16Row createRow(Map<String, dynamic> data) => Tarifa16Row(data);
}

class Tarifa16Row extends SupabaseDataRow {
  Tarifa16Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa16Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

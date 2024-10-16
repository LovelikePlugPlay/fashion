import '../database.dart';

class Tarifa37Table extends SupabaseTable<Tarifa37Row> {
  @override
  String get tableName => 'tarifa_37';

  @override
  Tarifa37Row createRow(Map<String, dynamic> data) => Tarifa37Row(data);
}

class Tarifa37Row extends SupabaseDataRow {
  Tarifa37Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa37Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

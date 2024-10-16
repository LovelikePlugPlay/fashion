import '../database.dart';

class Tarifa35Table extends SupabaseTable<Tarifa35Row> {
  @override
  String get tableName => 'tarifa_35';

  @override
  Tarifa35Row createRow(Map<String, dynamic> data) => Tarifa35Row(data);
}

class Tarifa35Row extends SupabaseDataRow {
  Tarifa35Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa35Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

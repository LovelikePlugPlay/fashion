import '../database.dart';

class Tarifa13Table extends SupabaseTable<Tarifa13Row> {
  @override
  String get tableName => 'tarifa_13';

  @override
  Tarifa13Row createRow(Map<String, dynamic> data) => Tarifa13Row(data);
}

class Tarifa13Row extends SupabaseDataRow {
  Tarifa13Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa13Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

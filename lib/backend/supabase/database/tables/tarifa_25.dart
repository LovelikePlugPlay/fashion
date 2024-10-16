import '../database.dart';

class Tarifa25Table extends SupabaseTable<Tarifa25Row> {
  @override
  String get tableName => 'tarifa_25';

  @override
  Tarifa25Row createRow(Map<String, dynamic> data) => Tarifa25Row(data);
}

class Tarifa25Row extends SupabaseDataRow {
  Tarifa25Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa25Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

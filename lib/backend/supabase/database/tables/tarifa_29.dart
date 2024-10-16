import '../database.dart';

class Tarifa29Table extends SupabaseTable<Tarifa29Row> {
  @override
  String get tableName => 'tarifa_29';

  @override
  Tarifa29Row createRow(Map<String, dynamic> data) => Tarifa29Row(data);
}

class Tarifa29Row extends SupabaseDataRow {
  Tarifa29Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa29Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

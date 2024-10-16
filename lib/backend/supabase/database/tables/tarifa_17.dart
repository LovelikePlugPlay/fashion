import '../database.dart';

class Tarifa17Table extends SupabaseTable<Tarifa17Row> {
  @override
  String get tableName => 'tarifa_17';

  @override
  Tarifa17Row createRow(Map<String, dynamic> data) => Tarifa17Row(data);
}

class Tarifa17Row extends SupabaseDataRow {
  Tarifa17Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa17Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

import '../database.dart';

class Tarifa24Table extends SupabaseTable<Tarifa24Row> {
  @override
  String get tableName => 'tarifa_24';

  @override
  Tarifa24Row createRow(Map<String, dynamic> data) => Tarifa24Row(data);
}

class Tarifa24Row extends SupabaseDataRow {
  Tarifa24Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa24Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

import '../database.dart';

class Tarifa19Table extends SupabaseTable<Tarifa19Row> {
  @override
  String get tableName => 'tarifa_19';

  @override
  Tarifa19Row createRow(Map<String, dynamic> data) => Tarifa19Row(data);
}

class Tarifa19Row extends SupabaseDataRow {
  Tarifa19Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa19Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

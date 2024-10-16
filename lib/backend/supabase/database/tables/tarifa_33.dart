import '../database.dart';

class Tarifa33Table extends SupabaseTable<Tarifa33Row> {
  @override
  String get tableName => 'tarifa_33';

  @override
  Tarifa33Row createRow(Map<String, dynamic> data) => Tarifa33Row(data);
}

class Tarifa33Row extends SupabaseDataRow {
  Tarifa33Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa33Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

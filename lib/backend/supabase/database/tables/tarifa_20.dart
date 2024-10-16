import '../database.dart';

class Tarifa20Table extends SupabaseTable<Tarifa20Row> {
  @override
  String get tableName => 'tarifa_20';

  @override
  Tarifa20Row createRow(Map<String, dynamic> data) => Tarifa20Row(data);
}

class Tarifa20Row extends SupabaseDataRow {
  Tarifa20Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa20Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

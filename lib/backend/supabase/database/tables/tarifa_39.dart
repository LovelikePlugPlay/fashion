import '../database.dart';

class Tarifa39Table extends SupabaseTable<Tarifa39Row> {
  @override
  String get tableName => 'tarifa_39';

  @override
  Tarifa39Row createRow(Map<String, dynamic> data) => Tarifa39Row(data);
}

class Tarifa39Row extends SupabaseDataRow {
  Tarifa39Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa39Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

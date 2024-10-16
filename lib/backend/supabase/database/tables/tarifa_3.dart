import '../database.dart';

class Tarifa3Table extends SupabaseTable<Tarifa3Row> {
  @override
  String get tableName => 'tarifa_3';

  @override
  Tarifa3Row createRow(Map<String, dynamic> data) => Tarifa3Row(data);
}

class Tarifa3Row extends SupabaseDataRow {
  Tarifa3Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa3Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

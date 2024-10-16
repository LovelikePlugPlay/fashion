import '../database.dart';

class Tarifa22Table extends SupabaseTable<Tarifa22Row> {
  @override
  String get tableName => 'tarifa_22';

  @override
  Tarifa22Row createRow(Map<String, dynamic> data) => Tarifa22Row(data);
}

class Tarifa22Row extends SupabaseDataRow {
  Tarifa22Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa22Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

import '../database.dart';

class Tarifa2Table extends SupabaseTable<Tarifa2Row> {
  @override
  String get tableName => 'tarifa_2';

  @override
  Tarifa2Row createRow(Map<String, dynamic> data) => Tarifa2Row(data);
}

class Tarifa2Row extends SupabaseDataRow {
  Tarifa2Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa2Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

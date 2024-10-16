import '../database.dart';

class Tarifa28Table extends SupabaseTable<Tarifa28Row> {
  @override
  String get tableName => 'tarifa_28';

  @override
  Tarifa28Row createRow(Map<String, dynamic> data) => Tarifa28Row(data);
}

class Tarifa28Row extends SupabaseDataRow {
  Tarifa28Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa28Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

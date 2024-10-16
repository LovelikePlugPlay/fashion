import '../database.dart';

class Tarifa36Table extends SupabaseTable<Tarifa36Row> {
  @override
  String get tableName => 'tarifa_36';

  @override
  Tarifa36Row createRow(Map<String, dynamic> data) => Tarifa36Row(data);
}

class Tarifa36Row extends SupabaseDataRow {
  Tarifa36Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa36Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

import '../database.dart';

class Tarifa27Table extends SupabaseTable<Tarifa27Row> {
  @override
  String get tableName => 'tarifa_27';

  @override
  Tarifa27Row createRow(Map<String, dynamic> data) => Tarifa27Row(data);
}

class Tarifa27Row extends SupabaseDataRow {
  Tarifa27Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tarifa27Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tipoCobranca => getField<String>('tipo_cobranca');
  set tipoCobranca(String? value) => setField<String>('tipo_cobranca', value);

  double? get valorCobranca => getField<double>('valor_cobranca');
  set valorCobranca(double? value) => setField<double>('valor_cobranca', value);
}

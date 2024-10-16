import '../database.dart';

class MarcasTable extends SupabaseTable<MarcasRow> {
  @override
  String get tableName => 'Marcas';

  @override
  MarcasRow createRow(Map<String, dynamic> data) => MarcasRow(data);
}

class MarcasRow extends SupabaseDataRow {
  MarcasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MarcasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get marca => getField<String>('marca');
  set marca(String? value) => setField<String>('marca', value);
}

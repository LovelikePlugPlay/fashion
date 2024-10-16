import '../database.dart';

class VendasTable extends SupabaseTable<VendasRow> {
  @override
  String get tableName => 'Vendas';

  @override
  VendasRow createRow(Map<String, dynamic> data) => VendasRow(data);
}

class VendasRow extends SupabaseDataRow {
  VendasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VendasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String? get marca => getField<String>('marca');
  set marca(String? value) => setField<String>('marca', value);

  String? get sku => getField<String>('sku');
  set sku(String? value) => setField<String>('sku', value);

  String? get codRref => getField<String>('codRref');
  set codRref(String? value) => setField<String>('codRref', value);

  double? get quantidadeDisponivel => getField<double>('quantidadeDisponivel');
  set quantidadeDisponivel(double? value) =>
      setField<double>('quantidadeDisponivel', value);

  String? get preco => getField<String>('Preco');
  set preco(String? value) => setField<String>('Preco', value);

  String? get precoPromocional => getField<String>('precoPromocional');
  set precoPromocional(String? value) =>
      setField<String>('precoPromocional', value);

  String? get uuidMarca => getField<String>('uuidMarca');
  set uuidMarca(String? value) => setField<String>('uuidMarca', value);

  int? get idMarca => getField<int>('idMarca');
  set idMarca(int? value) => setField<int>('idMarca', value);

  String? get formaPagamento => getField<String>('formaPagamento');
  set formaPagamento(String? value) =>
      setField<String>('formaPagamento', value);
}

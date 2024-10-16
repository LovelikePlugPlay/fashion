import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  DateTime? get lastActivity => getField<DateTime>('last_activity');
  set lastActivity(DateTime? value) =>
      setField<DateTime>('last_activity', value);

  String? get permissoes => getField<String>('permissoes');
  set permissoes(String? value) => setField<String>('permissoes', value);

  DateTime? get creatAt => getField<DateTime>('creat_at');
  set creatAt(DateTime? value) => setField<DateTime>('creat_at', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);

  String? get fotoPerfil => getField<String>('foto_perfil');
  set fotoPerfil(String? value) => setField<String>('foto_perfil', value);

  String? get marca => getField<String>('marca');
  set marca(String? value) => setField<String>('marca', value);

  bool? get autorizado => getField<bool>('autorizado');
  set autorizado(bool? value) => setField<bool>('autorizado', value);
}

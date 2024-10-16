// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtUsuarioStruct extends BaseStruct {
  DtUsuarioStruct({
    int? id,
    String? nome,
    String? email,
    String? lastActivity,
    String? permissoes,
    String? creatAt,
    String? uuid,
    String? fotoPerfil,
    String? marca,
    bool? autorizado,
  })  : _id = id,
        _nome = nome,
        _email = email,
        _lastActivity = lastActivity,
        _permissoes = permissoes,
        _creatAt = creatAt,
        _uuid = uuid,
        _fotoPerfil = fotoPerfil,
        _marca = marca,
        _autorizado = autorizado;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "last_activity" field.
  String? _lastActivity;
  String get lastActivity => _lastActivity ?? '';
  set lastActivity(String? val) => _lastActivity = val;

  bool hasLastActivity() => _lastActivity != null;

  // "permissoes" field.
  String? _permissoes;
  String get permissoes => _permissoes ?? '';
  set permissoes(String? val) => _permissoes = val;

  bool hasPermissoes() => _permissoes != null;

  // "creat_at" field.
  String? _creatAt;
  String get creatAt => _creatAt ?? '';
  set creatAt(String? val) => _creatAt = val;

  bool hasCreatAt() => _creatAt != null;

  // "uuid" field.
  String? _uuid;
  String get uuid => _uuid ?? '';
  set uuid(String? val) => _uuid = val;

  bool hasUuid() => _uuid != null;

  // "foto_perfil" field.
  String? _fotoPerfil;
  String get fotoPerfil => _fotoPerfil ?? '';
  set fotoPerfil(String? val) => _fotoPerfil = val;

  bool hasFotoPerfil() => _fotoPerfil != null;

  // "marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  set marca(String? val) => _marca = val;

  bool hasMarca() => _marca != null;

  // "autorizado" field.
  bool? _autorizado;
  bool get autorizado => _autorizado ?? false;
  set autorizado(bool? val) => _autorizado = val;

  bool hasAutorizado() => _autorizado != null;

  static DtUsuarioStruct fromMap(Map<String, dynamic> data) => DtUsuarioStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        email: data['email'] as String?,
        lastActivity: data['last_activity'] as String?,
        permissoes: data['permissoes'] as String?,
        creatAt: data['creat_at'] as String?,
        uuid: data['uuid'] as String?,
        fotoPerfil: data['foto_perfil'] as String?,
        marca: data['marca'] as String?,
        autorizado: data['autorizado'] as bool?,
      );

  static DtUsuarioStruct? maybeFromMap(dynamic data) => data is Map
      ? DtUsuarioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'email': _email,
        'last_activity': _lastActivity,
        'permissoes': _permissoes,
        'creat_at': _creatAt,
        'uuid': _uuid,
        'foto_perfil': _fotoPerfil,
        'marca': _marca,
        'autorizado': _autorizado,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'last_activity': serializeParam(
          _lastActivity,
          ParamType.String,
        ),
        'permissoes': serializeParam(
          _permissoes,
          ParamType.String,
        ),
        'creat_at': serializeParam(
          _creatAt,
          ParamType.String,
        ),
        'uuid': serializeParam(
          _uuid,
          ParamType.String,
        ),
        'foto_perfil': serializeParam(
          _fotoPerfil,
          ParamType.String,
        ),
        'marca': serializeParam(
          _marca,
          ParamType.String,
        ),
        'autorizado': serializeParam(
          _autorizado,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DtUsuarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtUsuarioStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        lastActivity: deserializeParam(
          data['last_activity'],
          ParamType.String,
          false,
        ),
        permissoes: deserializeParam(
          data['permissoes'],
          ParamType.String,
          false,
        ),
        creatAt: deserializeParam(
          data['creat_at'],
          ParamType.String,
          false,
        ),
        uuid: deserializeParam(
          data['uuid'],
          ParamType.String,
          false,
        ),
        fotoPerfil: deserializeParam(
          data['foto_perfil'],
          ParamType.String,
          false,
        ),
        marca: deserializeParam(
          data['marca'],
          ParamType.String,
          false,
        ),
        autorizado: deserializeParam(
          data['autorizado'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'DtUsuarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtUsuarioStruct &&
        id == other.id &&
        nome == other.nome &&
        email == other.email &&
        lastActivity == other.lastActivity &&
        permissoes == other.permissoes &&
        creatAt == other.creatAt &&
        uuid == other.uuid &&
        fotoPerfil == other.fotoPerfil &&
        marca == other.marca &&
        autorizado == other.autorizado;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nome,
        email,
        lastActivity,
        permissoes,
        creatAt,
        uuid,
        fotoPerfil,
        marca,
        autorizado
      ]);
}

DtUsuarioStruct createDtUsuarioStruct({
  int? id,
  String? nome,
  String? email,
  String? lastActivity,
  String? permissoes,
  String? creatAt,
  String? uuid,
  String? fotoPerfil,
  String? marca,
  bool? autorizado,
}) =>
    DtUsuarioStruct(
      id: id,
      nome: nome,
      email: email,
      lastActivity: lastActivity,
      permissoes: permissoes,
      creatAt: creatAt,
      uuid: uuid,
      fotoPerfil: fotoPerfil,
      marca: marca,
      autorizado: autorizado,
    );

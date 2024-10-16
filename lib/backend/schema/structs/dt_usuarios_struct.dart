// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtUsuariosStruct extends BaseStruct {
  DtUsuariosStruct({
    int? id,
    String? nome,
    String? email,
    String? lastActivity,
    String? permissoes,
    String? creatAt,
    String? uuid,
    String? fotoPerfil,
  })  : _id = id,
        _nome = nome,
        _email = email,
        _lastActivity = lastActivity,
        _permissoes = permissoes,
        _creatAt = creatAt,
        _uuid = uuid,
        _fotoPerfil = fotoPerfil;

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

  static DtUsuariosStruct fromMap(Map<String, dynamic> data) =>
      DtUsuariosStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        email: data['email'] as String?,
        lastActivity: data['last_activity'] as String?,
        permissoes: data['permissoes'] as String?,
        creatAt: data['creat_at'] as String?,
        uuid: data['uuid'] as String?,
        fotoPerfil: data['foto_perfil'] as String?,
      );

  static DtUsuariosStruct? maybeFromMap(dynamic data) => data is Map
      ? DtUsuariosStruct.fromMap(data.cast<String, dynamic>())
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
      }.withoutNulls;

  static DtUsuariosStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtUsuariosStruct(
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
      );

  @override
  String toString() => 'DtUsuariosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtUsuariosStruct &&
        id == other.id &&
        nome == other.nome &&
        email == other.email &&
        lastActivity == other.lastActivity &&
        permissoes == other.permissoes &&
        creatAt == other.creatAt &&
        uuid == other.uuid &&
        fotoPerfil == other.fotoPerfil;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, nome, email, lastActivity, permissoes, creatAt, uuid, fotoPerfil]);
}

DtUsuariosStruct createDtUsuariosStruct({
  int? id,
  String? nome,
  String? email,
  String? lastActivity,
  String? permissoes,
  String? creatAt,
  String? uuid,
  String? fotoPerfil,
}) =>
    DtUsuariosStruct(
      id: id,
      nome: nome,
      email: email,
      lastActivity: lastActivity,
      permissoes: permissoes,
      creatAt: creatAt,
      uuid: uuid,
      fotoPerfil: fotoPerfil,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtResultadoDetalhadoStruct extends BaseStruct {
  DtResultadoDetalhadoStruct({
    int? id,
    int? usuarioId,
    String? nome,
    String? tipoCobranca,
    double? valorCompra,
    double? valorTarifa,
    double? valorVisa,
    double? valorFatura,
  })  : _id = id,
        _usuarioId = usuarioId,
        _nome = nome,
        _tipoCobranca = tipoCobranca,
        _valorCompra = valorCompra,
        _valorTarifa = valorTarifa,
        _valorVisa = valorVisa,
        _valorFatura = valorFatura;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "usuario_id" field.
  int? _usuarioId;
  int get usuarioId => _usuarioId ?? 0;
  set usuarioId(int? val) => _usuarioId = val;

  void incrementUsuarioId(int amount) => usuarioId = usuarioId + amount;

  bool hasUsuarioId() => _usuarioId != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "tipo_cobranca" field.
  String? _tipoCobranca;
  String get tipoCobranca => _tipoCobranca ?? '';
  set tipoCobranca(String? val) => _tipoCobranca = val;

  bool hasTipoCobranca() => _tipoCobranca != null;

  // "valor_compra" field.
  double? _valorCompra;
  double get valorCompra => _valorCompra ?? 0.0;
  set valorCompra(double? val) => _valorCompra = val;

  void incrementValorCompra(double amount) =>
      valorCompra = valorCompra + amount;

  bool hasValorCompra() => _valorCompra != null;

  // "valor_tarifa" field.
  double? _valorTarifa;
  double get valorTarifa => _valorTarifa ?? 0.0;
  set valorTarifa(double? val) => _valorTarifa = val;

  void incrementValorTarifa(double amount) =>
      valorTarifa = valorTarifa + amount;

  bool hasValorTarifa() => _valorTarifa != null;

  // "valor_visa" field.
  double? _valorVisa;
  double get valorVisa => _valorVisa ?? 0.0;
  set valorVisa(double? val) => _valorVisa = val;

  void incrementValorVisa(double amount) => valorVisa = valorVisa + amount;

  bool hasValorVisa() => _valorVisa != null;

  // "valor_fatura" field.
  double? _valorFatura;
  double get valorFatura => _valorFatura ?? 0.0;
  set valorFatura(double? val) => _valorFatura = val;

  void incrementValorFatura(double amount) =>
      valorFatura = valorFatura + amount;

  bool hasValorFatura() => _valorFatura != null;

  static DtResultadoDetalhadoStruct fromMap(Map<String, dynamic> data) =>
      DtResultadoDetalhadoStruct(
        id: castToType<int>(data['id']),
        usuarioId: castToType<int>(data['usuario_id']),
        nome: data['nome'] as String?,
        tipoCobranca: data['tipo_cobranca'] as String?,
        valorCompra: castToType<double>(data['valor_compra']),
        valorTarifa: castToType<double>(data['valor_tarifa']),
        valorVisa: castToType<double>(data['valor_visa']),
        valorFatura: castToType<double>(data['valor_fatura']),
      );

  static DtResultadoDetalhadoStruct? maybeFromMap(dynamic data) => data is Map
      ? DtResultadoDetalhadoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'usuario_id': _usuarioId,
        'nome': _nome,
        'tipo_cobranca': _tipoCobranca,
        'valor_compra': _valorCompra,
        'valor_tarifa': _valorTarifa,
        'valor_visa': _valorVisa,
        'valor_fatura': _valorFatura,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'usuario_id': serializeParam(
          _usuarioId,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'tipo_cobranca': serializeParam(
          _tipoCobranca,
          ParamType.String,
        ),
        'valor_compra': serializeParam(
          _valorCompra,
          ParamType.double,
        ),
        'valor_tarifa': serializeParam(
          _valorTarifa,
          ParamType.double,
        ),
        'valor_visa': serializeParam(
          _valorVisa,
          ParamType.double,
        ),
        'valor_fatura': serializeParam(
          _valorFatura,
          ParamType.double,
        ),
      }.withoutNulls;

  static DtResultadoDetalhadoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtResultadoDetalhadoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        usuarioId: deserializeParam(
          data['usuario_id'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        tipoCobranca: deserializeParam(
          data['tipo_cobranca'],
          ParamType.String,
          false,
        ),
        valorCompra: deserializeParam(
          data['valor_compra'],
          ParamType.double,
          false,
        ),
        valorTarifa: deserializeParam(
          data['valor_tarifa'],
          ParamType.double,
          false,
        ),
        valorVisa: deserializeParam(
          data['valor_visa'],
          ParamType.double,
          false,
        ),
        valorFatura: deserializeParam(
          data['valor_fatura'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DtResultadoDetalhadoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtResultadoDetalhadoStruct &&
        id == other.id &&
        usuarioId == other.usuarioId &&
        nome == other.nome &&
        tipoCobranca == other.tipoCobranca &&
        valorCompra == other.valorCompra &&
        valorTarifa == other.valorTarifa &&
        valorVisa == other.valorVisa &&
        valorFatura == other.valorFatura;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        usuarioId,
        nome,
        tipoCobranca,
        valorCompra,
        valorTarifa,
        valorVisa,
        valorFatura
      ]);
}

DtResultadoDetalhadoStruct createDtResultadoDetalhadoStruct({
  int? id,
  int? usuarioId,
  String? nome,
  String? tipoCobranca,
  double? valorCompra,
  double? valorTarifa,
  double? valorVisa,
  double? valorFatura,
}) =>
    DtResultadoDetalhadoStruct(
      id: id,
      usuarioId: usuarioId,
      nome: nome,
      tipoCobranca: tipoCobranca,
      valorCompra: valorCompra,
      valorTarifa: valorTarifa,
      valorVisa: valorVisa,
      valorFatura: valorFatura,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtRelatorioConsolidadoStruct extends BaseStruct {
  DtRelatorioConsolidadoStruct({
    String? tipoCobranca,
    double? valorTarifa,
    int? quantidadeTransacoes,
    double? valorTotalCompras,
    double? valorVisa,
    double? valorFatura,
  })  : _tipoCobranca = tipoCobranca,
        _valorTarifa = valorTarifa,
        _quantidadeTransacoes = quantidadeTransacoes,
        _valorTotalCompras = valorTotalCompras,
        _valorVisa = valorVisa,
        _valorFatura = valorFatura;

  // "tipo_cobranca" field.
  String? _tipoCobranca;
  String get tipoCobranca => _tipoCobranca ?? '';
  set tipoCobranca(String? val) => _tipoCobranca = val;

  bool hasTipoCobranca() => _tipoCobranca != null;

  // "valor_tarifa" field.
  double? _valorTarifa;
  double get valorTarifa => _valorTarifa ?? 0.0;
  set valorTarifa(double? val) => _valorTarifa = val;

  void incrementValorTarifa(double amount) =>
      valorTarifa = valorTarifa + amount;

  bool hasValorTarifa() => _valorTarifa != null;

  // "quantidade_transacoes" field.
  int? _quantidadeTransacoes;
  int get quantidadeTransacoes => _quantidadeTransacoes ?? 0;
  set quantidadeTransacoes(int? val) => _quantidadeTransacoes = val;

  void incrementQuantidadeTransacoes(int amount) =>
      quantidadeTransacoes = quantidadeTransacoes + amount;

  bool hasQuantidadeTransacoes() => _quantidadeTransacoes != null;

  // "valor_total_compras" field.
  double? _valorTotalCompras;
  double get valorTotalCompras => _valorTotalCompras ?? 0.0;
  set valorTotalCompras(double? val) => _valorTotalCompras = val;

  void incrementValorTotalCompras(double amount) =>
      valorTotalCompras = valorTotalCompras + amount;

  bool hasValorTotalCompras() => _valorTotalCompras != null;

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

  static DtRelatorioConsolidadoStruct fromMap(Map<String, dynamic> data) =>
      DtRelatorioConsolidadoStruct(
        tipoCobranca: data['tipo_cobranca'] as String?,
        valorTarifa: castToType<double>(data['valor_tarifa']),
        quantidadeTransacoes: castToType<int>(data['quantidade_transacoes']),
        valorTotalCompras: castToType<double>(data['valor_total_compras']),
        valorVisa: castToType<double>(data['valor_visa']),
        valorFatura: castToType<double>(data['valor_fatura']),
      );

  static DtRelatorioConsolidadoStruct? maybeFromMap(dynamic data) => data is Map
      ? DtRelatorioConsolidadoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tipo_cobranca': _tipoCobranca,
        'valor_tarifa': _valorTarifa,
        'quantidade_transacoes': _quantidadeTransacoes,
        'valor_total_compras': _valorTotalCompras,
        'valor_visa': _valorVisa,
        'valor_fatura': _valorFatura,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tipo_cobranca': serializeParam(
          _tipoCobranca,
          ParamType.String,
        ),
        'valor_tarifa': serializeParam(
          _valorTarifa,
          ParamType.double,
        ),
        'quantidade_transacoes': serializeParam(
          _quantidadeTransacoes,
          ParamType.int,
        ),
        'valor_total_compras': serializeParam(
          _valorTotalCompras,
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

  static DtRelatorioConsolidadoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DtRelatorioConsolidadoStruct(
        tipoCobranca: deserializeParam(
          data['tipo_cobranca'],
          ParamType.String,
          false,
        ),
        valorTarifa: deserializeParam(
          data['valor_tarifa'],
          ParamType.double,
          false,
        ),
        quantidadeTransacoes: deserializeParam(
          data['quantidade_transacoes'],
          ParamType.int,
          false,
        ),
        valorTotalCompras: deserializeParam(
          data['valor_total_compras'],
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
  String toString() => 'DtRelatorioConsolidadoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtRelatorioConsolidadoStruct &&
        tipoCobranca == other.tipoCobranca &&
        valorTarifa == other.valorTarifa &&
        quantidadeTransacoes == other.quantidadeTransacoes &&
        valorTotalCompras == other.valorTotalCompras &&
        valorVisa == other.valorVisa &&
        valorFatura == other.valorFatura;
  }

  @override
  int get hashCode => const ListEquality().hash([
        tipoCobranca,
        valorTarifa,
        quantidadeTransacoes,
        valorTotalCompras,
        valorVisa,
        valorFatura
      ]);
}

DtRelatorioConsolidadoStruct createDtRelatorioConsolidadoStruct({
  String? tipoCobranca,
  double? valorTarifa,
  int? quantidadeTransacoes,
  double? valorTotalCompras,
  double? valorVisa,
  double? valorFatura,
}) =>
    DtRelatorioConsolidadoStruct(
      tipoCobranca: tipoCobranca,
      valorTarifa: valorTarifa,
      quantidadeTransacoes: quantidadeTransacoes,
      valorTotalCompras: valorTotalCompras,
      valorVisa: valorVisa,
      valorFatura: valorFatura,
    );

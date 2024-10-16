// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVendasADMStruct extends BaseStruct {
  DtVendasADMStruct({
    int? id,
    String? createdAt,
    String? nome,
    String? categoria,
    String? marca,
    String? sku,
    String? codRref,
    double? preco,
    String? uuidMarca,
    String? formaPagamento,
    int? itensVendidos,
    double? valorVendas,
    double? quantidadeDisponivel,
  })  : _id = id,
        _createdAt = createdAt,
        _nome = nome,
        _categoria = categoria,
        _marca = marca,
        _sku = sku,
        _codRref = codRref,
        _preco = preco,
        _uuidMarca = uuidMarca,
        _formaPagamento = formaPagamento,
        _itensVendidos = itensVendidos,
        _valorVendas = valorVendas,
        _quantidadeDisponivel = quantidadeDisponivel;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  set categoria(String? val) => _categoria = val;

  bool hasCategoria() => _categoria != null;

  // "marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  set marca(String? val) => _marca = val;

  bool hasMarca() => _marca != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  set sku(String? val) => _sku = val;

  bool hasSku() => _sku != null;

  // "codRref" field.
  String? _codRref;
  String get codRref => _codRref ?? '';
  set codRref(String? val) => _codRref = val;

  bool hasCodRref() => _codRref != null;

  // "Preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;

  void incrementPreco(double amount) => preco = preco + amount;

  bool hasPreco() => _preco != null;

  // "uuidMarca" field.
  String? _uuidMarca;
  String get uuidMarca => _uuidMarca ?? '';
  set uuidMarca(String? val) => _uuidMarca = val;

  bool hasUuidMarca() => _uuidMarca != null;

  // "formaPagamento" field.
  String? _formaPagamento;
  String get formaPagamento => _formaPagamento ?? '';
  set formaPagamento(String? val) => _formaPagamento = val;

  bool hasFormaPagamento() => _formaPagamento != null;

  // "itensVendidos" field.
  int? _itensVendidos;
  int get itensVendidos => _itensVendidos ?? 0;
  set itensVendidos(int? val) => _itensVendidos = val;

  void incrementItensVendidos(int amount) =>
      itensVendidos = itensVendidos + amount;

  bool hasItensVendidos() => _itensVendidos != null;

  // "valorVendas" field.
  double? _valorVendas;
  double get valorVendas => _valorVendas ?? 0.0;
  set valorVendas(double? val) => _valorVendas = val;

  void incrementValorVendas(double amount) =>
      valorVendas = valorVendas + amount;

  bool hasValorVendas() => _valorVendas != null;

  // "quantidadeDisponivel" field.
  double? _quantidadeDisponivel;
  double get quantidadeDisponivel => _quantidadeDisponivel ?? 0.0;
  set quantidadeDisponivel(double? val) => _quantidadeDisponivel = val;

  void incrementQuantidadeDisponivel(double amount) =>
      quantidadeDisponivel = quantidadeDisponivel + amount;

  bool hasQuantidadeDisponivel() => _quantidadeDisponivel != null;

  static DtVendasADMStruct fromMap(Map<String, dynamic> data) =>
      DtVendasADMStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        nome: data['nome'] as String?,
        categoria: data['categoria'] as String?,
        marca: data['marca'] as String?,
        sku: data['sku'] as String?,
        codRref: data['codRref'] as String?,
        preco: castToType<double>(data['Preco']),
        uuidMarca: data['uuidMarca'] as String?,
        formaPagamento: data['formaPagamento'] as String?,
        itensVendidos: castToType<int>(data['itensVendidos']),
        valorVendas: castToType<double>(data['valorVendas']),
        quantidadeDisponivel: castToType<double>(data['quantidadeDisponivel']),
      );

  static DtVendasADMStruct? maybeFromMap(dynamic data) => data is Map
      ? DtVendasADMStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'nome': _nome,
        'categoria': _categoria,
        'marca': _marca,
        'sku': _sku,
        'codRref': _codRref,
        'Preco': _preco,
        'uuidMarca': _uuidMarca,
        'formaPagamento': _formaPagamento,
        'itensVendidos': _itensVendidos,
        'valorVendas': _valorVendas,
        'quantidadeDisponivel': _quantidadeDisponivel,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'categoria': serializeParam(
          _categoria,
          ParamType.String,
        ),
        'marca': serializeParam(
          _marca,
          ParamType.String,
        ),
        'sku': serializeParam(
          _sku,
          ParamType.String,
        ),
        'codRref': serializeParam(
          _codRref,
          ParamType.String,
        ),
        'Preco': serializeParam(
          _preco,
          ParamType.double,
        ),
        'uuidMarca': serializeParam(
          _uuidMarca,
          ParamType.String,
        ),
        'formaPagamento': serializeParam(
          _formaPagamento,
          ParamType.String,
        ),
        'itensVendidos': serializeParam(
          _itensVendidos,
          ParamType.int,
        ),
        'valorVendas': serializeParam(
          _valorVendas,
          ParamType.double,
        ),
        'quantidadeDisponivel': serializeParam(
          _quantidadeDisponivel,
          ParamType.double,
        ),
      }.withoutNulls;

  static DtVendasADMStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtVendasADMStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        categoria: deserializeParam(
          data['categoria'],
          ParamType.String,
          false,
        ),
        marca: deserializeParam(
          data['marca'],
          ParamType.String,
          false,
        ),
        sku: deserializeParam(
          data['sku'],
          ParamType.String,
          false,
        ),
        codRref: deserializeParam(
          data['codRref'],
          ParamType.String,
          false,
        ),
        preco: deserializeParam(
          data['Preco'],
          ParamType.double,
          false,
        ),
        uuidMarca: deserializeParam(
          data['uuidMarca'],
          ParamType.String,
          false,
        ),
        formaPagamento: deserializeParam(
          data['formaPagamento'],
          ParamType.String,
          false,
        ),
        itensVendidos: deserializeParam(
          data['itensVendidos'],
          ParamType.int,
          false,
        ),
        valorVendas: deserializeParam(
          data['valorVendas'],
          ParamType.double,
          false,
        ),
        quantidadeDisponivel: deserializeParam(
          data['quantidadeDisponivel'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DtVendasADMStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVendasADMStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        nome == other.nome &&
        categoria == other.categoria &&
        marca == other.marca &&
        sku == other.sku &&
        codRref == other.codRref &&
        preco == other.preco &&
        uuidMarca == other.uuidMarca &&
        formaPagamento == other.formaPagamento &&
        itensVendidos == other.itensVendidos &&
        valorVendas == other.valorVendas &&
        quantidadeDisponivel == other.quantidadeDisponivel;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        nome,
        categoria,
        marca,
        sku,
        codRref,
        preco,
        uuidMarca,
        formaPagamento,
        itensVendidos,
        valorVendas,
        quantidadeDisponivel
      ]);
}

DtVendasADMStruct createDtVendasADMStruct({
  int? id,
  String? createdAt,
  String? nome,
  String? categoria,
  String? marca,
  String? sku,
  String? codRref,
  double? preco,
  String? uuidMarca,
  String? formaPagamento,
  int? itensVendidos,
  double? valorVendas,
  double? quantidadeDisponivel,
}) =>
    DtVendasADMStruct(
      id: id,
      createdAt: createdAt,
      nome: nome,
      categoria: categoria,
      marca: marca,
      sku: sku,
      codRref: codRref,
      preco: preco,
      uuidMarca: uuidMarca,
      formaPagamento: formaPagamento,
      itensVendidos: itensVendidos,
      valorVendas: valorVendas,
      quantidadeDisponivel: quantidadeDisponivel,
    );

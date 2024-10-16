// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtVendasStruct extends BaseStruct {
  DtVendasStruct({
    int? id,
    String? createdAt,
    String? nome,
    String? categoria,
    String? marca,
    String? sku,
    String? codRref,
    int? quantidadeDisponivel,
    String? uuidMarca,
    double? preco,
    String? formaPagamento,
    int? itensVendidos,
    double? valorVendas,
  })  : _id = id,
        _createdAt = createdAt,
        _nome = nome,
        _categoria = categoria,
        _marca = marca,
        _sku = sku,
        _codRref = codRref,
        _quantidadeDisponivel = quantidadeDisponivel,
        _uuidMarca = uuidMarca,
        _preco = preco,
        _formaPagamento = formaPagamento,
        _itensVendidos = itensVendidos,
        _valorVendas = valorVendas;

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

  // "quantidadeDisponivel" field.
  int? _quantidadeDisponivel;
  int get quantidadeDisponivel => _quantidadeDisponivel ?? 0;
  set quantidadeDisponivel(int? val) => _quantidadeDisponivel = val;

  void incrementQuantidadeDisponivel(int amount) =>
      quantidadeDisponivel = quantidadeDisponivel + amount;

  bool hasQuantidadeDisponivel() => _quantidadeDisponivel != null;

  // "uuidMarca" field.
  String? _uuidMarca;
  String get uuidMarca => _uuidMarca ?? '';
  set uuidMarca(String? val) => _uuidMarca = val;

  bool hasUuidMarca() => _uuidMarca != null;

  // "Preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;

  void incrementPreco(double amount) => preco = preco + amount;

  bool hasPreco() => _preco != null;

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

  static DtVendasStruct fromMap(Map<String, dynamic> data) => DtVendasStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        nome: data['nome'] as String?,
        categoria: data['categoria'] as String?,
        marca: data['marca'] as String?,
        sku: data['sku'] as String?,
        codRref: data['codRref'] as String?,
        quantidadeDisponivel: castToType<int>(data['quantidadeDisponivel']),
        uuidMarca: data['uuidMarca'] as String?,
        preco: castToType<double>(data['Preco']),
        formaPagamento: data['formaPagamento'] as String?,
        itensVendidos: castToType<int>(data['itensVendidos']),
        valorVendas: castToType<double>(data['valorVendas']),
      );

  static DtVendasStruct? maybeFromMap(dynamic data) =>
      data is Map ? DtVendasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'nome': _nome,
        'categoria': _categoria,
        'marca': _marca,
        'sku': _sku,
        'codRref': _codRref,
        'quantidadeDisponivel': _quantidadeDisponivel,
        'uuidMarca': _uuidMarca,
        'Preco': _preco,
        'formaPagamento': _formaPagamento,
        'itensVendidos': _itensVendidos,
        'valorVendas': _valorVendas,
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
        'quantidadeDisponivel': serializeParam(
          _quantidadeDisponivel,
          ParamType.int,
        ),
        'uuidMarca': serializeParam(
          _uuidMarca,
          ParamType.String,
        ),
        'Preco': serializeParam(
          _preco,
          ParamType.double,
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
      }.withoutNulls;

  static DtVendasStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtVendasStruct(
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
        quantidadeDisponivel: deserializeParam(
          data['quantidadeDisponivel'],
          ParamType.int,
          false,
        ),
        uuidMarca: deserializeParam(
          data['uuidMarca'],
          ParamType.String,
          false,
        ),
        preco: deserializeParam(
          data['Preco'],
          ParamType.double,
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
      );

  @override
  String toString() => 'DtVendasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtVendasStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        nome == other.nome &&
        categoria == other.categoria &&
        marca == other.marca &&
        sku == other.sku &&
        codRref == other.codRref &&
        quantidadeDisponivel == other.quantidadeDisponivel &&
        uuidMarca == other.uuidMarca &&
        preco == other.preco &&
        formaPagamento == other.formaPagamento &&
        itensVendidos == other.itensVendidos &&
        valorVendas == other.valorVendas;
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
        quantidadeDisponivel,
        uuidMarca,
        preco,
        formaPagamento,
        itensVendidos,
        valorVendas
      ]);
}

DtVendasStruct createDtVendasStruct({
  int? id,
  String? createdAt,
  String? nome,
  String? categoria,
  String? marca,
  String? sku,
  String? codRref,
  int? quantidadeDisponivel,
  String? uuidMarca,
  double? preco,
  String? formaPagamento,
  int? itensVendidos,
  double? valorVendas,
}) =>
    DtVendasStruct(
      id: id,
      createdAt: createdAt,
      nome: nome,
      categoria: categoria,
      marca: marca,
      sku: sku,
      codRref: codRref,
      quantidadeDisponivel: quantidadeDisponivel,
      uuidMarca: uuidMarca,
      preco: preco,
      formaPagamento: formaPagamento,
      itensVendidos: itensVendidos,
      valorVendas: valorVendas,
    );

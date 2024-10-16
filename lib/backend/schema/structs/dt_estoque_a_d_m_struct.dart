// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtEstoqueADMStruct extends BaseStruct {
  DtEstoqueADMStruct({
    int? id,
    String? createdAt,
    String? nome,
    String? categoria,
    String? marca,
    String? sku,
    String? codRref,
    String? uuidMarca,
    double? preco,
    double? quantidadeDisponivel,
    double? valorEstoque,
    int? itensEstoque,
  })  : _id = id,
        _createdAt = createdAt,
        _nome = nome,
        _categoria = categoria,
        _marca = marca,
        _sku = sku,
        _codRref = codRref,
        _uuidMarca = uuidMarca,
        _preco = preco,
        _quantidadeDisponivel = quantidadeDisponivel,
        _valorEstoque = valorEstoque,
        _itensEstoque = itensEstoque;

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

  // "quantidadeDisponivel" field.
  double? _quantidadeDisponivel;
  double get quantidadeDisponivel => _quantidadeDisponivel ?? 0.0;
  set quantidadeDisponivel(double? val) => _quantidadeDisponivel = val;

  void incrementQuantidadeDisponivel(double amount) =>
      quantidadeDisponivel = quantidadeDisponivel + amount;

  bool hasQuantidadeDisponivel() => _quantidadeDisponivel != null;

  // "valorEstoque" field.
  double? _valorEstoque;
  double get valorEstoque => _valorEstoque ?? 0.0;
  set valorEstoque(double? val) => _valorEstoque = val;

  void incrementValorEstoque(double amount) =>
      valorEstoque = valorEstoque + amount;

  bool hasValorEstoque() => _valorEstoque != null;

  // "itensEstoque" field.
  int? _itensEstoque;
  int get itensEstoque => _itensEstoque ?? 0;
  set itensEstoque(int? val) => _itensEstoque = val;

  void incrementItensEstoque(int amount) =>
      itensEstoque = itensEstoque + amount;

  bool hasItensEstoque() => _itensEstoque != null;

  static DtEstoqueADMStruct fromMap(Map<String, dynamic> data) =>
      DtEstoqueADMStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        nome: data['nome'] as String?,
        categoria: data['categoria'] as String?,
        marca: data['marca'] as String?,
        sku: data['sku'] as String?,
        codRref: data['codRref'] as String?,
        uuidMarca: data['uuidMarca'] as String?,
        preco: castToType<double>(data['Preco']),
        quantidadeDisponivel: castToType<double>(data['quantidadeDisponivel']),
        valorEstoque: castToType<double>(data['valorEstoque']),
        itensEstoque: castToType<int>(data['itensEstoque']),
      );

  static DtEstoqueADMStruct? maybeFromMap(dynamic data) => data is Map
      ? DtEstoqueADMStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'nome': _nome,
        'categoria': _categoria,
        'marca': _marca,
        'sku': _sku,
        'codRref': _codRref,
        'uuidMarca': _uuidMarca,
        'Preco': _preco,
        'quantidadeDisponivel': _quantidadeDisponivel,
        'valorEstoque': _valorEstoque,
        'itensEstoque': _itensEstoque,
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
        'uuidMarca': serializeParam(
          _uuidMarca,
          ParamType.String,
        ),
        'Preco': serializeParam(
          _preco,
          ParamType.double,
        ),
        'quantidadeDisponivel': serializeParam(
          _quantidadeDisponivel,
          ParamType.double,
        ),
        'valorEstoque': serializeParam(
          _valorEstoque,
          ParamType.double,
        ),
        'itensEstoque': serializeParam(
          _itensEstoque,
          ParamType.int,
        ),
      }.withoutNulls;

  static DtEstoqueADMStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtEstoqueADMStruct(
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
        quantidadeDisponivel: deserializeParam(
          data['quantidadeDisponivel'],
          ParamType.double,
          false,
        ),
        valorEstoque: deserializeParam(
          data['valorEstoque'],
          ParamType.double,
          false,
        ),
        itensEstoque: deserializeParam(
          data['itensEstoque'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtEstoqueADMStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtEstoqueADMStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        nome == other.nome &&
        categoria == other.categoria &&
        marca == other.marca &&
        sku == other.sku &&
        codRref == other.codRref &&
        uuidMarca == other.uuidMarca &&
        preco == other.preco &&
        quantidadeDisponivel == other.quantidadeDisponivel &&
        valorEstoque == other.valorEstoque &&
        itensEstoque == other.itensEstoque;
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
        uuidMarca,
        preco,
        quantidadeDisponivel,
        valorEstoque,
        itensEstoque
      ]);
}

DtEstoqueADMStruct createDtEstoqueADMStruct({
  int? id,
  String? createdAt,
  String? nome,
  String? categoria,
  String? marca,
  String? sku,
  String? codRref,
  String? uuidMarca,
  double? preco,
  double? quantidadeDisponivel,
  double? valorEstoque,
  int? itensEstoque,
}) =>
    DtEstoqueADMStruct(
      id: id,
      createdAt: createdAt,
      nome: nome,
      categoria: categoria,
      marca: marca,
      sku: sku,
      codRref: codRref,
      uuidMarca: uuidMarca,
      preco: preco,
      quantidadeDisponivel: quantidadeDisponivel,
      valorEstoque: valorEstoque,
      itensEstoque: itensEstoque,
    );

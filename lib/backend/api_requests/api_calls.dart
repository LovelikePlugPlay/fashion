import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start BD Group Code

class BdGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://thboylkaegbjrzpfnjgc.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQxMDQxMDIsImV4cCI6MjAzOTY4MDEwMn0.i3tAOh7qAQsis4VoLbsAfGHsitVntdb0Rs6dsbpDOAQ',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDEwNDEwMiwiZXhwIjoyMDM5NjgwMTAyfQ.TRLcwY-9WY1pHXTtn1K3-qqUkYwTqvoCB_DoA8HJmPc',
  };
  static ResultadoDetalhadoCall resultadoDetalhadoCall =
      ResultadoDetalhadoCall();
  static ApiUsuariosUUIDCall apiUsuariosUUIDCall = ApiUsuariosUUIDCall();
  static ApiUsuariosCall apiUsuariosCall = ApiUsuariosCall();
  static RelatorioConsolidadoCall relatorioConsolidadoCall =
      RelatorioConsolidadoCall();
  static ViewEstoqueCall viewEstoqueCall = ViewEstoqueCall();
  static ViewEstoqueADMCall viewEstoqueADMCall = ViewEstoqueADMCall();
  static SKUEstoqueCall sKUEstoqueCall = SKUEstoqueCall();
  static VendasCall vendasCall = VendasCall();
  static UsuarioUuidCall usuarioUuidCall = UsuarioUuidCall();
  static UsuarioMarcaCall usuarioMarcaCall = UsuarioMarcaCall();
  static VendasADMCall vendasADMCall = VendasADMCall();
}

class ResultadoDetalhadoCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = BdGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Resultado Detalhado',
      apiUrl: '${baseUrl}/view_resultado',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQxMDQxMDIsImV4cCI6MjAzOTY4MDEwMn0.i3tAOh7qAQsis4VoLbsAfGHsitVntdb0Rs6dsbpDOAQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDEwNDEwMiwiZXhwIjoyMDM5NjgwMTAyfQ.TRLcwY-9WY1pHXTtn1K3-qqUkYwTqvoCB_DoA8HJmPc',
      },
      params: {
        'order': "nome.asc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idUsuario(dynamic response) => (getJsonField(
        response,
        r'''$[:].usuario_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tipoCobranca(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo_cobranca''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? valorCompra(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_compra''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? valorTarifa(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_tarifa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? valorVisa(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_visa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? valorFatura(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_fatura''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class ApiUsuariosUUIDCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? token = '',
  }) async {
    final baseUrl = BdGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Api Usuarios UUID',
      apiUrl: '${baseUrl}/usuarios?uuid=eq.${uuid}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQxMDQxMDIsImV4cCI6MjAzOTY4MDEwMn0.i3tAOh7qAQsis4VoLbsAfGHsitVntdb0Rs6dsbpDOAQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDEwNDEwMiwiZXhwIjoyMDM5NjgwMTAyfQ.TRLcwY-9WY1pHXTtn1K3-qqUkYwTqvoCB_DoA8HJmPc',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  String? creatat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].creat_at''',
      ));
  String? lastActivity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].last_activity''',
      ));
  String? uuid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].uuid''',
      ));
  String? fotoPerfil(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].foto_perfil''',
      ));
  String? permissoes(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].permissoes''',
      ));
}

class ApiUsuariosCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = BdGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Api Usuarios ',
      apiUrl: '${baseUrl}/usuarios',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQxMDQxMDIsImV4cCI6MjAzOTY4MDEwMn0.i3tAOh7qAQsis4VoLbsAfGHsitVntdb0Rs6dsbpDOAQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDEwNDEwMiwiZXhwIjoyMDM5NjgwMTAyfQ.TRLcwY-9WY1pHXTtn1K3-qqUkYwTqvoCB_DoA8HJmPc',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  String? creatat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].creat_at''',
      ));
  String? lastActivity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].last_activity''',
      ));
  String? uuid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].uuid''',
      ));
  String? fotoPerfil(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].foto_perfil''',
      ));
  String? permissoes(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].permissoes''',
      ));
}

class RelatorioConsolidadoCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = BdGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Relatorio Consolidado',
      apiUrl: '${baseUrl}/view_resultado_consolidado',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQxMDQxMDIsImV4cCI6MjAzOTY4MDEwMn0.i3tAOh7qAQsis4VoLbsAfGHsitVntdb0Rs6dsbpDOAQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDEwNDEwMiwiZXhwIjoyMDM5NjgwMTAyfQ.TRLcwY-9WY1pHXTtn1K3-qqUkYwTqvoCB_DoA8HJmPc',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? tipoCobranca(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo_cobranca''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? valorTarifa(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_tarifa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<int>? quantidadeTransacoes(dynamic response) => (getJsonField(
        response,
        r'''$[:].quantidade_transacoes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? totalCampras(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_total_compras''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? valorVisa(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_visa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? valorfatura(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_fatura''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class ViewEstoqueCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? token = '',
  }) async {
    final baseUrl = BdGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'view estoque',
      apiUrl: '${baseUrl}/view_estoque',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQxMDQxMDIsImV4cCI6MjAzOTY4MDEwMn0.i3tAOh7qAQsis4VoLbsAfGHsitVntdb0Rs6dsbpDOAQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDEwNDEwMiwiZXhwIjoyMDM5NjgwMTAyfQ.TRLcwY-9WY1pHXTtn1K3-qqUkYwTqvoCB_DoA8HJmPc',
      },
      params: {
        'uuidMarca': uuid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  double? valorEstoque(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].valorEstoque''',
      ));
  int? itensEstoque(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].itensEstoque''',
      ));
}

class ViewEstoqueADMCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = BdGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'view estoque ADM',
      apiUrl: '${baseUrl}/view_estoqueadm',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQxMDQxMDIsImV4cCI6MjAzOTY4MDEwMn0.i3tAOh7qAQsis4VoLbsAfGHsitVntdb0Rs6dsbpDOAQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDEwNDEwMiwiZXhwIjoyMDM5NjgwMTAyfQ.TRLcwY-9WY1pHXTtn1K3-qqUkYwTqvoCB_DoA8HJmPc',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  double? valorEstoque(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].valorEstoque''',
      ));
  int? itensEstoque(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].itensEstoque''',
      ));
}

class SKUEstoqueCall {
  Future<ApiCallResponse> call({
    String? sku = '',
    String? token = '',
  }) async {
    final baseUrl = BdGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'SKU Estoque',
      apiUrl: '${baseUrl}/view_estoque',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQxMDQxMDIsImV4cCI6MjAzOTY4MDEwMn0.i3tAOh7qAQsis4VoLbsAfGHsitVntdb0Rs6dsbpDOAQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDEwNDEwMiwiZXhwIjoyMDM5NjgwMTAyfQ.TRLcwY-9WY1pHXTtn1K3-qqUkYwTqvoCB_DoA8HJmPc',
      },
      params: {
        'sku': sku,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  double? valorEstoque(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].valorEstoque''',
      ));
  int? itensEstoque(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].itensEstoque''',
      ));
}

class VendasCall {
  Future<ApiCallResponse> call({
    String? uuidMarca = '',
    String? token = '',
  }) async {
    final baseUrl = BdGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Vendas',
      apiUrl: '${baseUrl}/view_vendas',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQxMDQxMDIsImV4cCI6MjAzOTY4MDEwMn0.i3tAOh7qAQsis4VoLbsAfGHsitVntdb0Rs6dsbpDOAQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDEwNDEwMiwiZXhwIjoyMDM5NjgwMTAyfQ.TRLcwY-9WY1pHXTtn1K3-qqUkYwTqvoCB_DoA8HJmPc',
      },
      params: {
        'uuidMarca': uuidMarca,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UsuarioUuidCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    String? token = '',
  }) async {
    final baseUrl = BdGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Usuario uuid',
      apiUrl: '${baseUrl}/usuarios?uuid=eq.${uuid}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQxMDQxMDIsImV4cCI6MjAzOTY4MDEwMn0.i3tAOh7qAQsis4VoLbsAfGHsitVntdb0Rs6dsbpDOAQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDEwNDEwMiwiZXhwIjoyMDM5NjgwMTAyfQ.TRLcwY-9WY1pHXTtn1K3-qqUkYwTqvoCB_DoA8HJmPc',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? permissoes(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].permissoes''',
      ));
}

class UsuarioMarcaCall {
  Future<ApiCallResponse> call({
    String? marca = '',
    String? token = '',
  }) async {
    final baseUrl = BdGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Usuario Marca',
      apiUrl: '${baseUrl}/usuarios?marca=eq.${marca}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQxMDQxMDIsImV4cCI6MjAzOTY4MDEwMn0.i3tAOh7qAQsis4VoLbsAfGHsitVntdb0Rs6dsbpDOAQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDEwNDEwMiwiZXhwIjoyMDM5NjgwMTAyfQ.TRLcwY-9WY1pHXTtn1K3-qqUkYwTqvoCB_DoA8HJmPc',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? uuid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].uuid''',
      ));
  String? marca(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].marca''',
      ));
}

class VendasADMCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = BdGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Vendas ADM',
      apiUrl: '${baseUrl}/view_vendasadm',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQxMDQxMDIsImV4cCI6MjAzOTY4MDEwMn0.i3tAOh7qAQsis4VoLbsAfGHsitVntdb0Rs6dsbpDOAQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoYm95bGthZWdianJ6cGZuamdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDEwNDEwMiwiZXhwIjoyMDM5NjgwMTAyfQ.TRLcwY-9WY1pHXTtn1K3-qqUkYwTqvoCB_DoA8HJmPc',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BD Group Code

class CnpjCall {
  static Future<ApiCallResponse> call({
    String? cnpj = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'cnpj',
      apiUrl: 'https://api.cnpjs.dev/v1/${cnpj}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

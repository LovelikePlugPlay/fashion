import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';

import '../../flutter_flow/lat_lng.dart';
import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

String? serializeParam(
  dynamic param,
  ParamType paramType, {
  bool isList = false,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, isList: false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    String? data;
    switch (paramType) {
      case ParamType.int:
        data = param.toString();
      case ParamType.double:
        data = param.toString();
      case ParamType.String:
        data = param;
      case ParamType.bool:
        data = param ? 'true' : 'false';
      case ParamType.DateTime:
        data = (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.DateTimeRange:
        data = dateTimeRangeToString(param as DateTimeRange);
      case ParamType.LatLng:
        data = (param as LatLng).serialize();
      case ParamType.Color:
        data = (param as Color).toCssString();
      case ParamType.FFPlace:
        data = placeToString(param as FFPlace);
      case ParamType.FFUploadedFile:
        data = uploadedFileToString(param as FFUploadedFile);
      case ParamType.JSON:
        data = json.encode(param);

      case ParamType.DataStruct:
        data = param is BaseStruct ? param.serialize() : null;

      case ParamType.SupabaseRow:
        return json.encode((param as SupabaseDataRow).data);

      default:
        data = null;
    }
    return data;
  } catch (e) {
    print('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

enum ParamType {
  int,
  double,
  String,
  bool,
  DateTime,
  DateTimeRange,
  LatLng,
  Color,
  FFPlace,
  FFUploadedFile,
  JSON,

  DataStruct,
  SupabaseRow,
}

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList, {
  StructBuilder<T>? structBuilder,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .where((p) => p is String)
          .map((p) => p as String)
          .map((p) => deserializeParam<T>(
                p,
                paramType,
                false,
                structBuilder: structBuilder,
              ))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }
    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.DateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.DateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.LatLng:
        return latLngFromString(param);
      case ParamType.Color:
        return fromCssColor(param);
      case ParamType.FFPlace:
        return placeFromString(param);
      case ParamType.FFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.JSON:
        return json.decode(param);

      case ParamType.SupabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case Tarifa4Row:
            return Tarifa4Row(data);
          case Tarifa14Row:
            return Tarifa14Row(data);
          case MarcasRow:
            return MarcasRow(data);
          case Tarifa5Row:
            return Tarifa5Row(data);
          case Tarifa15Row:
            return Tarifa15Row(data);
          case Tarifa38Row:
            return Tarifa38Row(data);
          case Tarifa6Row:
            return Tarifa6Row(data);
          case Tarifa16Row:
            return Tarifa16Row(data);
          case Tarifa39Row:
            return Tarifa39Row(data);
          case Tarifa7Row:
            return Tarifa7Row(data);
          case Tarifa17Row:
            return Tarifa17Row(data);
          case ViewResultadoRow:
            return ViewResultadoRow(data);
          case Tarifa10Row:
            return Tarifa10Row(data);
          case Tarifa1Row:
            return Tarifa1Row(data);
          case Tarifa11Row:
            return Tarifa11Row(data);
          case UtilizacaoCartaoRow:
            return UtilizacaoCartaoRow(data);
          case Tarifa2Row:
            return Tarifa2Row(data);
          case Tarifa12Row:
            return Tarifa12Row(data);
          case Tarifa3Row:
            return Tarifa3Row(data);
          case VendasRow:
            return VendasRow(data);
          case Tarifa13Row:
            return Tarifa13Row(data);
          case Tarifa32Row:
            return Tarifa32Row(data);
          case Tarifa33Row:
            return Tarifa33Row(data);
          case Tarifa30Row:
            return Tarifa30Row(data);
          case Tarifa40Row:
            return Tarifa40Row(data);
          case Tarifa31Row:
            return Tarifa31Row(data);
          case Tarifa36Row:
            return Tarifa36Row(data);
          case Tarifa8Row:
            return Tarifa8Row(data);
          case Tarifa18Row:
            return Tarifa18Row(data);
          case Tarifa37Row:
            return Tarifa37Row(data);
          case Tarifa9Row:
            return Tarifa9Row(data);
          case Tarifa19Row:
            return Tarifa19Row(data);
          case Tarifa34Row:
            return Tarifa34Row(data);
          case ViewVendasRow:
            return ViewVendasRow(data);
          case UsuariosRow:
            return UsuariosRow(data);
          case Tarifa35Row:
            return Tarifa35Row(data);
          case EstoqueRow:
            return EstoqueRow(data);
          case Tarifa29Row:
            return Tarifa29Row(data);
          case Tarifa28Row:
            return Tarifa28Row(data);
          case ViewResultadoConsolidadoRow:
            return ViewResultadoConsolidadoRow(data);
          case Tarifa25Row:
            return Tarifa25Row(data);
          case ViewEstoqueRow:
            return ViewEstoqueRow(data);
          case Tarifa24Row:
            return Tarifa24Row(data);
          case Tarifa27Row:
            return Tarifa27Row(data);
          case Tarifa26Row:
            return Tarifa26Row(data);
          case Tarifa21Row:
            return Tarifa21Row(data);
          case ResultadoRow:
            return ResultadoRow(data);
          case Tarifa20Row:
            return Tarifa20Row(data);
          case Tarifa23Row:
            return Tarifa23Row(data);
          case Tarifa22Row:
            return Tarifa22Row(data);
          case EventosRow:
            return EventosRow(data);
          default:
            return null;
        }

      case ParamType.DataStruct:
        final data = json.decode(param) as Map<String, dynamic>? ?? {};
        return structBuilder != null ? structBuilder(data) : null;

      default:
        return null;
    }
  } catch (e) {
    print('Error deserializing parameter: $e');
    return null;
  }
}

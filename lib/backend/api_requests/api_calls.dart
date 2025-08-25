import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DrugApprovalListCall {
  static Future<ApiCallResponse> call({
    String? itemName = '',
    String? itemIngrName = '',
    String? ediCode = '',
    String? prdlstStdrCode = '',
    int? pageNo = 1,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DrugApprovalList',
      apiUrl:
          'https://apis.data.go.kr/1471000/DrugPrdtPrmsnInfoService06/getDrugPrdtPrmsnInq06',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'serviceKey':
            "bNn7FYQWvhIGNWsudOdxnyw/gUuu3wlSHWPV7/yGbM69SJ1JzFe5g0jk3ECbymIr69ske4kdUCM0DJgv22Nzmw==",
        'pageNo': pageNo,
        'numOfRows': 20,
        'type': "json",
        'item_name': itemName,
        'item_ingr_name': itemIngrName,
        'edi_code': ediCode,
        'prdlst_Stdr_code': prdlstStdrCode,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? items(dynamic response) => getJsonField(
        response,
        r'''$.body.items''',
        true,
      ) as List?;
  static dynamic? body(dynamic response) => getJsonField(
        response,
        r'''$.body''',
      );
  static List<String>? itemSeq(dynamic response) => (getJsonField(
        response,
        r'''$.body.items[:].ITEM_SEQ''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DrugApprovalDetailCall {
  static Future<ApiCallResponse> call({
    String? itemSeq = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DrugApprovalDetail',
      apiUrl:
          'https://apis.data.go.kr/1471000/DrugPrdtPrmsnInfoService06/getDrugPrdtPrmsnDtlInq05',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'serviceKey':
            "bNn7FYQWvhIGNWsudOdxnyw/gUuu3wlSHWPV7/yGbM69SJ1JzFe5g0jk3ECbymIr69ske4kdUCM0DJgv22Nzmw==",
        'type': "json",
        'item_seq': itemSeq,
        'pageNo': 1,
        'numOfRows': 1,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic? body(dynamic response) => getJsonField(
        response,
        r'''$.body''',
      );
  static List? items(dynamic response) => getJsonField(
        response,
        r'''$.body.items''',
        true,
      ) as List?;
  static String? itemName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.items[:].ITEM_NAME''',
      ));
  static String? chart(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.items[:].CHART''',
      ));
  static String? entpName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.items[:].ENTP_NAME''',
      ));
  static String? etcotc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.items[:].ETC_OTC_CODE''',
      ));
  static String? itemSeq(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.items[:].ITEM_SEQ''',
      ));
  static String? atc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.items[:].ATC_CODE''',
      ));
  static String? storage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.items[:].STORAGE_METHOD''',
      ));
  static String? valid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.items[:].VALID_TERM''',
      ));
  static String? edi(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.items[:].EDI_CODE''',
      ));
  static String? ee(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.items[:].EE_DOC_DATA''',
      ));
  static String? ud(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.items[:].UD_DOC_DATA''',
      ));
  static String? nb(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.items[:].NB_DOC_DATA''',
      ));
  static String? material(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.items[:].MATERIAL_NAME''',
      ));
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
  if (item is DocumentReference) {
    return item.path;
  }
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

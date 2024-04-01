import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class EcpayCall {
  static Future<ApiCallResponse> call({
    int? totalAmount,
    String? tradeDesc = '',
    String? itemName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "TotalAmount": "$totalAmount",
  "TradeDesc": "$tradeDesc",
  "ItemName": "$itemName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ecpay',
      apiUrl: 'https://d2e.zeabur.app/payment/create',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTokenCall {
  static Future<ApiCallResponse> call({
    String? data = '',
    String? timestamp = '',
    String? merchantID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "MerchantID": "$merchantID",
  "RqHeader": {
    "Timestamp": "$timestamp"
  },
  "Data": "$data"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getToken',
      apiUrl: 'https://ecpg-stage.ecpay.com.tw/Merchant/GetTokenbyTrade',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? returnInfo(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.TransCode''',
      ));
  static String? returenMsg(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.TransMsg''',
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}

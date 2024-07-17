import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetZakatTotalAndPendingCall {
  static Future<ApiCallResponse> call({
    String? authKey =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBkdWFpZm9odnN4Z3lqcGNoY2xqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExODc4MTUsImV4cCI6MjAyNjc2MzgxNX0.vb0XAVgfjEC4EMEUU5Us1x49IeXsfF693oXr0psdGUw',
    String? uId = 'dcf79331-3a97-41c4-8f03-762cb6ae50d8',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "${uId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getZakatTotalAndPending',
      apiUrl:
          'https://pduaifohvsxgyjpchclj.supabase.co/rest/v1/rpc/calculate_zakat',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBkdWFpZm9odnN4Z3lqcGNoY2xqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExODc4MTUsImV4cCI6MjAyNjc2MzgxNX0.vb0XAVgfjEC4EMEUU5Us1x49IeXsfF693oXr0psdGUw',
        'Authorization': 'Bearer ${authKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic? totalAndPending(dynamic response) => getJsonField(
        response,
        r'''$[0]''',
      );
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

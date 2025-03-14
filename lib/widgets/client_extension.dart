import 'dart:convert';

import 'package:stawi/requests/payload/base_payload.dart';
import 'package:http/http.dart' as http;
import 'package:matrix/matrix.dart';

extension MatrixApiExtension on MatrixApi {
  ///
  /// [payload] A json serializable object that is just sent to the server for
  /// further processing.
  ///
  /// returns `json response object`:
  /// Contains more data about the queueing status of the request.
  Future<String> invokeBackendWithPayload({
    Payload? payload,
  }) async {
    final requestUri = Uri(path: '_matrix/client/payload');
    final request = http.Request('POST', baseUri!.resolveUri(requestUri));
    request.headers['authorization'] = 'Bearer ${bearerToken!}';
    request.headers['content-type'] = 'application/json';
    request.bodyBytes = utf8.encode(
      jsonEncode(payload),
    );
    final response = await httpClient.send(request);
    final responseBody = await response.stream.toBytes();
    if (response.statusCode != 200) unexpectedResponse(response, responseBody);
    final responseString = utf8.decode(responseBody);
    return jsonDecode(responseString);
  }
}

extension ClientExtension on Client {
  Future<String> sendPayload(Payload payload) async {
    return invokeBackendWithPayload(payload: payload);
  }
}

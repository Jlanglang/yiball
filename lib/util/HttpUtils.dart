import 'dart:async';
import 'dart:io';

Future<T> simpleGet<T>(url) async {
  var httpClient = new HttpClient();
  var request = await httpClient.get('1', 10, url).then((t) {
    Object a = t.toString();
    return new Future<T>.value(a);
  });
  return request;
}

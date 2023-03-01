import 'dart:convert';
import 'dart:io';
import 'dart:async';

Future<void> main() async {
  var client = HttpClient();
  try {
    HttpClientRequest request = await client.getUrl(Uri.parse('https://mafbase.ru/api/availablePlayers'));

    request.headers.removeAll(HttpHeaders.acceptEncodingHeader);
    request.headers.set('accept', 'application/json');

    HttpClientResponse response = await request.close();
    final stringData = await response.transform(utf8.decoder).join();

    final List<dynamic> dataList = jsonDecode(stringData)['players'];
    for (int i = 0; i< dataList.length; i++){
      final item = dataList[i];
      print(item['nickname']);
    }

  } finally {
    client.close();
  }
}
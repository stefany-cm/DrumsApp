import 'dart:convert';
import 'package:http/http.dart' as http;

class Servicion {
  final String _url = "http://172.18.14.225:3000";

  Future createUser() async {
    print('entrando aca 1  ' + _url);
    final url = '$_url';
    final res = await http.get('$_url/user/get');

    List<dynamic> decodeData = json.decode(res.body);
    print('usuario creado$decodeData');

    return "";
  }
}

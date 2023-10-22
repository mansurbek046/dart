import 'dart:convert';
import 'package:http/http.dart' as http;

/*Future<dynamic> signup(String username, String password) async {
    try{
        var req=await http.post(Uri.parse('https://httpbin.org/post'),body: jsonEncode({
            "username": username,
            "password": password
        }));
        return jsonDecode(req.body);
    }catch(e){
        throw '$e';
    }
}

void main() async {
    try{
        var res=await signup("mrbk5","passv4");
        res['json'].forEach ((x,z){
            print('$x: $z');
        });
    }catch(e){
        print(e);
    }
}
*/

//post multiple datas to api in one
//using chatGPT:
//And preparing ;)

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> signup(List<Map<String, String>> credentials) async {
  try {
    var req = await http.post(Uri.parse('https://httpbin.org/post'), body: jsonEncode(credentials));
    return jsonDecode(req.body);
  } catch (e) {
    throw '$e';
  }
}

void main() async {
  try {
    List<Map<String, String>> credentials = [
      {"username": "mrbk5", "password": "passv4"},
      {"username": "john", "password": "secret123"},
      {"username": "alice", "password": "password123"}
    ];

    var res = await signup(credentials);
    List<dynamic> jsonData = res['json'];
    for (Map<String, dynamic> map in jsonData){
        map.forEach((x, z) {
            print('$x: $z\n');
            });
    }
  } catch (e) {
    print(e);
  }
}

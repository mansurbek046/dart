import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String,dynamic>> getData() async {
    try{
        var res=await http.get(Uri.parse("https://coffee.alexflipnote.dev/random.json"));
        var jsonList=jsonDecode(res.body);
        return jsonList;
    }catch(e){
        throw '$e';
    }
}

void main() async {
    try{
        print(await getData());
    }catch(e){
        print(e);
    }
}

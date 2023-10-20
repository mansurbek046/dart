import 'package:http/http.dart' as http;

//without callback using async and await
Future<String> getData() async {
	var res=await http.get(Uri.parse("https://coffee.alexflipnote.dev/random.json"));
	return res.toString();
}

void main() async {
  print(await getData());
}

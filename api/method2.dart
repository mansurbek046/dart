import 'package:http/http.dart' as http;

//without callback using async and await
void main() async {
  Future<String> getData() await {
	var res=await http.get(Uri.parse("https://coffee.alexflipnote.dev/random.json"));
	return res.toString();
  }
  print(await getData());
}

import 'package:http/http.dart' as http;

//without callback using async and await
//with try catch
Future<String>getData() async {
	try {
		var res=await http.get(Uri.parse("https://coffee.alexflipnote.dev/random.json"));
  	return res.toString();
  } catch (e) {
  	print(e);
  	return "Erorr: $e";
  }
}
void main() async {
  print(await getData());
}

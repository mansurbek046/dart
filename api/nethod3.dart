import 'package:http/http.dart' as http;

//without callback using async and await
void main() async {
	//with try catch
  Future<String>getData() await {
  	try {
  	  var res=await http.get(Uri.parse("https://coffee.alexflipnote.dev/random.json"));
  	  return res.toString();
  	} catch (e) {
  		return e;
  	}
  }
  
  print(await getData());
}

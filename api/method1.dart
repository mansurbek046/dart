import 'package:http/http.dart' as http;

void main() {
  var res=http.get(Uri.parse(https://coffee.alexflipnote.dev/random.json));
  res.then((value){
  	print(value);
  }).onError((error,stackTrace){
  	print(error);
  });
}

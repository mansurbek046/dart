import 'package:http/http.dart' as http;

void main() {
  var res=http.get(Uri.parse('url'));
  res.then((value){
  	print(value);
  }).onError((error,stackTrace){
  	print(error);
  })
}

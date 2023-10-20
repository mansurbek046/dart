/* Working with APIs in dart */
//Firt must create pubspec.yaml file
/* pubspec.yaml */
name: "ProjectName"
description: "Some description for project"
version: 1.0.0

environment:
	sdk: '>=2.18.0 < 3.0.0'

dependencies:
	http: ^0.13.5

dev_dependencies:

/* Terminal */
$ dart pub get

/* main file */
import 'package:http/http.dart' as http;

void main() {
  var res=http.get(Uri.parse('url'));
  res.then((value){
  	print(value);
  }).onError((error,stackTrace){
  	print(error);
  })
}

//without callback using async and await
void main() async {
  Future<String> getData() await {
  	var res=await http.get(Uri.parse("url"));
  	return res.toString();
  }
  //with try catch
  Future<String>getData() await {
  	try {
  	  var res=await http.get(Uri.parse("url"));
  	  return res.toString();
  	} catch (e) {
  		return e;
  	}
  }
  print(await getData());
}


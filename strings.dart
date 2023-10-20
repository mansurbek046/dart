void main() {
	//get unicode from any string
  String a='a';
  print(a.codeUnits);
  
  //interpolation
  String type="Fruit";
  String name="Apple";
  double weight=0.159;
  print("Type: $type, name: $name, weight: $weight kg, "
  "Total price: \$${weight*1}");
  
  //multiline
  var multiline='''
  You're seing
  multiline String 
  at the moment
  ''';
}
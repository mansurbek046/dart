void main() {
	//mustn't nullable and maybe nullable
	String? something;
	int len=something!.length;
	
	int len=something?.length ?? 0;
	
	//int/float number
	num number=0;
  //Integer
  int intNumber=15;
  //float
  double floatNumber=15.5;
  //string
  String str="Hello World";
  //boolean: true/false
  bool boolean=true;
  //auto variable type detector
  var anyType="You can write everything for it";
  
  //constant variables
  //final for a value which is you didn't know
  final var text="It's 15.47 p.m."
  //const for a value which is you knowed
  const text2="Your birthday is in July!"
  
  //dynamic variable
  dynamic changeable=10;
  changeable="I'm a dynamic variable";
  
  //checking variale type
  print(text is String); //Output: true
  // is not
  print(text is! String); //Output: false
  
  //get type of any variable
  print(text.runtimeType);
  
  //converting variable
  int newInt=floatNumber.toInt();
  double newDouble=intNumber.toDouble();
  
  //converting from num "Not checked!"
  num number1=20;
  int newConvertedIntOfNum=number1 as int;
  num number2=20.2;
  double newConvertedDoubleOfNum=number2 as double;
}



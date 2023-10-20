void main() {
  myFunc();
  var alexa=showName("Alexa");
  print(alexa);
  detailsWeather(27);
  addUser(username: "some_thing", age: 22);
  print(getAge(1997));
}

//no return func.
void myFunc() {
  print("Hi, I'm a simple function");
}
//String return func.
String showName(String name){
	return "Hi, my name is $name";
}
//Optional or default parameter func.
void detailsWeather(String day,[String? hour, String gmt="GMT+5"]){
	String weather="Cloudy";
	print("Weather for $day is $weather");
	hour?print("It's for $hour time");
	print("Information has taken by your $gmt time zone.");
}

//Parameters has called just by name or required parameter func.
void addUser({required String username, int? age}){
	print("Your username is $username and your age $age y.o.");
}

//One line function
int getAge({required int birthyear}) => 2023-birthyear;

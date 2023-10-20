/* a file named "school.dart" of School class */
class School(){
	String name;
	num number;
	String address;
	
	School({required String name}, num number, String address){
		this.name=name;
		this.number=number;
		this.address=address;
		this.rate=0;
	}
	//a few short way
	School({required String name}, num number, String address);
	//but result is same
	
	
	School.defaultSchool():this(name: "eduone",122,"central street 5")
}

/* main file */
import school.dart;

void main() {
  var school=School(name:"newSch", 009, "main street 34");
  school=School.defaultSchool;
  print(school.name);
}
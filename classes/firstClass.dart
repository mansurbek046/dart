/* a file of CustomCalendar class */
class CustomCalendar{
	var week_day="";
	//making private elements
	var _my_day=0;
	/*This class must be in another file to
	use private elements correctly*/
	
	//get
	int getDay(){
		return _my_day;
	}
	//set
	void increaseDay(String? day_name="Sunday"){
		_my_day++;
		week_day=day_name;
	}
	
	//with native get and set methods
	set daySetter(int day_number){
		if(day_number <2 && day_number>0){
			_my_day=_my_day+day_number;
		}else{
			print("It's not allowed!");
		}
	}
	
	int get dayGetter => _my_day;
}

/* main file */
import calendar.dart;
/* It must be a class file name which
consist of customCalendar class */

void main() {
  var myCalendar=CustomCalendar();
  var week_day=myCalendar.week_day;
  var day=myCalendar.getDay();
  myCalendar.increaseDay("Monday");
  print("Today is $week_day, $day day of month");
}
/* a file named cc.dart of User class */
class User(){
	final int user_id;
	const User(this.user_id);
	
	//lazy installation
	late final data;
	User(this.user_id){
		data="ID: ${getId}";
	}
	int getId(){
		return user_id;
	}
	//statics "Statics may be const"
	static final admin="Admin";
	
	static getAdmin(){
		return "Admin"
	}
}

/* main file */
import cc.dart;

void main() {
	//Attetion for const
  const user=User(2132337);
  //using static variable 
  const admin=User.admin;
  const admin=User.getAdmin();
  
}
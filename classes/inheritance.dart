class Content(){
	final String title;
	Content(this.title);
	void publish(){
		print("Publish Content");
	}
}

//inheritance
class Post extends Content(){
	Post(super.title);
	@override
	void publish(){
		print("Publish post");
	}
}

/* abstract */
abstract class Content(){
	final String title;
	Content(this.title);
	void publish();
}
//inheritance
class Post extends Content(){
	Post(super.title);
	@override
	void publish(){
		print("Publish post");
	}
}

/* implement */
class Shareable(){
	void share();
}

class Printable(){
	void printSth(){
		print("I'm gonna print something");
	}
}

class Post extends Content implements Shareable,Printable(){
	@override
	void share(){
		print("I'm gonna share something!");
	}
	
	@override
	void printSth(){
		print("Text 01012");
	}
}

/* main file */
import classFile.dart;

void main() {
  Shareable post=Post();
  post.share();
  
  //list with classes
  List<Shareable>listName={
  	Post();
  	//etc
  }
  for (item in listName){
  	item.share();
  	item.printSth();
  	//That's also maybe publish
  	item.publish();
  }
}
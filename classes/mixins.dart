mixin Like{
	int count=0;
	
	void increment(){
		count++;
	}
	
	void decrement(){
		count--;
	}
}

class Post with Like(){
	void publish(){
		print("Publish smth");
	}
}

/* main file */
import post.dart;

void main() {
	var post=Post();
	
	//working with increment of Like mixin
	post.increment();
}
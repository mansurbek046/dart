void main() {
	//tryCatch handle
  try{
  	print(10~/0);
  }catch(e){
  	if(e is UnsupportedError){
  		print("Number is not correct!");
  	}
  }finally{
  	print("Procces ended!");
  }
}
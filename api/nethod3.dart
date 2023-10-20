//without callback using async and await
void main() async {
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

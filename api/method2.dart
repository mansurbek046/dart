//without callback using async and await
void main() async {
  Future<String> getData() await {
  	var res=await http.get(Uri.parse("url"));
  	return res.toString();
  }
  print(await getData());
}

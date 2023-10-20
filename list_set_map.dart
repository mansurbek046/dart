void main() {
	/* List */
  var names=<String>['Joe','Kim','Loran'];
  List <String> names=['Joe','Kim','Loran'];
  //get index of any item
  var kim=names.indexOf('Kim');
  print(names[kim]);
  //chcking contain
  names.contains('Shavkat'); //Output: false
  //change item
  names[2]='Putin';
  //add item
  names.add('Shavkat');
  //insert item
  names.insert(0,'president0');
  //remove item by value
  names.remove('president0');
  //remove item by index
  names.removeAt(-1);
  //getting each items using for
  for(var president in names){
  	print(president);
  }
  
  /* Set */
  Set <String> names={
  	'Joe',
  	'Kim',
  	'Loran'
  };
  
  /* Map */
  Map <String, String> presidents={
  	'Joe':'United States',
  	'Kim':'North Korea',
  	'Loran':'Unknown'
  }
  //getteing each items in Map using forEach
  presidents.forEach((president,country){
  	print('$president is a president of $country');
  });
  
}
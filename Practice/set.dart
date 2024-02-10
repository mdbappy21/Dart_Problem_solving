void main(){
  var name=<String>{"Bappy","Akash","Abdullah"};//decleared set as string
  print(name);
  name.add("Shuvo");//add a value in set.
  print(name);
  name.addAll({"Akash","Auntu","Sabbir"});//add multiple value
  print(name);
  print(name.elementAt(2));//accece position value.

  print(name.first);//first elemlent in set.
  print(name.last);//last element in set.
  print(name.length);//length of set.
  print(name.isEmpty);//true if set is empty.
  print(name.isNotEmpty);//true if set is not empty.
  // print(name.single);//!if there has only one element
  name.remove("Akash");
  print(name);


  name.clear();//clear set.
  print(name);
}
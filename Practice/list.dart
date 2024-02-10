void main()
{
  var city=["Dhaka","Rajshahi","Pabna"];
  var result;
  result=city.length;
  print(result);
  result=city.first;
  print(result);
  result=city.last;
  print(result);
  result=city.reversed;
  print(result);
  result=city.isEmpty;
  print(result);
  result=city.isNotEmpty;
  print(result);
  //result=city.single;
  print(result);

  city.add("Rangpur");//add element.
  print(city);
  city.addAll(["Cox Bazar","Mymensing"]);//add multiple element.
  print(city);
  city.insert(1, "Shirajgong");//add element in spacific position.
  print(city);
  city.insertAll(2,["Bogra","Dinajpur"]);//add multiple element in spacific position.
  print(city);
  city[1]="Sirajgong";//update a value
  print(city);
  city.remove("Mymensing");//remove a value.
  print(city);
  city.removeLast();//remove last value.
  print(city);
  city.removeAt(2);//remove spacific position value.
  print(city);

  const city1=["Saver","Tangail"];//constant list fixed length
  print(city1);
}
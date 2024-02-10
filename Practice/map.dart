void main(){
  var person=new Map();
  person["Name"]="Bappy";
  person["Age"]=23;
  person["city"]="Pabna";
  person["Natonality"]="Bangladesh";
  print(person);


  var student={
    "Name":"Bappy",
    "Age":23
    };
  print(student);


  print(person.keys);//got keys only.
  print(person.values);//got values only.
  print(person.length);//got length. 
  print(person.isEmpty);//true if map is empty.
  print(person.isNotEmpty);//true if map is not empty.


  person.addAll({"Blood":"O +ve"});//add value in map.
  print(person);
  person.remove("Blood");//remove value in map.
  print(person);
  person["Age"]=24;//update value in map.
  print(person);
  student.clear();//clear all value in map.
  print(student);
}
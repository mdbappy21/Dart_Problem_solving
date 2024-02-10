void main() {
  var x, y, z;
  x = 10; //integer
  y = 1.3; //double
  z = x + y; //double
  print(z);

  String name; //string
  var gender; //string
  name = "Bappy";
  gender = "Male";
  print(name);
  print(gender);

  var isMale = true; //boolean
  bool isFemale = false; //boolean
  print(isMale);
  print(isFemale);

  var country = [
    "Bangladesh",
    "India",
    "Pakistan",
    "England",
    "Saudi Arabia"
  ]; //list
  print(country);
  print(country[4]);

  var person = {//maps
    'name': "Bappy",
    'age': 40,
    'gender': "Male",
    'country': 'Bangladesh'
  };
  print(person);
  print(person["country"]);
  print(person["city"]); //no value NULL

  var names = {'bappy', 'akash', 'Abdullah', 'Akash', 'Bappy'}; //sets
  print(names);
  var countries = <String>{};
  countries.add('Bangladesh');
  countries.addAll(names);
  print(countries);
  countries.remove("bappy");
  print(countries);
  countries.clear();
  print(countries);
  var number = <String>{'a', 'b', 'c', ...names};
  print(number);
  var number1 = <String>{
    'd',
    'e',
    if (true) 't',
    for (int i = 0; i < 5; i++) '$i'
  };
  print(number1);


var number2;//dynamic
number2=10;
number2="Daffodil";
number2=false;
print(number2);

  var img;//runes
  img='\u2665';
  print(img);
  img='\u{1f600}';
  print(img);
  img='\u{115}';
  print(img);

}

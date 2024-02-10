void main(){
  var name=["Bappy","Akash","Shuvo","Abdullah","Auntu","Sabbir"];
  for(var i in name){
    print(i);
  }


  var productList=[//json type of data
    {"Name":"soap","price":50},
    {"Name":"Sugar","price":100},
    {"Name":"cake","price":40},
    ];

print(productList);

for(var i in productList){
  print(i);
  print(i["Name"]);
  print(i["price"]);
}


}
import 'dart:io';
void main(){
  int testCase;
  String s1="pedra",s2="papel",s3="tesoura",s4="lagarto",s5="Spock";
  testCase=int.parse(stdin.readLineSync()!);
  for(int i=1;i<=testCase;i++){
    List<String> inputs = stdin.readLineSync()!.split(' ');
    String Sheldon = inputs[0];
    String Raj = inputs[1];

    if(Sheldon==Raj)
      print("Caso #$i: De novo!");
    else if(Sheldon==s1){
      if(Raj==s2 || Raj==s5)
        print("Caso #$i: Raj trapaceou!");
      else
        print("Caso #$i: Bazinga!");
    }
    else if(Sheldon==s2){
      if(Raj==s3 || Raj==s4)
        print("Caso #$i: Raj trapaceou!");
      else
        print("Caso #$i: Bazinga!");
    }
    else if(Sheldon==s3){
      if(Raj==s1 || Raj==s5)
        print("Caso #$i: Raj trapaceou!");
      else
        print("Caso #$i: Bazinga!");
    }
    else if(Sheldon==s4){
      if(Raj==s1 || Raj==s3)
        print("Caso #$i: Raj trapaceou!");
      else
        print("Caso #$i: Bazinga!");
    }
    else if(Sheldon==s5){
      if(Raj==s2 || Raj==s4)
        print("Caso #$i: Raj trapaceou!");
      else
        print("Caso #$i: Bazinga!");
    }
  }
}
import 'dart:io';

void main() {
  int t;
  while (true) {
    
    t = int.tryParse(stdin.readLineSync()!) ?? 0;
    if(t==0)break;
    List<List<int>> vetor = [];
    for (var i = 0; i < t; i++) {
      var tmp = stdin.readLineSync()!;
      var aux = int.parse(tmp.split('=')[0]);
      vetor.add([aux]);
      var ss = tmp.split('=');
      for (var foo in ss.skip(1)) {
        vetor[i].add(int.parse(foo));
      }
    }

    var nome = <String>{};
    for (var i = 0; i < t; i++) {
      var input = stdin.readLineSync()!.split(' ');
      var name = input[0];
      var pos = int.parse(input[1]);
      var op = input[2];
      pos--;
      var prim = vetor[pos][0], seg = vetor[pos][1], ter = vetor[pos][2];

      switch (op) {
        case '+':
          if (prim + seg != ter) nome.add(name);
          break;
        case '-':
          if (prim - seg != ter) nome.add(name);
          break;
        case '*':
          if (prim * seg != ter) nome.add(name);
          break;
        case 'I':
          if (prim + seg == ter || prim - seg == ter || prim * seg == ter)
            nome.add(name);
          break;
      }
    }

    if (nome.isEmpty) {
      print('You Shall All Pass!');
    } else if (nome.length == t) {
      print('None Shall Pass!');
    } else {
      print(nome.join(' '));
    }
  }
}

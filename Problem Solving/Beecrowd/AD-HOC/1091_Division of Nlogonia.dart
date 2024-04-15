import 'dart:io';

void main() {
  while (true) {
    int k = int.parse(stdin.readLineSync()!);
    if (k == 0) break;
    
    List<String> results = [];
    
    List<int> nm = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    int n = nm[0];
    int m = nm[1];
    
    for (int i = 0; i < k; i++) {
      List<int> xy = stdin.readLineSync()!.split(' ').map(int.parse).toList();
      int x = xy[0];
      int y = xy[1];
      
      if (x == n || y == m) {
        results.add('divisa');
      } else if (x > n && y > m) {
        results.add('NE');
      } else if (x > n && y < m) {
        results.add('SE');
      } else if (x < n && y > m) {
        results.add('NO');
      } else if (x < n && y < m) {
        results.add('SO');
      }
    }
    
    for (String result in results) {
      print(result);
    }
  }
}

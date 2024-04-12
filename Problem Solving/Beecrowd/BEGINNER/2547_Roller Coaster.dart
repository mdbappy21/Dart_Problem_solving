import 'dart:io';

void main() {
  while (true) {
    String? line = stdin.readLineSync();
    if (line == null || line == "EOF") break;
    List<String> parts = line.split(' ');
    int? qtsVisitantes = int.tryParse(parts[0]) ?? -1;
    if (qtsVisitantes == -1) break;
    int? alturaMin = int.tryParse(parts[1]);
    int? alturaMax = int.tryParse(parts[2]);
    if (alturaMin == null || alturaMax == null) break;

    int visitantesHabilitados = 0;
    for (int i = 0; i < qtsVisitantes; i++) {
      String? visitanteInput = stdin.readLineSync();
      if (visitanteInput == null) break;
      int? visitante = int.tryParse(visitanteInput);
      if (visitante == null) break;
      if (visitante >= alturaMin && visitante <= alturaMax) {
        visitantesHabilitados++;
      }
    }

    print(visitantesHabilitados);
  }
}

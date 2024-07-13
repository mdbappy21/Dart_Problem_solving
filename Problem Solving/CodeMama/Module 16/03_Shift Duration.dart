import 'dart:io';
int calculateShiftDuration(int startTime, int endTime) {
  if (endTime > startTime) {
    return endTime - startTime;
  } else if (endTime == startTime) {
    return 24; 
  } else {
    return 24 - startTime + endTime;
  }
}

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int startTime = int.parse(input[0]);
  int endTime = int.parse(input[1]);

  int duration = calculateShiftDuration(startTime, endTime);
  
  print(duration);
}
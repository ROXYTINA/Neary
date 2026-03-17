
Map<String, int> classifyScore(List<int> scores){
  Map<String, int> gradeCount ={
    'A': 0,
    'B': 0,
    'C': 0,
    'D': 0,
    'F': 0
  };

  for (var score in scores){
    String grade = switch (score){
      >= 90 => 'A',
      >= 80 => 'B',
      >= 70 => 'C',
      >= 60 => 'D',
      _ => 'F'
    };
    gradeCount[grade] = gradeCount[grade]! + 1;
  }
  return gradeCount;
}



void main(){
  List<int> scores = [90, 85, 72, 60, 55, 45, 92, 88, 76, 63];

  var result = classifyScore(scores);
  print(result);
}
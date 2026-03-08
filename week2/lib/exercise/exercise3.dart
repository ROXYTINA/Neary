
Future<List<int>> fetchGrades() async {
  await Future.delayed(Duration(seconds: 2));
  return [85, 92, 78, 95, 88];
}

void main() async {
  try {
    List<int> grades = await fetchGrades();

    double avg = grades.reduce((a, b) => a + b) / grades.length;

    print("Grades: $grades");
    print("Average: $avg");
  } catch (e) {
    print("Error: $e");
  }
}
class Lesson{
  final String name;
  final double letterGrade;
  final double credit;

  Lesson({ required this.name,required this.letterGrade,required this.credit});
  @override
  String toString() {
    
    return '$name $letterGrade $credit';
  }
}
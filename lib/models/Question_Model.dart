class Question{

  const Question(this.text,this.Answer);
  final String text;
  final List<String> Answer ;


  List<String> Shuffled(){
    final shuffledList = List.of(Answer);
    shuffledList.shuffle();
    return shuffledList;
  }
}
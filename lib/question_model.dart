

class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText,this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions(){
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "who is the owner of flutter?",
    [
      Answer("Amazon",false),
      Answer("Google",true),
      Answer("Apple",false),
      Answer("Samsung",false),
    ],
    ));
    list.add(Question(
    "capital of india?",
    [
      Answer("Kerala",false),
      Answer("Goa",false),
      Answer("Karnataka",false),
      Answer("New Delhi",true),
    ],
    ));
    list.add(Question(
    "who is the founder of apple?",
    [
      Answer("Steve Jobs",true),
      Answer("John",false),
      Answer("Bill Gates",false),
      Answer("Tim Cook",false),
    ],
    ));
    list.add(Question(
    "what is the language of flutter?",
    [
      Answer("Kotlin",false),
      Answer("Python",false),
      Answer("Java",false),
      Answer("Dart",true),
    ],
    ));
    list.add(Question(
    "Which one is the first search engine in internet?",
    [
      Answer("Google",false),
      Answer("Archie",true),
      Answer("Altavista",false),
      Answer("Safari",false),
    ],
    ));
    
  return list;
}
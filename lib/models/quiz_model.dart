class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final int isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Who is the owner of Flutter?",
    [
      Answer("Nokia", 1),
      Answer("Samsung", 2),
      Answer("Google", 3),
      Answer("Apple", 4),
    ],
  ));

  list.add(Question(
    "Who owns Iphone?",
    [
      Answer("Apple", 1),
      Answer("Microsoft", 2),
      Answer("Google", 3),
      Answer("Nokia", 4),
    ],
  ));

  list.add(Question(
    "Youtube is _________  platform?",
    [
      Answer("Music Sharing", 1),
      Answer("Video Sharing", 2),
      Answer("Live Streaming", 3),
      Answer("All of the above", 4),
    ],
  ));

  list.add(Question(
    "Flutter user dart as a language?",
    [
      Answer("True", 1),
      Answer("False", 2),
    ],
  ));

  return list;
}

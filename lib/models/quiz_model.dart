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

  list.add(Question(
    "1- صوته عالياً",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));

  list.add(Question(
    "2- مستعجل دائماً",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));

  list.add(Question(
    "3- كثير الجري والقفز	",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));

  list.add(Question(
    "4- يدور ويتلوي علي المقعد",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));

  list.add(Question(
    "5- سهل الاستثارة",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));

  list.add(Question(
    "6- ينتزع ويمسك الأشياء	",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));

  list.add(Question(
    " 7 يتحدث كثيرا (ثرثار)",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));

  list.add(Question(
    "8 - صعوبة البقاء جالسا  ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));

  list.add(Question(
    " 9- دائم العبث والتلاعب بالأشياء",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    " 10- عدم القدرة علي العب بهدوء ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    " 11- يتململ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    " 12- قلق",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    " 13- يتضايق بشدة",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));

// مجموع كثرة الحركة

  list.add(Question(
    "الاندفاع"
    " 14- يتصرف بدون تفكير",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));

  list.add(Question(
    "15- ينتقل من نشاط إلي الآخر ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    " 16- يفشل في انتظار الدور",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    " 17- صعوبة في انتظار دوره ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    "18- يجيب عن الأسئلة بدون تفكير ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    "19- مندفع ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    "20- يقاطع الحديث ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));

  list.add(Question(
    "21- يتطفل علي الآخرين ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));

  list.add(Question(
    " 22- لا ينتظر التعليمات",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));

  list.add(Question(
    " 23- لا يتبع أصول اللعب",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
// مجموع الاندفاع

  list.add(Question(
    " 24- ضعف في التركيز ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));

  list.add(Question(
    " 25- لا يكمل المهام التي يقوم بها	",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    " 26- غير منظم ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    " 27- ضعف في القدرة علي التخطيط ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    " 28- شارد الذهن",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    "29- عدم الانتباه ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    " 30- صعوبة اتباع التعليمات ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    " 31- قصر وقت الانتباه",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    " 32- سهولة التشتت",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    "33- صعوبة استمرار الانتباه ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    " 34- صعوبة الاستمرار في المهمة",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    "35- صعوبة إنهاء المهام ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  list.add(Question(
    "36- يفقد الأشياء كثيراً ",
    [
      Answer("لا", 0),
      Answer("أحياناً", 1),
      Answer("دائماً", 2),
    ],
  ));
  return list;
}

import 'package:flutter/material.dart';
import 'package:isef_project/constants.dart';
import 'package:isef_project/models/get_quiz_phase_two_adult.dart';
import 'package:isef_project/models/quiz_model.dart';
import 'package:isef_project/views/more.dart';
import 'package:isef_project/widgets/passed_color_list.dart';

class QuizScreenPhaseTwoAdult extends StatefulWidget {
  const QuizScreenPhaseTwoAdult({super.key});

  @override
  State<QuizScreenPhaseTwoAdult> createState() =>
      _QuizScreenPhaseTwoAdultState();
}

class _QuizScreenPhaseTwoAdultState extends State<QuizScreenPhaseTwoAdult> {
  //define the datas
  List<Question> questionList = getQuestionsPhaseTwoAdult();

  int currentQuestionIndex = 0;
  int score = 0;

  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 50, 80),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Text(
            "Phase Two",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          _questionWidget(),
          _answerList(),
          _nextButton(),
        ]),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              questionList[currentQuestionIndex].questionText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: isSelected ? Colors.white : Colors.black,
          backgroundColor: isSelected ? Colors.teal : Colors.white,
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            setState(() {
              if (answer.isCorrect == 1) {
                rightAns[currentQuestionIndex] = 1;
              }
              selectedAnswer = answer;
            });
          }
        },
        child: Text(answer.answerText),
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          if (isLastQuestion) {
            //display score
            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            //next question
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
        child: Text(isLastQuestion ? "Submit" : "Next"),
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;
    String title = isPassed ? "Passed " : "Failed";
    // for (int i = 0; i < rightAns.length;) {
    //   if (rightAns[i] == 17) {
    //     if (rightAns[i] == 1) {
    //       score++;
    //       i++;
    //       break;
    //     }
    //   }
    //   if (rightAns[i] == 1 && rightAns[i + 1] == 1) {
    //     score++;
    //   }
    //   i = i + 2;
    // }
    if (rightAns[0] == 1 && rightAns[1] == 1) {
      score++;
    }
    if (rightAns[2] == 1 && rightAns[3] == 1) {
      score++;
    }
    if (rightAns[4] == 1 && rightAns[5] == 1) {
      score++;
    }
    if (rightAns[6] == 1 && rightAns[7] == 1) {
      score++;
    }
    if (rightAns[8] == 1 && rightAns[9] == 1) {
      score++;
    }
    if (rightAns[10] == 1 && rightAns[11] == 1) {
      score++;
    }
    if (rightAns[12] == 1 && rightAns[13] == 1) {
      score++;
    }
    if (rightAns[14] == 1 && rightAns[15] == 1) {
      score++;
    }
    if (rightAns[16] == 1) {
      score++;
    }
    if (rightAns[17] == 1 && rightAns[18] == 1) {
      score++;
    }
    if (rightAns[19] == 1 && rightAns[20] == 1) {
      score++;
    }
    if (rightAns[21] == 1 && rightAns[22] == 1) {
      score++;
    }
    if (rightAns[23] == 1 && rightAns[24] == 1) {
      score++;
    }
    if (rightAns[25] == 1 && rightAns[26] == 1) {
      score++;
    }
    if (rightAns[27] == 1 && rightAns[28] == 1) {
      score++;
    }
    if (rightAns[29] == 1 && rightAns[30] == 1) {
      score++;
    }
    if (rightAns[31] == 1 && rightAns[32] == 1) {
      score++;
    }
    if (rightAns[33] == 1 && rightAns[34] == 1) {
      score++;
    }
    return AlertDialog(
      title: Text('score is $score , \n $rightAns'),
      content: const Text('Try Again Later'),
      actions: [
        Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MoreScreen()));

                    setState(() {
                      currentQuestionIndex = 0;
                      score = 0;

                      selectedAnswer = null;
                      // rightAns = List.filled(35, 0);
                    });
                  },
                  child: const Text("Return to phases")),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MoreScreen()));

                    setState(() {
                      currentQuestionIndex = 0;
                      score = 0;

                      selectedAnswer = null;
                      // rightAns = List.filled(35, 0);
                    });
                  },
                  child: const Text("Go To phase 2?")),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    );
  }
}

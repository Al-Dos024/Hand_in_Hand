import 'package:flutter/material.dart';
import 'package:isef_project/constants.dart';
import 'package:isef_project/models/get_quiz_phase_two_adult.dart';
import 'package:isef_project/models/quiz_model.dart';
import 'package:isef_project/views/oldMain.dart';
import 'package:isef_project/views/registar.dart';
import 'package:isef_project/widgets/custom_snackbar.dart';

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
  int scoreA = 0;
  int scoreB = 0;
  bool _isPressedOn = false;
  bool doneOnce = true;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Text(
            "Phase Two",
            style: TextStyle(
              color: Color(0xff828282),
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
            color: Colors.black,
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
            color: const Color.fromARGB(255, 234, 234, 234),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              questionList[currentQuestionIndex].questionText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
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
          backgroundColor:
              isSelected ? const Color(0xffC972B1) : const Color(0xffE8E8F6),
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          _isPressedOn = true;
          setState(() {
            rightAns[currentQuestionIndex] = answer.isCorrect;
            selectedAnswer = answer;
          });
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
          backgroundColor: const Color(0xff6A74D5),
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          if (_isPressedOn == false) {
            showSnackBar(context, "You must select an answer");
          } else {
            if (isLastQuestion) {
              //display score
              showDialog(context: context, builder: (_) => _showScoreDialog());
            } else {
              //next question
              setState(() {
                _isPressedOn = false;
                selectedAnswer = null;
                currentQuestionIndex++;
              });
            }
          }
        },
        child: Text(isLastQuestion ? "Submit" : "Next"),
      ),
    );
  }

  _showScoreDialog() {
    // bool isPassed = false;
    // String title = isPassed ? "Passed " : "Failed";
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
    if (doneOnce == true) {
      if (rightAns[0] == 1 && rightAns[1] == 1) {
        scoreA++;
      }
      if (rightAns[2] == 1 && rightAns[3] == 1) {
        scoreA++;
      }
      if (rightAns[4] == 1 && rightAns[5] == 1) {
        scoreA++;
      }
      if (rightAns[6] == 1 && rightAns[7] == 1) {
        scoreA++;
      }
      if (rightAns[8] == 1 && rightAns[9] == 1) {
        scoreA++;
      }
      if (rightAns[10] == 1 && rightAns[11] == 1) {
        scoreA++;
      }
      if (rightAns[12] == 1 && rightAns[13] == 1) {
        scoreA++;
      }
      if (rightAns[14] == 1 && rightAns[15] == 1) {
        scoreA++;
      }
      if (rightAns[16] == 1) {
        scoreA++;
      }
      if (rightAns[17] == 1 && rightAns[18] == 1) {
        scoreB++;
      }
      if (rightAns[19] == 1 && rightAns[20] == 1) {
        scoreB++;
      }
      if (rightAns[21] == 1 && rightAns[22] == 1) {
        scoreB++;
      }
      if (rightAns[23] == 1 && rightAns[24] == 1) {
        scoreB++;
      }
      if (rightAns[25] == 1 && rightAns[26] == 1) {
        scoreB++;
      }
      if (rightAns[27] == 1 && rightAns[28] == 1) {
        scoreB++;
      }
      if (rightAns[29] == 1 && rightAns[30] == 1) {
        scoreB++;
      }
      if (rightAns[31] == 1 && rightAns[32] == 1) {
        scoreB++;
      }
      if (rightAns[33] == 1 && rightAns[34] == 1) {
        scoreB++;
      }
      doneOnce = false;
    }
    databaseRef.child(uid).child("phase two adult").set(
      {
        'A score': scoreA,
        'B score': scoreB,
      },
    );
    return AlertDialog(
      title: Center(child: Text('score A is $scoreA \n score B is $scoreB ')),
      content: const Text('End of Phase 2 Adult'),
      actions: [
        Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OldMainScreen()));

                    setState(() {
                      currentQuestionIndex = 0;
                      scoreA = 0;
                      scoreB = 0;
                      selectedAnswer = null;
                      doneOnce = true;
                      // rightAns = List.filled(35, 0);
                    });
                  },
                  child: const Text("Return to phases")),
              const TextButton(
                  onPressed: null,
                  child: Text("Go To phase 3? (soon, stay turned)")),
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

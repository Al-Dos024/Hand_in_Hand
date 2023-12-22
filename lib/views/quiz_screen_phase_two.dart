import 'package:flutter/material.dart';
import 'package:isef_project/models/get_quiz_phase_two_children.dart';
import 'package:isef_project/views/more.dart';
import 'package:isef_project/widgets/passed_color_list.dart';
import 'package:isef_project/widgets/phase2list.dart';
import 'package:isef_project/widgets/total_score.dart';

import '../models/quiz_model.dart';

class QuizScreenPhaseTwo extends StatefulWidget {
  const QuizScreenPhaseTwo(
      {super.key, required this.age, required this.isMale});
  final int age;
  final bool isMale;
  @override
  State<QuizScreenPhaseTwo> createState() => _QuizScreenPhaseTwoState();
}

class _QuizScreenPhaseTwoState extends State<QuizScreenPhaseTwo> {
  //define the datas
  List<Question> questionList = getQuestionsPhaseTwoChild();
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
                fontSize: 18,
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
              for (int i = 0; i < listA.length; i++) {
                if (currentQuestionIndex + 1 == listA[i]) {
                  selectedAnswer = answer;
                  numA = numA + answer.isCorrect;
                  break;
                }
              }
              for (int i = 0; i < listB.length; i++) {
                if (currentQuestionIndex + 1 == listB[i]) {
                  selectedAnswer = answer;
                  numB = numB + answer.isCorrect;
                  break;
                }
              }
              for (int i = 0; i < listC.length; i++) {
                if (currentQuestionIndex + 1 == listC[i]) {
                  selectedAnswer = answer;
                  numC = numC + answer.isCorrect;
                  break;
                }
              }
              for (int i = 0; i < listD.length; i++) {
                if (currentQuestionIndex + 1 == listD[i]) {
                  selectedAnswer = answer;
                  numD = numD + answer.isCorrect;
                  break;
                }
              }
              for (int i = 0; i < listE.length; i++) {
                if (currentQuestionIndex + 1 == listE[i]) {
                  selectedAnswer = answer;
                  numE = numE + answer.isCorrect;
                  break;
                }
              }
              for (int i = 0; i < listF.length; i++) {
                if (currentQuestionIndex + 1 == listF[i]) {
                  selectedAnswer = answer;
                  numF = numF + answer.isCorrect;
                  break;
                }
              }
              for (int i = 0; i < listG.length; i++) {
                if (currentQuestionIndex + 1 == listG[i]) {
                  selectedAnswer = answer;
                  numG = numG + answer.isCorrect;
                  break;
                }
              }
              for (int i = 0; i < listH.length; i++) {
                if (currentQuestionIndex + 1 == listH[i]) {
                  selectedAnswer = answer;
                  numH = numH + answer.isCorrect;
                  break;
                }
              }
              for (int i = 0; i < listI.length; i++) {
                if (currentQuestionIndex + 1 == listI[i]) {
                  selectedAnswer = answer;
                  numI = numI + answer.isCorrect;
                  break;
                }
              }
              for (int i = 0; i < listJ.length; i++) {
                if (currentQuestionIndex + 1 == listJ[i]) {
                  selectedAnswer = answer;
                  numJ = numJ + answer.isCorrect;
                  break;
                }
              }
              for (int i = 0; i < listK.length; i++) {
                if (currentQuestionIndex + 1 == listK[i]) {
                  selectedAnswer = answer;
                  numK = numK + answer.isCorrect;
                  break;
                }
              }
              for (int i = 0; i < listL.length; i++) {
                if (currentQuestionIndex + 1 == listL[i]) {
                  selectedAnswer = answer;
                  numL = numL + answer.isCorrect;
                  break;
                }
              }
              for (int i = 0; i < listM.length; i++) {
                if (currentQuestionIndex + 1 == listM[i]) {
                  selectedAnswer = answer;
                  numM = numM + answer.isCorrect;
                  break;
                }
              }
              for (int i = 0; i < listN.length; i++) {
                if (currentQuestionIndex + 1 == listN[i]) {
                  selectedAnswer = answer;
                  numN = numN + answer.isCorrect;
                  break;
                }
              }
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
    // if (widget.isMale == true && (widget.age >= 3 && widget.age <= 5)) {
    tAscore(numA);
    tBscore(numB);
    // }
    String title = isPassed ? "Passed " : "Failed";

    return AlertDialog(
      title: PassedColorList(isPassed: isPassed),
      content: const Text('You have passed the phase one'),
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

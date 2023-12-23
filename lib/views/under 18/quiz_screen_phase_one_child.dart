import 'package:flutter/material.dart';
import 'package:isef_project/models/get_quiz_phase_one.dart';
import 'package:isef_project/models/quiz_model.dart';
import 'package:isef_project/temp/ibm_cal.dart';
import 'package:isef_project/views/more.dart';
import 'package:isef_project/widgets/custom_snackbar.dart';

class QuizScreenPhaseOneChild extends StatefulWidget {
  const QuizScreenPhaseOneChild({super.key});

  @override
  State<QuizScreenPhaseOneChild> createState() =>
      _QuizScreenPhaseOneChildState();
}

class _QuizScreenPhaseOneChildState extends State<QuizScreenPhaseOneChild> {
  //define the datas
  List<Question> questionList = getQuestionsPhaseOne();
  int currentQuestionIndex = 0;
  int mScore = 0;
  int iScore = 0;
  int dScore = 0;

  final List<int> _ph1ansList = List.filled(36, 0);
  bool _isPressedOn = false;
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
            "Phase One",
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
          setState(() {
            _isPressedOn = true;
            selectedAnswer = answer;
            _ph1ansList[currentQuestionIndex] = answer.isCorrect;
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
          backgroundColor: Colors.blueAccent,
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          if (_isPressedOn == false) {
            showSnackBar(context, "You must select an answer");
          } else {
            if (currentQuestionIndex < 13) {
              mScore += _ph1ansList[currentQuestionIndex];
            } else if (currentQuestionIndex < 23) {
              iScore += _ph1ansList[currentQuestionIndex];
            } else {
              dScore += _ph1ansList[currentQuestionIndex];
            }
            if (isLastQuestion) {
              //display score

              showDialog(context: context, builder: (_) => _showScoreDialog());
            } else {
              //next question
              setState(() {
                selectedAnswer = null;
                currentQuestionIndex++;
                _isPressedOn = false;
              });
            }
          }
        },
        child: Text(isLastQuestion ? "Submit" : "Next"),
      ),
    );
  }

  _showScoreDialog() {
    bool mIsPassed = false;
    bool iIsPassed = false;
    bool dIsPassed = false;

    if (mScore >= 19) {
      mIsPassed = true;
    }
    if (iScore >= 14) {
      iIsPassed = true;
    }
    if (dScore >= 19) {
      dIsPassed = true;
    }
    String mTitle = mIsPassed ? "Passed " : "Failed";
    String iTitle = iIsPassed ? "Passed " : "Failed";
    String dTitle = dIsPassed ? "Passed " : "Failed";

    return AlertDialog(
      title: Column(
        children: [
          Text(
            "$mTitle Movment score $mScore",
            style:
                TextStyle(color: mIsPassed ? Colors.green : Colors.redAccent),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "$iTitle Rush score $iScore",
            style:
                TextStyle(color: iIsPassed ? Colors.green : Colors.redAccent),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "$dTitle attention score $dScore",
            style:
                TextStyle(color: dIsPassed ? Colors.green : Colors.redAccent),
          ),
        ],
      ),
      content: mIsPassed || iIsPassed || dIsPassed
          ? const Text(
              'passed the phase one',
              textAlign: TextAlign.center,
            )
          : const Text(
              'failed in phase one',
              textAlign: TextAlign.center,
            ),
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
                      selectedAnswer = null;
                      mScore = 0;
                      iScore = 0;
                      dScore = 0;
                    });
                  },
                  child: const Text("Return to phases")),
              const SizedBox(
                height: 15,
              ),
              mIsPassed || iIsPassed || dIsPassed
                  ? TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BMIScreen()));

                        setState(() {
                          currentQuestionIndex = 0;
                          selectedAnswer = null;
                          mScore = 0;
                          iScore = 0;
                          dScore = 0;
                        });
                      },
                      child: const Text("Go To phase 2?"),
                    )
                  : const TextButton(
                      onPressed: null, child: Text("You Don't need phase two")),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        )
      ],
    );
  }
}

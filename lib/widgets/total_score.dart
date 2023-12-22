import 'package:isef_project/widgets/phase2list.dart';

List<int> scoreAborad = [
  38,
  40,
  42,
  44,
  46,
  47,
  49,
  51,
  53,
  55,
  57,
  59,
  61,
  63,
  65,
  67,
  69,
  71,
  73,
  75,
  77,
  79,
  80,
  82,
  84,
  86,
  88,
  90
];
void tAscore(int numA) {
  if (numA >= 27) {
    scoreA = 90;
  } else {
    scoreA = scoreAborad[numA];
  }
}

List<int> scoreBborad = [
  42,
  44,
  46,
  48,
  49,
  51,
  53,
  55,
  56,
  58,
  60,
  62,
  63,
  65,
  67,
  69,
  71,
  72,
  74,
  76,
  78,
  79,
  81,
  83,
  85,
  86,
  88,
  90
];
void tBscore(int numA) {
  if (numB >= 27) {
    scoreB = 90;
  } else {
    scoreB = scoreBborad[numB];
  }
}

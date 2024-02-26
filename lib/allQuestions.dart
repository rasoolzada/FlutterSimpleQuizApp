// ignore_for_file: unnecessary_string_escapes, prefer_final_fields

import 'Questions.dart';

class AllQuestions {
  int _questionNo = 0;
  List<QA> _questionHub = [
    QA('Some cats are actually allergic to humans', true),
    QA('You can lead a cow down stairs but not up stairs.', false),
    QA('Approximately one quarter of human bones are in the feet.', true),
    QA('A slug\'s blood is green.', true),
    QA('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    QA('It is illegal to pee in the Ocean in Portugal.', true),
    QA('No piece of square dry paper can be folded in half more than 7 times.',
        false),
    QA('In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    QA('The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    QA('The total surface area of two human lungs is approximately 70 square metres.',
        true),
    QA('Google was originally called \"Backrub\".', true),
    QA('Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    QA('In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  nextQ() {
    if (_questionNo < _questionHub.length - 1) {
      _questionNo++;
    }
  }

  getQuestionText() {
    return _questionHub[_questionNo].questiontext;
  }

  getAns() {
    return _questionHub[_questionNo].qAns;
  }

  isFinished() {
    if (_questionNo >= _questionHub.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  reset() {
    _questionNo = 0;
  }
}

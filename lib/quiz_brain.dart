import 'questions.dart';

class QuizBrain{
  int _questionNumber =0;

List<Question> _questionBank = [
  Question('Time complexity of Bubble Sort is O(n^2)', true),
  Question('Time complexity of Selection Sort is O(n)', false),
  Question('Time complexity of Insertion Sort is O(n^2)',true),
  Question('Time complexity of Binary Search is O(n(log(n)))', false),
  Question('Time complexity of merge Sort is O(n(log(n)))', true)
];

  void nextQuestion(){

    if(_questionNumber < _questionBank.length-1){
      _questionNumber++;
    }
  }

  String getQuestion(){
    return _questionBank[_questionNumber].question;
  }

  bool getAnswer(){
    return _questionBank[_questionNumber].answer;
  }

  bool isFinished(){
    if(_questionNumber >= _questionBank.length-1){
      print('Now returning true');
      return true;
    }else{
      return false;
    }
  }
  void reset(){
    _questionNumber=0;
  }
}
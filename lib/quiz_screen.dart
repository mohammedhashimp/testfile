import 'package:flutter/material.dart';
import 'package:flutter_application_2/question_model.dart'; // Import your Question and Answer classes
import 'package:flutter_application_2/resultpage.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 50, 80),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "QuizB",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            _questionWidget(),
            _answerList(),
            _nextButton(),
          ], 
        ),
      ),
    );
  }

  Widget _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Question - ${currentQuestionIndex + 1} of ${questionList.length}",
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
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Widget _answerList() {
    return Column(
      children: questionList[currentQuestionIndex].answersList.map((answer) {
        bool isSelected = selectedAnswer == answer;

        return Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 8),
          height: 48,
          child: ElevatedButton(
            child: Text(answer.answerText),
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              primary: isSelected ? Colors.greenAccent : Colors.white,
              onPrimary: isSelected ? Colors.white : Colors.black,
            ),
            onPressed: () {
              if (selectedAnswer == null) {
                setState(() {
                  selectedAnswer = answer;
                  if (answer.isCorrect) {
                    score++;
                  }
                });
              }
            },
          ),
        );
      }).toList(),
    );
  }

  Widget _nextButton() {
    bool isLastQuestion = currentQuestionIndex == questionList.length - 1;

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Colors.blueAccent,
          onPrimary: Colors.white,
        ),
        onPressed: () {
          if (isLastQuestion) {
            // Navigate to the result page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultPage(score),
              ),
            );
          } else {
            // Move to the next question
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }
}

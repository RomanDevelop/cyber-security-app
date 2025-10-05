import '../l10n/app_localizations.dart';

class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctAnswer;
  final String explanation;
  final String reference;

  const QuizQuestion({
    required this.question,
    required this.options,
    required this.correctAnswer,
    required this.explanation,
    required this.reference,
  });

  static List<QuizQuestion> getAllQuestions(AppLocalizations l10n) {
    return [
      QuizQuestion(
        question: l10n.question1,
        options: [
          l10n.question1Option1,
          l10n.question1Option2,
          l10n.question1Option3,
          l10n.question1Option4,
        ],
        correctAnswer: 1,
        explanation: l10n.question1Explanation,
        reference: l10n.question1Reference,
      ),
      QuizQuestion(
        question: l10n.question2,
        options: [
          l10n.question2Option1,
          l10n.question2Option2,
          l10n.question2Option3,
          l10n.question2Option4,
        ],
        correctAnswer: 1,
        explanation: l10n.question2Explanation,
        reference: l10n.question2Reference,
      ),
      QuizQuestion(
        question: l10n.question3,
        options: [
          l10n.question3Option1,
          l10n.question3Option2,
          l10n.question3Option3,
          l10n.question3Option4,
        ],
        correctAnswer: 1,
        explanation: l10n.question3Explanation,
        reference: l10n.question3Reference,
      ),
      QuizQuestion(
        question: l10n.question4,
        options: [
          l10n.question4Option1,
          l10n.question4Option2,
          l10n.question4Option3,
          l10n.question4Option4,
        ],
        correctAnswer: 1,
        explanation: l10n.question4Explanation,
        reference: l10n.question4Reference,
      ),
      QuizQuestion(
        question: l10n.question5,
        options: [
          l10n.question5Option1,
          l10n.question5Option2,
          l10n.question5Option3,
          l10n.question5Option4,
        ],
        correctAnswer: 1,
        explanation: l10n.question5Explanation,
        reference: l10n.question5Reference,
      ),
      QuizQuestion(
        question: l10n.question6,
        options: [
          l10n.question6Option1,
          l10n.question6Option2,
          l10n.question6Option3,
          l10n.question6Option4,
        ],
        correctAnswer: 1,
        explanation: l10n.question6Explanation,
        reference: l10n.question6Reference,
      ),
      QuizQuestion(
        question: l10n.question7,
        options: [
          l10n.question7Option1,
          l10n.question7Option2,
          l10n.question7Option3,
          l10n.question7Option4,
        ],
        correctAnswer: 1,
        explanation: l10n.question7Explanation,
        reference: l10n.question7Reference,
      ),
      QuizQuestion(
        question: l10n.question8,
        options: [
          l10n.question8Option1,
          l10n.question8Option2,
          l10n.question8Option3,
          l10n.question8Option4,
        ],
        correctAnswer: 1,
        explanation: l10n.question8Explanation,
        reference: l10n.question8Reference,
      ),
    ];
  }
}

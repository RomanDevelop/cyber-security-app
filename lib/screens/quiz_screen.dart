import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../l10n/app_localizations.dart';
import '../providers/app_state_provider.dart';
import '../models/quiz_question.dart';

class QuizScreen extends ConsumerWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final quizState = ref.watch(quizStateProvider);
    final quizNotifier = ref.read(quizStateProvider.notifier);

    if (quizState.currentQuestion >=
        QuizQuestion.getAllQuestions(l10n).length) {
      return _buildResultsScreen(context, ref, quizState, quizNotifier, l10n);
    }

    return _buildQuestionScreen(context, ref, quizState, quizNotifier, l10n);
  }

  Widget _buildQuestionScreen(
      BuildContext context,
      WidgetRef ref,
      QuizState quizState,
      QuizStateNotifier quizNotifier,
      AppLocalizations l10n) {
    final questions = QuizQuestion.getAllQuestions(l10n);
    final currentQuestion = questions[quizState.currentQuestion];

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.quizTitle(quizState.currentQuestion + 1)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              _showResetDialog(context, quizNotifier);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Progress Bar
            LinearProgressIndicator(
              value: (quizState.currentQuestion + 1) / questions.length,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[600]!),
            ),

            const SizedBox(height: 24),

            // Question
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Question ${quizState.currentQuestion + 1}',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.blue[700],
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      currentQuestion.question,
                      style: const TextStyle(fontSize: 18, height: 1.5),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Answer Options
            Expanded(
              child: ListView.builder(
                itemCount: currentQuestion.options.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      title: Text(
                        currentQuestion.options[index],
                        style: const TextStyle(fontSize: 16),
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue[100],
                        child: Text(
                          String.fromCharCode(65 + index), // A, B, C, D
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      onTap: () => _selectAnswer(context, ref, quizNotifier,
                          index, currentQuestion, l10n),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResultsScreen(
      BuildContext context,
      WidgetRef ref,
      QuizState quizState,
      QuizStateNotifier quizNotifier,
      AppLocalizations l10n) {
    final questions = QuizQuestion.getAllQuestions(l10n);
    final score = quizState.correctAnswers;
    final total = questions.length;
    final percentage = (score / total * 100).round();

    String getScoreMessage() {
      if (percentage >= 90) {
        return 'Excellent! You have a strong understanding of mobile app security threats.';
      }
      if (percentage >= 70) {
        return 'Good job! You have a solid grasp of security concepts with room for improvement.';
      }
      if (percentage >= 50) {
        return 'Not bad! Consider reviewing the Red Flags Guide to improve your knowledge.';
      }
      return 'Keep studying! Review the Red Flags Guide and try the quiz again.';
    }

    Color getScoreColor() {
      if (percentage >= 70) return Colors.green;
      if (percentage >= 50) return Colors.orange;
      return Colors.red;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Results'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Score Circle
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: getScoreColor().withValues(alpha: 0.1),
                      border: Border.all(
                        color: getScoreColor(),
                        width: 4,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '$percentage%',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: getScoreColor(),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Score Text
                  Text(
                    'Your Score: $score out of $total',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Message
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: getScoreColor().withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: getScoreColor().withValues(alpha: 0.3)),
                    ),
                    child: Text(
                      getScoreMessage(),
                      style: TextStyle(
                        fontSize: 16,
                        color: getScoreColor(),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            // Action Buttons
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      quizNotifier.resetQuiz();
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Retake Quiz'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/red_flags_guide');
                    },
                    icon: const Icon(Icons.book),
                    label: const Text('Review Red Flags Guide'),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    icon: const Icon(Icons.home),
                    label: const Text('Back to Home'),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _selectAnswer(
      BuildContext context,
      WidgetRef ref,
      QuizStateNotifier quizNotifier,
      int selectedIndex,
      QuizQuestion currentQuestion,
      AppLocalizations l10n) {
    final isCorrect = selectedIndex == currentQuestion.correctAnswer;
    final quizState = ref.read(quizStateProvider);

    quizNotifier.answerQuestion(quizState.currentQuestion, isCorrect);

    // Show explanation
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(
              isCorrect ? Icons.check_circle : Icons.cancel,
              color: isCorrect ? Colors.green : Colors.red,
            ),
            const SizedBox(width: 8),
            Text(isCorrect ? l10n.correct : l10n.incorrect),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.explanation,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(currentQuestion.explanation),
            if (currentQuestion.reference.isNotEmpty) ...[
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Icon(Icons.link, size: 16, color: Colors.blue[700]),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Reference: ${currentQuestion.reference}',
                        style: TextStyle(
                          color: Colors.blue[700],
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              if (quizState.currentQuestion <
                  QuizQuestion.getAllQuestions(l10n).length - 1) {
                quizNotifier.nextQuestion();
              } else {
                // Это последний вопрос, переходим к результатам
                quizNotifier.nextQuestion();
              }
            },
            child: Text(
              quizState.currentQuestion <
                      QuizQuestion.getAllQuestions(l10n).length - 1
                  ? l10n.nextQuestion
                  : l10n.viewResults,
            ),
          ),
        ],
      ),
    );
  }

  void _showResetDialog(BuildContext context, QuizStateNotifier quizNotifier) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reset Quiz'),
        content: const Text(
            'Are you sure you want to reset the quiz? This will clear your current progress.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              quizNotifier.resetQuiz();
            },
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }
}

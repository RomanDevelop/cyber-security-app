import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/app_data.dart';

// Состояние викторины
class QuizState {
  final int currentQuestion;
  final int correctAnswers;
  final List<bool> answers;

  const QuizState({
    this.currentQuestion = 0,
    this.correctAnswers = 0,
    this.answers = const [],
  });

  QuizState copyWith({
    int? currentQuestion,
    int? correctAnswers,
    List<bool>? answers,
  }) {
    return QuizState(
      currentQuestion: currentQuestion ?? this.currentQuestion,
      correctAnswers: correctAnswers ?? this.correctAnswers,
      answers: answers ?? this.answers,
    );
  }
}

// Провайдер состояния викторины
final quizStateProvider =
    StateNotifierProvider<QuizStateNotifier, QuizState>((ref) {
  return QuizStateNotifier();
});

class QuizStateNotifier extends StateNotifier<QuizState> {
  QuizStateNotifier() : super(const QuizState());

  void startQuiz() {
    state = const QuizState();
  }

  void answerQuestion(int questionIndex, bool isCorrect) {
    final newAnswers = List<bool>.from(state.answers);
    if (questionIndex < newAnswers.length) {
      newAnswers[questionIndex] = isCorrect;
    } else {
      newAnswers.add(isCorrect);
    }

    state = state.copyWith(
      answers: newAnswers,
      correctAnswers:
          isCorrect ? state.correctAnswers + 1 : state.correctAnswers,
    );
  }

  void nextQuestion() {
    if (state.currentQuestion < 7) {
      state = state.copyWith(
        currentQuestion: state.currentQuestion + 1,
      );
    } else {
      // Переходим к результатам (currentQuestion становится 8, что больше количества вопросов)
      state = state.copyWith(
        currentQuestion: state.currentQuestion + 1,
      );
    }
  }

  void resetQuiz() {
    state = const QuizState();
  }
}

// Провайдер выбранного приложения
final selectedAppProvider = StateProvider<String>((ref) => 'SuperIPTV');

// Провайдер локали (по умолчанию украинский)
final localeProvider = StateProvider<Locale>((ref) => const Locale('uk'));

// Провайдер для переключения языка
final languageProvider = StateNotifierProvider<LanguageNotifier, String>((ref) {
  return LanguageNotifier();
});

class LanguageNotifier extends StateNotifier<String> {
  LanguageNotifier() : super('uk'); // По умолчанию украинский

  void toggleLanguage() {
    state = state == 'en' ? 'uk' : 'en';
  }

  void setLanguage(String language) {
    state = language;
  }
}

// Провайдер для данных приложения (упрощенный)
final appDataProvider = Provider.family<AppData, String>((ref, appName) {
  // Для простоты используем статические данные
  // В реальном приложении здесь была бы логика с локализацией
  return AppData.getAppData(appName, null);
});

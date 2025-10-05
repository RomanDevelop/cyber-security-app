import 'package:flutter/material.dart';

class AppThemes {
  // Основные цвета кибер-темы
  static const Color primaryGreen =
      Color(0xFF00FF41); // Яркий зеленый (Matrix green)
  static const Color darkGreen = Color(0xFF00CC33);
  static const Color lightGreen = Color(0xFF66FF66);

  static const Color primaryBlue = Color(0xFF0099FF); // Кибер-синий
  static const Color darkBlue = Color(0xFF0066CC);
  static const Color lightBlue = Color(0xFF66CCFF);

  static const Color cyberPurple = Color(0xFF9900FF); // Кибер-фиолетовый
  static const Color darkPurple = Color(0xFF6600CC);

  static const Color darkBackground = Color(0xFF0A0A0A); // Очень темный фон
  static const Color cardBackground = Color(0xFF1A1A1A); // Темный фон карточек
  static const Color surfaceBackground = Color(0xFF2A2A2A); // Поверхность

  static const Color textPrimary = Color(0xFFFFFFFF); // Белый текст
  static const Color textSecondary = Color(0xFFCCCCCC); // Светло-серый
  static const Color textMuted = Color(0xFF888888); // Серый

  static const Color errorRed = Color(0xFFFF0044); // Красный для ошибок
  static const Color warningOrange =
      Color(0xFFFF6600); // Оранжевый для предупреждений
  static const Color successGreen = Color(0xFF00FF41); // Зеленый для успеха

  // Темная кибер-тема
  static ThemeData get darkCyberTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      // Цветовая схема
      colorScheme: const ColorScheme.dark(
        primary: primaryGreen,
        onPrimary: darkBackground,
        secondary: primaryBlue,
        onSecondary: darkBackground,
        tertiary: cyberPurple,
        onTertiary: darkBackground,
        surface: cardBackground,
        onSurface: textPrimary,
        error: errorRed,
        onError: textPrimary,
      ),

      // Основная тема приложения
      scaffoldBackgroundColor: darkBackground,
      appBarTheme: const AppBarTheme(
        backgroundColor: cardBackground,
        foregroundColor: textPrimary,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'monospace',
        ),
        iconTheme: IconThemeData(color: primaryGreen),
      ),

      // Карточки
      cardTheme: CardThemeData(
        color: cardBackground,
        elevation: 8,
        shadowColor: primaryGreen.withValues(alpha: 0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: primaryGreen.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
      ),

      // Кнопки
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryGreen,
          foregroundColor: darkBackground,
          elevation: 4,
          shadowColor: primaryGreen.withValues(alpha: 0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: 'monospace',
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryGreen,
          side: BorderSide(color: primaryGreen, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: 'monospace',
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryBlue,
          textStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            fontFamily: 'monospace',
          ),
        ),
      ),

      // Floating Action Button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryGreen,
        foregroundColor: darkBackground,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),

      // Input Fields
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: primaryGreen.withValues(alpha: 0.5)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: primaryGreen.withValues(alpha: 0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: primaryGreen, width: 2),
        ),
        labelStyle: const TextStyle(color: textSecondary),
        hintStyle: const TextStyle(color: textMuted),
      ),

      // Списки
      listTileTheme: const ListTileThemeData(
        textColor: textPrimary,
        iconColor: primaryGreen,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),

      // Диалоги
      dialogTheme: DialogThemeData(
        backgroundColor: cardBackground,
        titleTextStyle: const TextStyle(
          color: textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'monospace',
        ),
        contentTextStyle: const TextStyle(
          color: textSecondary,
          fontSize: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      // Снакбары
      snackBarTheme: SnackBarThemeData(
        backgroundColor: cardBackground,
        contentTextStyle: const TextStyle(
          color: textPrimary,
          fontFamily: 'monospace',
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        behavior: SnackBarBehavior.floating,
      ),

      // Прогресс-бары
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryGreen,
        linearTrackColor: surfaceBackground,
        circularTrackColor: surfaceBackground,
      ),

      // Чипы
      chipTheme: ChipThemeData(
        backgroundColor: surfaceBackground,
        labelStyle: const TextStyle(color: textPrimary),
        side: BorderSide(color: primaryGreen.withValues(alpha: 0.3)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),

      // Разделители
      dividerTheme: const DividerThemeData(
        color: surfaceBackground,
        thickness: 1,
        space: 1,
      ),

      // Иконки
      iconTheme: const IconThemeData(
        color: primaryGreen,
        size: 24,
      ),

      // Текст
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: textPrimary,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          fontFamily: 'monospace',
        ),
        displayMedium: TextStyle(
          color: textPrimary,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          fontFamily: 'monospace',
        ),
        displaySmall: TextStyle(
          color: textPrimary,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontFamily: 'monospace',
        ),
        headlineLarge: TextStyle(
          color: textPrimary,
          fontSize: 22,
          fontWeight: FontWeight.w600,
          fontFamily: 'monospace',
        ),
        headlineMedium: TextStyle(
          color: textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: 'monospace',
        ),
        headlineSmall: TextStyle(
          color: textPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: 'monospace',
        ),
        titleLarge: TextStyle(
          color: textPrimary,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'monospace',
        ),
        titleMedium: TextStyle(
          color: textPrimary,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'monospace',
        ),
        titleSmall: TextStyle(
          color: textSecondary,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: 'monospace',
        ),
        bodyLarge: TextStyle(
          color: textPrimary,
          fontSize: 16,
          fontFamily: 'monospace',
        ),
        bodyMedium: TextStyle(
          color: textSecondary,
          fontSize: 14,
          fontFamily: 'monospace',
        ),
        bodySmall: TextStyle(
          color: textMuted,
          fontSize: 12,
          fontFamily: 'monospace',
        ),
        labelLarge: TextStyle(
          color: textPrimary,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'monospace',
        ),
        labelMedium: TextStyle(
          color: textSecondary,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: 'monospace',
        ),
        labelSmall: TextStyle(
          color: textMuted,
          fontSize: 10,
          fontWeight: FontWeight.w500,
          fontFamily: 'monospace',
        ),
      ),
    );
  }

  // Светлая кибер-тема (альтернативная)
  static ThemeData get lightCyberTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: primaryGreen,
        onPrimary: Colors.white,
        secondary: primaryBlue,
        onSecondary: Colors.white,
        tertiary: cyberPurple,
        onTertiary: Colors.white,
        surface: Colors.white,
        onSurface: darkBackground,
        error: errorRed,
        onError: Colors.white,
      ),
      scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryGreen,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'monospace',
        ),
      ),
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 4,
        shadowColor: primaryGreen.withValues(alpha: 0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: primaryGreen.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
      ),
    );
  }

  // Градиенты для специальных элементов
  static LinearGradient get primaryGradient {
    return const LinearGradient(
      colors: [primaryGreen, darkGreen],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }

  static LinearGradient get secondaryGradient {
    return const LinearGradient(
      colors: [primaryBlue, darkBlue],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }

  static LinearGradient get cyberGradient {
    return const LinearGradient(
      colors: [primaryGreen, primaryBlue, cyberPurple],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }

  // Тени с кибер-эффектом
  static List<BoxShadow> get cyberShadow {
    return [
      BoxShadow(
        color: primaryGreen.withValues(alpha: 0.3),
        blurRadius: 8,
        spreadRadius: 2,
        offset: const Offset(0, 4),
      ),
    ];
  }

  static List<BoxShadow> get cyberGlow {
    return [
      BoxShadow(
        color: primaryGreen.withValues(alpha: 0.5),
        blurRadius: 20,
        spreadRadius: 5,
        offset: const Offset(0, 0),
      ),
    ];
  }
}

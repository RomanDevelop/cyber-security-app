import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'l10n/app_localizations.dart';
import 'screens/home_screen.dart';
import 'screens/app_preview_screen.dart';
import 'screens/permission_mismatch_viewer.dart';
import 'screens/red_flags_guide_screen.dart';
import 'screens/quiz_screen.dart';
import 'screens/for_instructors_screen.dart';
import 'providers/app_state_provider.dart';
import 'themes/app_themes.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MockIPTVAuditorApp(),
    ),
  );
}

class MockIPTVAuditorApp extends StatelessWidget {
  const MockIPTVAuditorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final locale = ref.watch(localeProvider);

        return MaterialApp(
          title: 'MockIPTV Auditor',
          debugShowCheckedModeBanner: false,
          locale: locale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''),
            Locale('uk', ''),
          ],
          theme: AppThemes.darkCyberTheme,
          home: const HomeScreen(),
          routes: {
            '/app_preview': (context) => const AppPreviewScreen(),
            '/permission_mismatch': (context) =>
                const PermissionMismatchViewer(),
            '/red_flags_guide': (context) => const RedFlagsGuideScreen(),
            '/quiz': (context) => const QuizScreen(),
            '/for_instructors': (context) => const ForInstructorsScreen(),
          },
        );
      },
    );
  }
}

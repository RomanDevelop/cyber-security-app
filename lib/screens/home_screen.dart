import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../l10n/app_localizations.dart';
import '../providers/app_state_provider.dart';
import '../widgets/cyber_widgets.dart';
import '../themes/app_themes.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final languageNotifier = ref.read(languageProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: CyberText(
          l10n.appTitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppThemes.textPrimary,
          ),
          isGlowing: true,
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (String language) {
              languageNotifier.setLanguage(language);
              ref.read(localeProvider.notifier).state = Locale(language);
            },
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem<String>(
                value: 'en',
                child: CyberText('English'),
              ),
              const PopupMenuItem<String>(
                value: 'uk',
                child: CyberText('Українська'),
              ),
            ],
            child: const CyberIcon(icon: Icons.language, isGlowing: true),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // App Title and Description
            CyberContainer(
              hasGlow: true,
              child: Column(
                children: [
                  CyberText(
                    l10n.appTitle,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: AppThemes.primaryGreen,
                    ),
                    isGlowing: true,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  CyberText(
                    l10n.educationalTool,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppThemes.textSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Description Card
            CyberCard(
              hasGlow: true,
              child: CyberText(
                l10n.appDescription,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 24),

            // Navigation Buttons
            SizedBox(
              width: double.infinity,
              child: CyberButton(
                text: l10n.openSampleAppPage,
                icon: Icons.visibility,
                onPressed: () {
                  Navigator.pushNamed(context, '/app_preview');
                },
                hasGlow: true,
              ),
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              child: CyberButton(
                text: l10n.startAuditChecklist,
                icon: Icons.checklist,
                isPrimary: false,
                onPressed: () {
                  Navigator.pushNamed(context, '/permission_mismatch');
                },
              ),
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              child: CyberButton(
                text: l10n.redFlagsGuide,
                icon: Icons.warning,
                isPrimary: false,
                onPressed: () {
                  Navigator.pushNamed(context, '/red_flags_guide');
                },
              ),
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              child: CyberButton(
                text: l10n.knowledgeQuiz,
                icon: Icons.quiz,
                isPrimary: false,
                onPressed: () {
                  Navigator.pushNamed(context, '/quiz');
                },
              ),
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              child: CyberButton(
                text: l10n.forInstructors,
                icon: Icons.school,
                isPrimary: false,
                onPressed: () {
                  Navigator.pushNamed(context, '/for_instructors');
                },
              ),
            ),

            const SizedBox(height: 32),

            // Divider
            const CyberDivider(isGlowing: true),

            const SizedBox(height: 24),

            // Warning Section
            Container(
              decoration: BoxDecoration(
                color: AppThemes.errorRed.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppThemes.errorRed,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const CyberIcon(
                      icon: Icons.warning,
                      color: AppThemes.errorRed,
                      isGlowing: true,
                    ),
                    const SizedBox(height: 12),
                    CyberText(
                      l10n.educationalPurposeOnly,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppThemes.errorRed,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                      isGlowing: true,
                    ),
                    const SizedBox(height: 8),
                    CyberText(
                      l10n.safetyDisclaimer,
                      style: const TextStyle(
                        color: AppThemes.errorRed,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Features Grid
            Row(
              children: [
                Expanded(
                  child: CyberContainer(
                    child: Column(
                      children: [
                        const CyberIcon(icon: Icons.security, isGlowing: true),
                        const SizedBox(height: 8),
                        const CyberText(
                          'Security Analysis',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: CyberContainer(
                    child: Column(
                      children: [
                        const CyberIcon(icon: Icons.quiz, isGlowing: true),
                        const SizedBox(height: 8),
                        const CyberText(
                          'Knowledge Test',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: CyberContainer(
                    child: Column(
                      children: [
                        const CyberIcon(icon: Icons.school, isGlowing: true),
                        const SizedBox(height: 8),
                        const CyberText(
                          'Education',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
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
}

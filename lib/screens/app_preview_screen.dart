import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../l10n/app_localizations.dart';
import '../providers/app_state_provider.dart';
import '../models/app_data.dart';
import '../widgets/cyber_widgets.dart';
import '../themes/app_themes.dart';

class AppPreviewScreen extends ConsumerWidget {
  const AppPreviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final selectedApp = ref.watch(selectedAppProvider);
    final appData = ref.watch(appDataProvider(selectedApp));

    return Scaffold(
      appBar: AppBar(
        title: CyberText(
          appData.name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppThemes.textPrimary,
          ),
          isGlowing: true,
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String app) {
              ref.read(selectedAppProvider.notifier).state = app;
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: 'SuperIPTV',
                child: CyberText(l10n.superIPTV),
              ),
              PopupMenuItem<String>(
                value: 'UltraVPN',
                child: CyberText(l10n.ultraVPN),
              ),
            ],
            child: const CyberIcon(icon: Icons.swap_horiz, isGlowing: true),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App Header with Cyber Gradient
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: AppThemes.cyberGradient,
                boxShadow: AppThemes.cyberGlow,
              ),
              child: Column(
                children: [
                  // App Icon with Cyber Glow
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: AppThemes.darkBackground,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: AppThemes.cyberGlow,
                    ),
                    child: Center(
                      child: CyberText(
                        appData.name[0],
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: AppThemes.primaryGreen,
                        ),
                        isGlowing: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  CyberText(
                    appData.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppThemes.textPrimary,
                    ),
                    isGlowing: true,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  CyberText(
                    appData.developer,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppThemes.textSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CyberIcon(
                          icon: Icons.star,
                          color: AppThemes.warningOrange,
                          isGlowing: true),
                      const SizedBox(width: 4),
                      CyberText(
                        appData.rating,
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppThemes.textPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 16),
                      CyberText(
                        '${appData.downloads} downloads',
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppThemes.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // App Description
            Padding(
              padding: const EdgeInsets.all(16),
              child: CyberCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CyberText(
                      l10n.description,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppThemes.primaryGreen,
                      ),
                      isGlowing: true,
                    ),
                    const SizedBox(height: 12),
                    CyberText(
                      appData.description,
                      style: const TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
              ),
            ),

            // Screenshots Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CyberText(
                    l10n.screenshots,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppThemes.primaryGreen,
                    ),
                    isGlowing: true,
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: appData.screenshots.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 120,
                          margin: const EdgeInsets.only(right: 12),
                          child: CyberContainer(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CyberIcon(
                                  icon: Icons.phone_android,
                                  size: 40,
                                  color: AppThemes.primaryGreen,
                                  isGlowing: true,
                                ),
                                const SizedBox(height: 8),
                                CyberText(
                                  'Screenshot ${index + 1}',
                                  style: const TextStyle(
                                    color: AppThemes.textSecondary,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Requested Permissions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CyberText(
                    'Requested Permissions',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppThemes.primaryGreen,
                    ),
                    isGlowing: true,
                  ),
                  const SizedBox(height: 12),
                  ...appData.permissions
                      .map((permission) =>
                          CyberPermissionCard(permission: permission))
                      .toList(),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Developer Info
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CyberCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CyberIcon(
                            icon: Icons.warning,
                            color: AppThemes.warningOrange,
                            isGlowing: true),
                        const SizedBox(width: 8),
                        CyberText(
                          l10n.developerInformation,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppThemes.warningOrange,
                          ),
                          isGlowing: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    CyberText(
                      l10n.developerInformationMissing,
                      style: const TextStyle(
                        color: AppThemes.warningOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Reviews
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CyberCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CyberIcon(
                            icon: Icons.warning,
                            color: AppThemes.errorRed,
                            isGlowing: true),
                        const SizedBox(width: 8),
                        CyberText(
                          l10n.reviews,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppThemes.errorRed,
                          ),
                          isGlowing: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    CyberText(
                      'Very few reviews (${appData.reviewCount} reviews) - Potential red flag',
                      style: const TextStyle(
                        color: AppThemes.errorRed,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class CyberPermissionCard extends StatelessWidget {
  final PermissionInfo permission;

  const CyberPermissionCard({super.key, required this.permission});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: permission.isSuspicious
            ? AppThemes.errorRed.withValues(alpha: 0.1)
            : AppThemes.successGreen.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: permission.isSuspicious
              ? AppThemes.errorRed
              : AppThemes.successGreen,
          width: 1,
        ),
      ),
      child: ListTile(
        leading: CyberIcon(
          icon: permission.icon,
          color: permission.isSuspicious
              ? AppThemes.errorRed
              : AppThemes.successGreen,
          isGlowing: true,
        ),
        title: CyberText(
          permission.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: permission.isSuspicious
                ? AppThemes.errorRed
                : AppThemes.successGreen,
          ),
        ),
        subtitle: CyberText(permission.description),
        trailing: IconButton(
          icon: CyberIcon(
            icon: Icons.help_outline,
            color: permission.isSuspicious
                ? AppThemes.errorRed
                : AppThemes.successGreen,
            isGlowing: true,
          ),
          onPressed: () => _showPermissionExplanation(context, permission),
        ),
      ),
    );
  }

  void _showPermissionExplanation(
      BuildContext context, PermissionInfo permission) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: CyberText(
          'Why ${permission.name} could be suspicious',
          style: const TextStyle(
            color: AppThemes.textPrimary,
            fontWeight: FontWeight.bold,
          ),
          isGlowing: true,
        ),
        content: CyberText(
          permission.explanation,
          style: const TextStyle(color: AppThemes.textSecondary),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const CyberText('Close'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../l10n/app_localizations.dart';
import '../providers/app_state_provider.dart';
import '../models/app_data.dart';

class PermissionMismatchViewer extends ConsumerWidget {
  const PermissionMismatchViewer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final selectedApp = ref.watch(selectedAppProvider);
    final appData = ref.watch(appDataProvider(selectedApp));

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.permissionMismatchAnalysis),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String app) {
              ref.read(selectedAppProvider.notifier).state = app;
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: 'SuperIPTV',
                child: Text(l10n.superIPTV),
              ),
              PopupMenuItem<String>(
                value: 'UltraVPN',
                child: Text(l10n.ultraVPN),
              ),
            ],
            child: const Icon(Icons.swap_horiz),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App Info
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${l10n.analyzing}: ${appData.name}',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${l10n.developer}: ${appData.developer}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${l10n.description}: ${appData.description}',
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Permission Analysis
            Text(
              l10n.permissionAnalysis,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),

            // Suspicious Permissions
            if (appData.permissions.any((p) => p.isSuspicious)) ...[
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.red[200]!),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.warning, color: Colors.red[700]),
                        const SizedBox(width: 8),
                        Flexible(
                          child: Text(
                            l10n.suspiciousPermissionsDetected,
                            style: TextStyle(
                              color: Colors.red[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ...appData.permissions
                        .where((p) => p.isSuspicious)
                        .map((permission) =>
                            _buildPermissionCard(permission, true))
                        .toList(),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],

            // Normal Permissions
            if (appData.permissions.any((p) => !p.isSuspicious)) ...[
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.green[200]!),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.check_circle, color: Colors.green[700]),
                        const SizedBox(width: 8),
                        Text(
                          l10n.normalPermissions,
                          style: TextStyle(
                            color: Colors.green[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ...appData.permissions
                        .where((p) => !p.isSuspicious)
                        .map((permission) =>
                            _buildPermissionCard(permission, false))
                        .toList(),
                  ],
                ),
              ),
            ],

            const SizedBox(height: 24),

            // Analysis Summary
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Analysis Summary',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    const SizedBox(height: 12),
                    _buildSummaryItem(
                      'Total Permissions',
                      '${appData.permissions.length}',
                      Colors.blue,
                    ),
                    _buildSummaryItem(
                      'Suspicious Permissions',
                      '${appData.permissions.where((p) => p.isSuspicious).length}',
                      Colors.red,
                    ),
                    _buildSummaryItem(
                      l10n.normalPermissions,
                      '${appData.permissions.where((p) => !p.isSuspicious).length}',
                      Colors.green,
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: appData.permissions.any((p) => p.isSuspicious)
                            ? Colors.red[50]
                            : Colors.green[50],
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: appData.permissions.any((p) => p.isSuspicious)
                              ? Colors.red[200]!
                              : Colors.green[200]!,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            appData.permissions.any((p) => p.isSuspicious)
                                ? Icons.warning
                                : Icons.check_circle,
                            color:
                                appData.permissions.any((p) => p.isSuspicious)
                                    ? Colors.red[700]
                                    : Colors.green[700],
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              appData.permissions.any((p) => p.isSuspicious)
                                  ? 'This app requests suspicious permissions that are not typical for its stated purpose. This is a red flag for potential malicious behavior.'
                                  : 'This app only requests permissions that are appropriate for its stated purpose. No immediate red flags detected.',
                              style: TextStyle(
                                color: appData.permissions
                                        .any((p) => p.isSuspicious)
                                    ? Colors.red[700]
                                    : Colors.green[700],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPermissionCard(PermissionInfo permission, bool isSuspicious) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Icon(
          permission.icon,
          color: isSuspicious ? Colors.red : Colors.green,
        ),
        title: Text(
          permission.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSuspicious ? Colors.red : Colors.green,
          ),
        ),
        subtitle: Text(permission.description),
        trailing: IconButton(
          icon: Icon(
            Icons.help_outline,
            color: isSuspicious ? Colors.red : Colors.green,
          ),
          onPressed: () => _showPermissionExplanation(permission),
        ),
      ),
    );
  }

  Widget _buildSummaryItem(String label, String value, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  void _showPermissionExplanation(PermissionInfo permission) {
    // This would show a dialog with the explanation
    // For now, we'll just show a snackbar
    // In a real app, you'd show a proper dialog here
  }
}

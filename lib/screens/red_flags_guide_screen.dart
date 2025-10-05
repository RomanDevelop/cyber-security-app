import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../models/red_flag_technique.dart';

class RedFlagsGuideScreen extends StatelessWidget {
  const RedFlagsGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final techniques = RedFlagTechnique.getAllTechniques(l10n);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.redFlagsGuide),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: techniques.length,
        itemBuilder: (context, index) {
          final technique = techniques[index];
          return RedFlagCard(technique: technique, l10n: l10n);
        },
      ),
    );
  }
}

class RedFlagCard extends StatefulWidget {
  final RedFlagTechnique technique;
  final AppLocalizations l10n;

  const RedFlagCard({super.key, required this.technique, required this.l10n});

  @override
  State<RedFlagCard> createState() => _RedFlagCardState();
}

class _RedFlagCardState extends State<RedFlagCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ExpansionTile(
        title: Row(
          children: [
            Icon(
              widget.technique.icon,
              color: widget.technique.severity.color,
              size: 24,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                widget.technique.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: widget.technique.severity.color.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                widget.technique.severity.name,
                style: TextStyle(
                  color: widget.technique.severity.color,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Description
                _buildSection(
                  widget.l10n.description,
                  Icons.description,
                  widget.technique.description,
                ),

                const SizedBox(height: 16),

                // Real Example
                _buildSection(
                  widget.l10n.realExample,
                  Icons.bug_report,
                  widget.technique.realExample,
                ),

                if (widget.technique.source.isNotEmpty) ...[
                  const SizedBox(height: 8),
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
                            '${widget.l10n.source}: ${widget.technique.source}',
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

                const SizedBox(height: 16),

                // Audit Indicators
                _buildSection(
                  widget.l10n.auditIndicators,
                  Icons.search,
                  widget.technique.auditIndicators.join('\n• '),
                  isList: true,
                ),

                const SizedBox(height: 16),

                // Protection Recommendations
                _buildSection(
                  widget.l10n.protectionRecommendations,
                  Icons.shield,
                  widget.technique.protectionRecommendations.join('\n• '),
                  isList: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(String title, IconData icon, String content,
      {bool isList = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 20, color: Colors.blue[700]),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: Text(
            isList ? '• $content' : content,
            style: const TextStyle(fontSize: 14, height: 1.5),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../l10n/app_localizations.dart';

class ForInstructorsScreen extends StatelessWidget {
  const ForInstructorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.forInstructors),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Card(
              color: Colors.blue[50],
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.school, color: Colors.blue[700], size: 32),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            l10n.instructorResources,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[700],
                                ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      l10n.instructorDescription,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Exercise Scenarios
            _buildSection(
              context,
              l10n.exerciseScenarios,
              Icons.assignment,
              [
                _buildExerciseCard(
                  context,
                  l10n.scenario1,
                  l10n.scenario1Subtitle,
                  l10n.scenario1Description,
                  'assets/manifest_example.xml',
                  l10n.downloadManifestExample,
                ),
                _buildExerciseCard(
                  context,
                  l10n.scenario2,
                  l10n.scenario2Subtitle,
                  l10n.scenario2Description,
                  'assets/store_examples.md',
                  l10n.downloadStoreExamples,
                ),
                _buildExerciseCard(
                  context,
                  l10n.scenario3,
                  l10n.scenario3Subtitle,
                  l10n.scenario3Description,
                  'assets/report_template.md',
                  l10n.downloadReportTemplate,
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Quick Reference
            _buildSection(
              context,
              l10n.quickReferenceMaterials,
              Icons.bookmark,
              [
                _buildReferenceCard(
                  context,
                  l10n.auditChecklist,
                  l10n.auditChecklistDescription,
                  'assets/audit_checklist.csv',
                ),
                _buildReferenceCard(
                  context,
                  l10n.permissionAnalysisGuide,
                  l10n.permissionAnalysisGuideDescription,
                  'assets/permission_guide.md',
                ),
                _buildReferenceCard(
                  context,
                  l10n.redFlagsSummary,
                  l10n.redFlagsSummaryDescription,
                  'assets/red_flags_summary.md',
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Teaching Tips
            _buildTeachingTips(context, l10n),

            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, IconData icon,
      List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.blue[700], size: 24),
            const SizedBox(width: 8),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        ...children,
      ],
    );
  }

  Widget _buildExerciseCard(
    BuildContext context,
    String title,
    String subtitle,
    String description,
    String assetPath,
    String buttonText,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue[600],
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 14, height: 1.4),
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: () => _showAssetContent(context, assetPath, title),
              icon: const Icon(Icons.download, size: 16),
              label: Text(buttonText),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReferenceCard(
    BuildContext context,
    String title,
    String description,
    String assetPath,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Icon(Icons.description, color: Colors.blue[700]),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        trailing: IconButton(
          icon: const Icon(Icons.download),
          onPressed: () => _showAssetContent(context, assetPath, title),
        ),
      ),
    );
  }

  Widget _buildTeachingTips(BuildContext context, AppLocalizations l10n) {
    return Card(
      color: Colors.green[50],
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.lightbulb, color: Colors.green[700]),
                const SizedBox(width: 8),
                Text(
                  l10n.teachingTips,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              l10n.teachingTipsDescription,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            Text('• ${l10n.teachingTip1}'),
            Text('• ${l10n.teachingTip2}'),
            Text('• ${l10n.teachingTip3}'),
            Text('• ${l10n.teachingTip4}'),
            Text('• ${l10n.teachingTip5}'),
            Text('• ${l10n.teachingTip6}'),
            Text('• ${l10n.teachingTip7}'),
          ],
        ),
      ),
    );
  }

  void _showAssetContent(BuildContext context, String assetPath, String title) {
    final l10n = AppLocalizations.of(context)!;
    String content = _getAssetContent(assetPath);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: SizedBox(
          width: double.maxFinite,
          height: 400,
          child: SingleChildScrollView(
            child: SelectableText(
              content,
              style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: content));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(l10n.contentCopiedToClipboard)),
              );
            },
            child: Text(l10n.copy),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.close),
          ),
        ],
      ),
    );
  }

  String _getAssetContent(String assetPath) {
    switch (assetPath) {
      case 'assets/manifest_example.xml':
        return '''<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.suspicious.iptv">
    
    <!-- RED FLAG: Excessive permissions for IPTV app -->
    <uses-permission android:name="android.permission.READ_SMS" />
    <uses-permission android:name="android.permission.SEND_SMS" />
    <uses-permission android:name="android.permission.READ_CONTACTS" />
    <uses-permission android:name="android.permission.ACCESSIBILITY_SERVICE" />
    <uses-permission android:name="android.permission.REQUEST_INSTALL_PACKAGES" />
    <uses-permission android:name="android.permission.RECORD_AUDIO" />
    <uses-permission android:name="android.permission.READ_PHONE_STATE" />
    
    <!-- Legitimate permissions -->
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.WAKE_LOCK" />
    
    <application
        android:allowBackup="false"
        android:icon="@mipmap/ic_launcher"
        android:label="SuperIPTV"
        android:theme="@style/AppTheme">
        
        <!-- RED FLAG: Suspicious activity names -->
        <activity
            android:name=".MainActivity"
            android:exported="true">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
        
        <!-- RED FLAG: Hidden service -->
        <service
            android:name=".HiddenService"
            android:enabled="true"
            android:exported="false" />
            
        <!-- RED FLAG: Accessibility service -->
        <service
            android:name=".AccessibilityService"
            android:permission="android.permission.BIND_ACCESSIBILITY_SERVICE"
            android:exported="true">
            <intent-filter>
                <action android:name="android.accessibilityservice.AccessibilityService" />
            </intent-filter>
        </service>
        
    </application>
</manifest>''';

      case 'assets/store_examples.md':
        return '''# App Store Red Flags Examples

## Example 1: Suspicious IPTV App Description
```
SuperIPTV - Premium Streaming
Watch thousands of channels worldwide!

⚠️ RED FLAGS:
- "Install this app to view restricted IPTV streams - enable SMS verification"
- "Free trial with SMS confirmation"
- "Access premium content with phone verification"
- Missing developer information
- Only 3 reviews with 2.1 rating
- Recently published (1 week ago)
```

## Example 2: Fake VPN App Description
```
UltraVPN - Secure Connection
Protect your privacy and bypass restrictions!

⚠️ RED FLAGS:
- "Free trial available with SMS verification"
- "Secure your data with phone verification"
- Developer: "Tech Solutions Ltd" (no website, no other apps)
- 47 reviews but all generic 5-star reviews
- App description mentions "SMS verification" multiple times
```

## Example 3: Utility App with Suspicious Permissions
```
System Optimizer Pro
Clean your device and boost performance!

⚠️ RED FLAGS:
- Requests SMS, Contacts, and Accessibility permissions
- "Enable SMS notifications for cleaning results"
- Developer account created 2 days ago
- No reviews yet
- App icon looks generic/cloned
```

## Red Flags to Look For:
1. **Permission Mismatches**: App functionality doesn't match requested permissions
2. **SMS Verification**: Legitimate apps rarely require SMS for basic functionality
3. **Missing Developer Info**: No website, contact info, or other apps
4. **Suspicious Descriptions**: Mentions of "verification", "confirmation", "premium access"
5. **Low Review Count**: Very few or no reviews
6. **Generic Reviews**: All reviews look similar or generic
7. **Recent Publication**: App published very recently with many downloads
8. **Cloned Icons**: App icon looks like a copy of popular apps
''';

      case 'assets/report_template.md':
        return '''# Mobile App Security Assessment Report

## Executive Summary
[Brief overview of findings and risk level]

## App Information
- **App Name**: [App Name]
- **Package**: [com.example.app]
- **Version**: [1.0.0]
- **Developer**: [Developer Name]
- **Analysis Date**: [YYYY-MM-DD]
- **Analyst**: [Your Name]

## Risk Assessment
- **Overall Risk Level**: [Low/Medium/High/Critical]
- **Confidence Level**: [High/Medium/Low]

## Findings

### Critical Issues
1. **[Issue Title]**
   - **Description**: [Detailed description]
   - **Impact**: [Potential impact]
   - **Evidence**: [Supporting evidence]
   - **Recommendation**: [Remediation steps]

### High Risk Issues
1. **[Issue Title]**
   - **Description**: [Detailed description]
   - **Impact**: [Potential impact]
   - **Evidence**: [Supporting evidence]
   - **Recommendation**: [Remediation steps]

### Medium Risk Issues
1. **[Issue Title]**
   - **Description**: [Detailed description]
   - **Impact**: [Potential impact]
   - **Evidence**: [Supporting evidence]
   - **Recommendation**: [Remediation steps]

### Low Risk Issues
1. **[Issue Title]**
   - **Description**: [Detailed description]
   - **Impact**: [Potential impact]
   - **Evidence**: [Supporting evidence]
   - **Recommendation**: [Remediation steps]

## Permission Analysis
| Permission | Required | Justified | Risk Level | Notes |
|------------|----------|-----------|------------|-------|
| INTERNET | Yes | Yes | Low | Required for functionality |
| READ_SMS | No | No | Critical | Not justified for app purpose |
| [Add more permissions] | | | | |

## Recommendations
1. **Immediate Actions**: [Critical items that need immediate attention]
2. **Short-term**: [Items to address within 30 days]
3. **Long-term**: [Items to address within 90 days]

## Conclusion
[Summary of overall assessment and next steps]

---
*This report is for educational purposes only and should not be used for malicious activities.*
''';

      case 'assets/audit_checklist.csv':
        return '''Indicator,WhyItMatters,SuggestedAction,Severity
READ_SMS permission,Can intercept 2FA codes and sensitive messages,Flag for manual review,Critical
SEND_SMS permission,Can send premium SMS or spam,Block installation,Critical
ACCESSIBILITY_SERVICE permission,Can control other apps and steal data,Block installation,Critical
REQUEST_INSTALL_PACKAGES permission,Can install additional malicious apps,Block installation,Critical
READ_CONTACTS permission,Can harvest personal information,Flag for review,High
READ_CALL_LOG permission,Can access call history,Flag for review,High
RECORD_AUDIO permission,Can record conversations,Flag for review,High
READ_PHONE_STATE permission,Can collect device identifiers,Flag for review,Medium
WRITE_EXTERNAL_STORAGE permission,Can access user files,Review necessity,Medium
ACCESS_FINE_LOCATION permission,Can track user location,Review necessity,Medium
Developer info missing,Unknown developer credibility,Investigate further,High
Very few reviews,Potential fake app,Flag for review,Medium
Suspicious app description,May indicate malicious intent,Flag for review,Medium
High obfuscation ratio,Attempting to hide functionality,Require source code review,High
Dynamic code loading,Can download additional payloads,Block installation,Critical
WebView with JavaScript,Can display fake login pages,Review implementation,High
Custom URL schemes,Potential for phishing attacks,Review implementation,Medium
Certificate pinning bypass,Can intercept encrypted traffic,Flag for review,High
Fake OAuth implementation,Can steal credentials,Block installation,Critical
Ad fraud indicators,Generating fake ad revenue,Flag for review,Medium''';

      case 'assets/permission_guide.md':
        return '''# Android Permission Analysis Guide

## Critical Permissions (Block Installation)
- **READ_SMS / SEND_SMS**: Rarely needed, major red flag
- **ACCESSIBILITY_SERVICE**: Can control other apps
- **REQUEST_INSTALL_PACKAGES**: Can install additional apps
- **SYSTEM_ALERT_WINDOW**: Can overlay fake UI

## High Risk Permissions (Flag for Review)
- **READ_CONTACTS**: Personal information access
- **READ_CALL_LOG**: Call history access
- **RECORD_AUDIO**: Can record conversations
- **CAMERA**: Can take photos/videos
- **READ_EXTERNAL_STORAGE**: Can access user files

## Medium Risk Permissions (Review Necessity)
- **READ_PHONE_STATE**: Device identifier access
- **ACCESS_FINE_LOCATION**: Location tracking
- **WRITE_EXTERNAL_STORAGE**: File system access
- **VIBRATE**: Usually harmless but check context

## Legitimate Permissions (Usually OK)
- **INTERNET**: Required for most apps
- **ACCESS_NETWORK_STATE**: Network status checking
- **WAKE_LOCK**: Prevent screen sleep
- **VIBRATE**: User feedback

## Analysis Process
1. Identify all requested permissions
2. Compare with app's stated functionality
3. Check for permission mismatches
4. Research each suspicious permission
5. Consider app category and developer reputation
6. Flag suspicious combinations for manual review

## Red Flag Combinations
- IPTV app + SMS permissions
- VPN app + Contacts permissions
- Utility app + Accessibility permissions
- Game app + Camera + Microphone permissions
- Simple app + Install packages permission
''';

      case 'assets/red_flags_summary.md':
        return '''# Mobile App Security Red Flags - Quick Reference

## Permission Red Flags
- **SMS Access**: READ_SMS, SEND_SMS (rarely needed)
- **Accessibility**: ACCESSIBILITY_SERVICE (can control other apps)
- **Installation**: REQUEST_INSTALL_PACKAGES (can install malware)
- **Personal Data**: READ_CONTACTS, READ_CALL_LOG (data harvesting)
- **Recording**: RECORD_AUDIO, CAMERA (surveillance)

## App Store Red Flags
- **Missing Developer Info**: No website, contact, or other apps
- **Low Review Count**: Very few or no reviews
- **Generic Reviews**: All reviews look similar
- **Recent Publication**: New app with many downloads
- **Suspicious Descriptions**: Mentions "verification", "confirmation"

## Technical Red Flags
- **High Obfuscation**: Attempting to hide functionality
- **Dynamic Loading**: Downloading additional code
- **WebView Phishing**: Fake login pages
- **Fake OAuth**: Custom authentication flows
- **Certificate Bypass**: Intercepting encrypted traffic

## Behavioral Red Flags
- **Permission Mismatches**: Functionality doesn't match permissions
- **Excessive Permissions**: More than needed for functionality
- **Hidden Services**: Background services not mentioned
- **Network Anomalies**: Suspicious traffic patterns
- **Data Exfiltration**: Sending data to unknown servers

## Quick Assessment Questions
1. Does the app's functionality justify all requested permissions?
2. Is the developer reputable and transparent?
3. Are there any permission mismatches?
4. Does the app description raise any concerns?
5. Are there any technical red flags in the code?
6. Is the app's behavior consistent with its stated purpose?

## Immediate Actions
- **Block**: Critical permissions without justification
- **Flag**: Suspicious combinations for manual review
- **Investigate**: Unknown developers and new apps
- **Monitor**: Apps with medium-risk permissions
''';

      default:
        return 'Content not available';
    }
  }
}

import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

enum SeverityLevel {
  low('Low', Colors.orange),
  medium('Medium', Colors.orange),
  high('High', Colors.red),
  critical('Critical', Colors.red);

  const SeverityLevel(this.name, this.color);
  final String name;
  final Color color;
}

class RedFlagTechnique {
  final String name;
  final String description;
  final String realExample;
  final String source;
  final List<String> auditIndicators;
  final List<String> protectionRecommendations;
  final SeverityLevel severity;
  final IconData icon;

  const RedFlagTechnique({
    required this.name,
    required this.description,
    required this.realExample,
    required this.source,
    required this.auditIndicators,
    required this.protectionRecommendations,
    required this.severity,
    required this.icon,
  });

  static List<RedFlagTechnique> getAllTechniques(AppLocalizations l10n) {
    return [
      const RedFlagTechnique(
        name: 'Dynamic Code Loading',
        description:
            'Malicious apps load additional code at runtime to evade static analysis. This technique allows attackers to download and execute payloads after the app passes initial security checks.',
        realExample:
            'FakeApp family - Android banking trojans that download additional modules after installation',
        source: 'Kaspersky Threat Intelligence',
        auditIndicators: [
          'DexClassLoader or PathClassLoader usage',
          'Downloading files to external storage',
          'Reflection-based method invocation',
          'Encrypted or obfuscated string resources',
          'Network requests to suspicious domains'
        ],
        protectionRecommendations: [
          'Implement runtime application self-protection (RASP)',
          'Monitor network traffic for suspicious downloads',
          'Use behavioral analysis to detect dynamic loading',
          'Implement code signing verification',
          'Block apps with dynamic loading capabilities'
        ],
        severity: SeverityLevel.high,
        icon: Icons.download,
      ),
      const RedFlagTechnique(
        name: 'Accessibility Service Abuse',
        description:
            'Malicious apps abuse accessibility services to control other applications, steal sensitive data, and perform unauthorized actions. This is one of the most dangerous techniques used by mobile malware.',
        realExample:
            'Cerberus banking trojan - uses accessibility services to overlay fake login screens',
        source: 'Cisco Talos Intelligence',
        auditIndicators: [
          'Accessibility service declarations in manifest',
          'Overlay permission requests',
          'Screen content monitoring',
          'Gesture simulation capabilities',
          'Access to other app\'s UI elements'
        ],
        protectionRecommendations: [
          'Block accessibility services for non-essential apps',
          'Implement overlay detection mechanisms',
          'Monitor accessibility service usage',
          'Use app whitelisting for accessibility services',
          'Regular security awareness training'
        ],
        severity: SeverityLevel.critical,
        icon: Icons.accessibility,
      ),
      const RedFlagTechnique(
        name: 'WebView Phishing',
        description:
            'Malicious apps use WebView components to display fake login pages that steal user credentials. The WebView can be styled to look exactly like legitimate banking or social media apps.',
        realExample:
            'Anubis banking trojan - uses WebView to display fake banking login pages',
        source: 'ESET Threat Intelligence',
        auditIndicators: [
          'WebView with JavaScript enabled',
          'Loading external URLs in WebView',
          'Custom URL schemes handling',
          'Certificate pinning bypass attempts',
          'Suspicious domain patterns in URLs'
        ],
        protectionRecommendations: [
          'Disable JavaScript in WebViews when possible',
          'Implement certificate pinning',
          'Use native UI instead of WebView for sensitive operations',
          'Monitor WebView URL loading',
          'Implement anti-phishing detection'
        ],
        severity: SeverityLevel.high,
        icon: Icons.web,
      ),
      const RedFlagTechnique(
        name: 'Code Obfuscation',
        description:
            'Malicious apps use various obfuscation techniques to hide their true functionality from static analysis tools. This makes it difficult to detect malicious behavior during app review.',
        realExample:
            'Ginp banking trojan - heavily obfuscated to avoid detection',
        source: 'Check Point Research',
        auditIndicators: [
          'High obfuscation ratio in code',
          'Encrypted string resources',
          'Control flow obfuscation',
          'Dead code injection',
          'Reflection-based method calls'
        ],
        protectionRecommendations: [
          'Use advanced deobfuscation tools',
          'Implement dynamic analysis',
          'Monitor app behavior at runtime',
          'Use machine learning for obfuscation detection',
          'Require source code review for high-risk apps'
        ],
        severity: SeverityLevel.medium,
        icon: Icons.code,
      ),
      const RedFlagTechnique(
        name: 'App Store Evasion',
        description:
            'Malicious apps use various techniques to bypass app store security checks and get published. This includes using legitimate developer accounts, fake certificates, and social engineering.',
        realExample:
            'Fake cryptocurrency apps - published using compromised developer accounts',
        source: 'Google Play Protect',
        auditIndicators: [
          'Recently created developer account',
          'Minimal app store presence',
          'Suspicious app descriptions',
          'Fake user reviews',
          'Rapid app updates after publication'
        ],
        protectionRecommendations: [
          'Implement stricter developer verification',
          'Use automated app analysis tools',
          'Monitor for suspicious app patterns',
          'Implement user reporting mechanisms',
          'Regular security audits of published apps'
        ],
        severity: SeverityLevel.high,
        icon: Icons.store,
      ),
      const RedFlagTechnique(
        name: 'VPN/IPTV Disguise',
        description:
            'Malicious apps disguise themselves as legitimate VPN or IPTV applications to trick users into installing them. These apps often request excessive permissions and perform malicious activities.',
        realExample: 'FakeVPN malware - disguised as legitimate VPN service',
        source: 'Symantec Threat Intelligence',
        auditIndicators: [
          'Permission mismatches with stated functionality',
          'Excessive permission requests',
          'Suspicious app descriptions',
          'Missing developer information',
          'Unusual network behavior'
        ],
        protectionRecommendations: [
          'Verify app functionality matches permissions',
          'Check developer reputation and history',
          'Use app reputation services',
          'Implement permission analysis tools',
          'Educate users about app verification'
        ],
        severity: SeverityLevel.medium,
        icon: Icons.vpn_key,
      ),
      const RedFlagTechnique(
        name: 'Fake OAuth Implementation',
        description:
            'Malicious apps implement fake OAuth flows to steal user credentials and tokens. They create convincing login screens that look identical to legitimate services.',
        realExample: 'FakeApp OAuth - steals Google and Facebook credentials',
        source: 'Microsoft Security Intelligence',
        auditIndicators: [
          'Custom OAuth implementation instead of official SDKs',
          'Hardcoded OAuth endpoints',
          'Missing certificate validation',
          'Suspicious redirect URIs',
          'Token storage in plain text'
        ],
        protectionRecommendations: [
          'Use official OAuth SDKs only',
          'Implement proper certificate validation',
          'Verify OAuth endpoints and redirects',
          'Use secure token storage',
          'Implement OAuth flow monitoring'
        ],
        severity: SeverityLevel.high,
        icon: Icons.login,
      ),
      const RedFlagTechnique(
        name: 'Installer Flow Abuse',
        description:
            'Malicious apps abuse the Android installer flow to install additional malicious packages without user knowledge. This is often used to install banking trojans or spyware.',
        realExample:
            'Dropper malware - installs additional malicious apps through installer flow',
        source: 'Kaspersky Mobile Security',
        auditIndicators: [
          'REQUEST_INSTALL_PACKAGES permission',
          'Downloading APK files',
          'Silent installation attempts',
          'Installer flow abuse',
          'Installation of unsigned packages'
        ],
        protectionRecommendations: [
          'Block REQUEST_INSTALL_PACKAGES for non-essential apps',
          'Monitor APK downloads and installations',
          'Implement app whitelisting',
          'Use enterprise mobile device management',
          'Regular security scans for installed apps'
        ],
        severity: SeverityLevel.critical,
        icon: Icons.install_mobile,
      ),
      const RedFlagTechnique(
        name: 'Ad Fraud',
        description:
            'Malicious apps generate fake ad clicks and impressions to steal advertising revenue. They often use hidden WebViews and automated interactions to simulate user behavior.',
        realExample: 'ClickBot malware - generates fake ad clicks for revenue',
        source: 'Google Ad Fraud Prevention',
        auditIndicators: [
          'Hidden WebView components',
          'Automated ad interactions',
          'Suspicious ad network usage',
          'Fake user behavior simulation',
          'Revenue generation without user interaction'
        ],
        protectionRecommendations: [
          'Implement ad fraud detection',
          'Monitor app behavior for fake interactions',
          'Use legitimate ad networks only',
          'Implement user interaction verification',
          'Regular ad fraud audits'
        ],
        severity: SeverityLevel.medium,
        icon: Icons.ads_click,
      ),
      const RedFlagTechnique(
        name: 'Data Exfiltration',
        description:
            'Malicious apps steal sensitive user data including contacts, messages, photos, and financial information. This data is often sent to remote servers controlled by attackers.',
        realExample:
            'Cerberus banking trojan - steals banking credentials and personal data',
        source: 'FBI Internet Crime Complaint Center',
        auditIndicators: [
          'Excessive data access permissions',
          'Suspicious network traffic patterns',
          'Data encryption before transmission',
          'Suspicious server communications',
          'Personal data collection without consent'
        ],
        protectionRecommendations: [
          'Implement data loss prevention (DLP)',
          'Monitor network traffic for data exfiltration',
          'Use app permission analysis',
          'Implement data encryption at rest',
          'Regular security audits and monitoring'
        ],
        severity: SeverityLevel.critical,
        icon: Icons.data_usage,
      ),
    ];
  }
}

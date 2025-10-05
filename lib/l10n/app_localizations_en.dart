// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'MockIPTV Auditor';

  @override
  String get educationalTool => 'Educational Tool for Mobile App Auditors';

  @override
  String get appDescription =>
      'This educational app demonstrates common techniques used by malicious applications to disguise themselves as legitimate VPN, IPTV, or utility apps. Learn to identify red flags and suspicious patterns in mobile applications.';

  @override
  String get openSampleAppPage => 'Open Sample App Page';

  @override
  String get startAuditChecklist => 'Start Audit Checklist';

  @override
  String get redFlagsGuide => 'Red Flags Guide';

  @override
  String get knowledgeQuiz => 'Knowledge Quiz';

  @override
  String get forInstructors => 'For Instructors';

  @override
  String get educationalPurposeOnly => 'Educational Purpose Only';

  @override
  String get safetyDisclaimer =>
      'This is a safe, non-functional educational demo. Do not use for harmful purposes.';

  @override
  String get superIPTV => 'SuperIPTV';

  @override
  String get ultraVPN => 'UltraVPN';

  @override
  String get unknownDeveloper => 'Unknown Developer';

  @override
  String get suspiciousDescription =>
      'Watch thousands of IPTV channels from around the world. Access premium content and live sports. Install this app to view restricted IPTV streams - enable SMS verification for premium access.';

  @override
  String get vpnDescription =>
      'Secure your internet connection with our premium VPN service. Bypass geo-restrictions and protect your privacy. Free trial available with SMS verification.';

  @override
  String get requestedPermissions => 'Requested Permissions (Simulated)';

  @override
  String get developerInformation => 'Developer Information';

  @override
  String get reviews => 'Reviews';

  @override
  String get screenshots => 'Screenshots';

  @override
  String get description => 'Description';

  @override
  String get permissionMismatchAnalysis => 'Permission Mismatch Analysis';

  @override
  String get claimedFunctionality => 'Claimed Functionality';

  @override
  String get requestedPermissionsColumn => 'Requested Permissions';

  @override
  String get status => 'Status';

  @override
  String get legitimate => 'Legitimate';

  @override
  String get suspicious => 'Suspicious';

  @override
  String get critical => 'Critical';

  @override
  String get redFlagsDetected => 'Red Flags Detected';

  @override
  String get auditRecommendations => 'Audit Recommendations';

  @override
  String quizTitle(Object questionNumber) {
    return 'Quiz - Question $questionNumber/8';
  }

  @override
  String question(Object questionNumber) {
    return 'Question $questionNumber';
  }

  @override
  String get correct => 'Correct!';

  @override
  String get incorrect => 'Incorrect';

  @override
  String get explanation => 'Explanation:';

  @override
  String get nextQuestion => 'Next Question';

  @override
  String get viewResults => 'View Results';

  @override
  String get quizResults => 'Quiz Results';

  @override
  String yourScore(Object score, Object total) {
    return 'Your Score: $score out of $total';
  }

  @override
  String get retakeQuiz => 'Retake Quiz';

  @override
  String get reviewRedFlagsGuide => 'Review Red Flags Guide';

  @override
  String get backToHome => 'Back to Home';

  @override
  String get resetQuiz => 'Reset Quiz';

  @override
  String get resetQuizConfirmation =>
      'Are you sure you want to reset the quiz? This will clear your current progress.';

  @override
  String get cancel => 'Cancel';

  @override
  String get reset => 'Reset';

  @override
  String get close => 'Close';

  @override
  String get copy => 'Copy';

  @override
  String get contentCopiedToClipboard => 'Content copied to clipboard';

  @override
  String get analyzing => 'Analyzing';

  @override
  String get developer => 'Developer';

  @override
  String get permissionAnalysis => 'Permission Analysis';

  @override
  String get suspiciousPermissionsDetected => 'Suspicious Permissions Detected';

  @override
  String get viewRedFlagsGuide => 'View Red Flags Guide';

  @override
  String get question1 =>
      'An IPTV app requests permission to READ_SMS. What should you do?';

  @override
  String get question1Option1 =>
      'Allow it - SMS access is needed for user verification';

  @override
  String get question1Option2 =>
      'Flag it for review - SMS access is suspicious for IPTV apps';

  @override
  String get question1Option3 =>
      'Install it anyway - the permission might be for a legitimate feature';

  @override
  String get question1Option4 => 'Check if the app has good reviews first';

  @override
  String get question1Explanation =>
      'SMS access is rarely required for IPTV functionality and is a major red flag. This permission could be used to intercept 2FA codes or steal sensitive information. Always flag apps with permission mismatches for manual review.';

  @override
  String get question1Reference =>
      'Red Flags Guide - Permission Mismatch Analysis';

  @override
  String get question2 =>
      'What is the primary risk of apps requesting ACCESSIBILITY_SERVICE permission?';

  @override
  String get question2Option1 => 'They can access the internet';

  @override
  String get question2Option2 =>
      'They can control other apps and steal sensitive data';

  @override
  String get question2Option3 => 'They can read device storage';

  @override
  String get question2Option4 => 'They can make phone calls';

  @override
  String get question2Explanation =>
      'Accessibility services can control other applications, simulate user interactions, and steal sensitive data from any app on the device. This is one of the most dangerous permissions and should never be granted to non-essential apps.';

  @override
  String get question2Reference =>
      'Red Flags Guide - Accessibility Service Abuse';

  @override
  String get question3 =>
      'A VPN app requests permission to READ_CONTACTS. This is:';

  @override
  String get question3Option1 =>
      'Normal - VPN apps need to access contacts for security';

  @override
  String get question3Option2 =>
      'Suspicious - VPN apps should not need contact access';

  @override
  String get question3Option3 => 'Required - for user authentication';

  @override
  String get question3Option4 => 'Optional - depends on the VPN provider';

  @override
  String get question3Explanation =>
      'VPN apps do not need access to contacts. This is a clear red flag indicating potential data harvesting or social engineering attacks. Legitimate VPN services do not require contact access.';

  @override
  String get question3Reference => 'Red Flags Guide - VPN/IPTV Disguise';

  @override
  String get question4 =>
      'What does dynamic code loading typically indicate in mobile apps?';

  @override
  String get question4Option1 => 'Efficient app performance';

  @override
  String get question4Option2 => 'Attempt to evade static analysis';

  @override
  String get question4Option3 => 'Better user experience';

  @override
  String get question4Option4 => 'Reduced app size';

  @override
  String get question4Explanation =>
      'Dynamic code loading is often used by malicious apps to download and execute additional payloads after passing initial security checks. This technique helps malware evade static analysis tools.';

  @override
  String get question4Reference => 'Red Flags Guide - Dynamic Code Loading';

  @override
  String get question5 =>
      'An app with very few reviews (less than 10) and a recently created developer account is:';

  @override
  String get question5Option1 => 'A new legitimate app';

  @override
  String get question5Option2 =>
      'Potentially suspicious and should be investigated';

  @override
  String get question5Option3 => 'Normal for small developers';

  @override
  String get question5Option4 => 'A sign of high quality';

  @override
  String get question5Explanation =>
      'Apps with minimal reviews and recently created developer accounts are common indicators of app store evasion techniques. Malicious apps often use fake or compromised developer accounts to bypass security checks.';

  @override
  String get question5Reference => 'Red Flags Guide - App Store Evasion';

  @override
  String get question6 =>
      'What is the main risk of WebView phishing in mobile apps?';

  @override
  String get question6Option1 => 'Slower app performance';

  @override
  String get question6Option2 =>
      'Display of fake login pages to steal credentials';

  @override
  String get question6Option3 => 'Increased data usage';

  @override
  String get question6Option4 => 'Poor user interface';

  @override
  String get question6Explanation =>
      'WebView phishing uses WebView components to display convincing fake login pages that steal user credentials. The WebView can be styled to look exactly like legitimate banking or social media apps.';

  @override
  String get question6Reference => 'Red Flags Guide - WebView Phishing';

  @override
  String get question7 =>
      'An app requests REQUEST_INSTALL_PACKAGES permission. For most apps, this is:';

  @override
  String get question7Option1 => 'Required for normal operation';

  @override
  String get question7Option2 =>
      'A critical red flag indicating potential dropper malware';

  @override
  String get question7Option3 => 'Needed for app updates';

  @override
  String get question7Option4 => 'Standard for all Android apps';

  @override
  String get question7Explanation =>
      'REQUEST_INSTALL_PACKAGES permission allows apps to install other packages. This is rarely needed and is a major red flag for potential dropper malware that installs additional malicious apps.';

  @override
  String get question7Reference => 'Red Flags Guide - Installer Flow Abuse';

  @override
  String get question8 =>
      'What should you do if an app\'s functionality doesn\'t match its requested permissions?';

  @override
  String get question8Option1 =>
      'Install it anyway - permissions might be for future features';

  @override
  String get question8Option2 =>
      'Flag it for manual review and investigate further';

  @override
  String get question8Option3 =>
      'Check user reviews to see if others had issues';

  @override
  String get question8Option4 => 'Contact the developer for clarification';

  @override
  String get question8Explanation =>
      'Permission mismatches are a major red flag and should always trigger manual review. Apps should only request permissions that are directly related to their stated functionality. This is a common technique used by malicious apps.';

  @override
  String get question8Reference =>
      'Red Flags Guide - Permission Mismatch Analysis';

  @override
  String get realExample => 'Real Example';

  @override
  String get source => 'Source';

  @override
  String get auditIndicators => 'Audit Indicators';

  @override
  String get protectionRecommendations => 'Protection Recommendations';

  @override
  String get instructorResources => 'Instructor Resources';

  @override
  String get instructorDescription =>
      'This section provides educational materials, exercise scenarios, and templates for teaching mobile app security auditing.';

  @override
  String get exerciseScenarios => 'Exercise Scenarios';

  @override
  String get quickReferenceMaterials => 'Quick Reference Materials';

  @override
  String get teachingTips => 'Teaching Tips';

  @override
  String get teachingTipsDescription =>
      'Best practices for teaching mobile app security auditing:';

  @override
  String get teachingTip1 =>
      'Start with basic permission analysis before moving to advanced techniques';

  @override
  String get teachingTip2 =>
      'Use real-world examples and case studies to illustrate concepts';

  @override
  String get teachingTip3 =>
      'Encourage students to think like attackers to understand motivations';

  @override
  String get teachingTip4 =>
      'Practice with both legitimate and malicious app examples';

  @override
  String get teachingTip5 =>
      'Emphasize the importance of context in security analysis';

  @override
  String get teachingTip6 =>
      'Use the quiz feature to reinforce learning objectives';

  @override
  String get teachingTip7 =>
      'Discuss ethical considerations and responsible disclosure';

  @override
  String get scenario1 => 'Scenario 1: Static APK Review';

  @override
  String get scenario1Subtitle => 'Manifest and Assets Analysis';

  @override
  String get scenario1Description =>
      'Students analyze a simulated APK manifest and assets to identify suspicious permissions, activities, and resources. Focus on permission mismatches and obfuscation indicators.';

  @override
  String get scenario2 => 'Scenario 2: App Store Review';

  @override
  String get scenario2Subtitle => 'Store Page and Screenshots Analysis';

  @override
  String get scenario2Description =>
      'Students review simulated app store pages, descriptions, and screenshots to identify red flags in marketing materials and user-facing content.';

  @override
  String get scenario3 => 'Scenario 3: Risk Assessment Report';

  @override
  String get scenario3Subtitle => 'Comprehensive Security Analysis';

  @override
  String get scenario3Description =>
      'Students create detailed security assessment reports with risk prioritization, evidence collection, and remediation recommendations.';

  @override
  String get auditChecklist => 'Audit Checklist';

  @override
  String get auditChecklistDescription =>
      'Comprehensive checklist for mobile app security auditing';

  @override
  String get permissionAnalysisGuide => 'Permission Analysis Guide';

  @override
  String get permissionAnalysisGuideDescription =>
      'Detailed guide for analyzing Android permissions';

  @override
  String get redFlagsSummary => 'Red Flags Summary';

  @override
  String get redFlagsSummaryDescription =>
      'Quick reference for common security red flags';

  @override
  String get downloadManifestExample => 'Download Manifest Example';

  @override
  String get downloadStoreExamples => 'Download Store Examples';

  @override
  String get downloadReportTemplate => 'Download Report Template';

  @override
  String get developerInformationMissing =>
      'Developer information missing or incomplete';

  @override
  String get normalPermissions => 'Normal Permissions';

  @override
  String get smsAccess => 'SMS Access';

  @override
  String get smsAccessDescription =>
      'Allows the app to read and send SMS messages.';

  @override
  String get installPackages => 'Install Packages';

  @override
  String get installPackagesDescription =>
      'Allows the app to install other applications.';

  @override
  String get cameraAccess => 'Camera Access';

  @override
  String get cameraAccessDescription =>
      'Allows the app to take pictures and record videos.';

  @override
  String get contactsAccess => 'Contacts Access';

  @override
  String get contactsAccessDescription =>
      'Allows the app to read your contacts.';

  @override
  String get locationAccess => 'Location Access';

  @override
  String get locationAccessDescription =>
      'Allows the app to access your device\'s location.';

  @override
  String get storageAccess => 'Storage Access';

  @override
  String get storageAccessDescription =>
      'Allows the app to read and write to your device\'s storage.';

  @override
  String get internetAccess => 'Internet Access';

  @override
  String get internetAccessDescription =>
      'Allows the app to open network sockets.';

  @override
  String get networkStateAccess => 'Network State Access';

  @override
  String get networkStateAccessDescription =>
      'Allows the app to view network connection information.';

  @override
  String get wakeLock => 'Wake Lock';

  @override
  String get wakeLockDescription =>
      'Allows the app to prevent the device from sleeping.';
}

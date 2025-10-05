import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_uk.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('uk')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'MockIPTV Auditor'**
  String get appTitle;

  /// No description provided for @educationalTool.
  ///
  /// In en, this message translates to:
  /// **'Educational Tool for Mobile App Auditors'**
  String get educationalTool;

  /// No description provided for @appDescription.
  ///
  /// In en, this message translates to:
  /// **'This educational app demonstrates common techniques used by malicious applications to disguise themselves as legitimate VPN, IPTV, or utility apps. Learn to identify red flags and suspicious patterns in mobile applications.'**
  String get appDescription;

  /// No description provided for @openSampleAppPage.
  ///
  /// In en, this message translates to:
  /// **'Open Sample App Page'**
  String get openSampleAppPage;

  /// No description provided for @startAuditChecklist.
  ///
  /// In en, this message translates to:
  /// **'Start Audit Checklist'**
  String get startAuditChecklist;

  /// No description provided for @redFlagsGuide.
  ///
  /// In en, this message translates to:
  /// **'Red Flags Guide'**
  String get redFlagsGuide;

  /// No description provided for @knowledgeQuiz.
  ///
  /// In en, this message translates to:
  /// **'Knowledge Quiz'**
  String get knowledgeQuiz;

  /// No description provided for @forInstructors.
  ///
  /// In en, this message translates to:
  /// **'For Instructors'**
  String get forInstructors;

  /// No description provided for @educationalPurposeOnly.
  ///
  /// In en, this message translates to:
  /// **'Educational Purpose Only'**
  String get educationalPurposeOnly;

  /// No description provided for @safetyDisclaimer.
  ///
  /// In en, this message translates to:
  /// **'This is a safe, non-functional educational demo. Do not use for harmful purposes.'**
  String get safetyDisclaimer;

  /// No description provided for @superIPTV.
  ///
  /// In en, this message translates to:
  /// **'SuperIPTV'**
  String get superIPTV;

  /// No description provided for @ultraVPN.
  ///
  /// In en, this message translates to:
  /// **'UltraVPN'**
  String get ultraVPN;

  /// No description provided for @unknownDeveloper.
  ///
  /// In en, this message translates to:
  /// **'Unknown Developer'**
  String get unknownDeveloper;

  /// No description provided for @suspiciousDescription.
  ///
  /// In en, this message translates to:
  /// **'Watch thousands of IPTV channels from around the world. Access premium content and live sports. Install this app to view restricted IPTV streams - enable SMS verification for premium access.'**
  String get suspiciousDescription;

  /// No description provided for @vpnDescription.
  ///
  /// In en, this message translates to:
  /// **'Secure your internet connection with our premium VPN service. Bypass geo-restrictions and protect your privacy. Free trial available with SMS verification.'**
  String get vpnDescription;

  /// No description provided for @requestedPermissions.
  ///
  /// In en, this message translates to:
  /// **'Requested Permissions (Simulated)'**
  String get requestedPermissions;

  /// No description provided for @developerInformation.
  ///
  /// In en, this message translates to:
  /// **'Developer Information'**
  String get developerInformation;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// No description provided for @screenshots.
  ///
  /// In en, this message translates to:
  /// **'Screenshots'**
  String get screenshots;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @permissionMismatchAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Permission Mismatch Analysis'**
  String get permissionMismatchAnalysis;

  /// No description provided for @claimedFunctionality.
  ///
  /// In en, this message translates to:
  /// **'Claimed Functionality'**
  String get claimedFunctionality;

  /// No description provided for @requestedPermissionsColumn.
  ///
  /// In en, this message translates to:
  /// **'Requested Permissions'**
  String get requestedPermissionsColumn;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @legitimate.
  ///
  /// In en, this message translates to:
  /// **'Legitimate'**
  String get legitimate;

  /// No description provided for @suspicious.
  ///
  /// In en, this message translates to:
  /// **'Suspicious'**
  String get suspicious;

  /// No description provided for @critical.
  ///
  /// In en, this message translates to:
  /// **'Critical'**
  String get critical;

  /// No description provided for @redFlagsDetected.
  ///
  /// In en, this message translates to:
  /// **'Red Flags Detected'**
  String get redFlagsDetected;

  /// No description provided for @auditRecommendations.
  ///
  /// In en, this message translates to:
  /// **'Audit Recommendations'**
  String get auditRecommendations;

  /// No description provided for @quizTitle.
  ///
  /// In en, this message translates to:
  /// **'Quiz - Question {questionNumber}/8'**
  String quizTitle(Object questionNumber);

  /// No description provided for @question.
  ///
  /// In en, this message translates to:
  /// **'Question {questionNumber}'**
  String question(Object questionNumber);

  /// No description provided for @correct.
  ///
  /// In en, this message translates to:
  /// **'Correct!'**
  String get correct;

  /// No description provided for @incorrect.
  ///
  /// In en, this message translates to:
  /// **'Incorrect'**
  String get incorrect;

  /// No description provided for @explanation.
  ///
  /// In en, this message translates to:
  /// **'Explanation:'**
  String get explanation;

  /// No description provided for @nextQuestion.
  ///
  /// In en, this message translates to:
  /// **'Next Question'**
  String get nextQuestion;

  /// No description provided for @viewResults.
  ///
  /// In en, this message translates to:
  /// **'View Results'**
  String get viewResults;

  /// No description provided for @quizResults.
  ///
  /// In en, this message translates to:
  /// **'Quiz Results'**
  String get quizResults;

  /// No description provided for @yourScore.
  ///
  /// In en, this message translates to:
  /// **'Your Score: {score} out of {total}'**
  String yourScore(Object score, Object total);

  /// No description provided for @retakeQuiz.
  ///
  /// In en, this message translates to:
  /// **'Retake Quiz'**
  String get retakeQuiz;

  /// No description provided for @reviewRedFlagsGuide.
  ///
  /// In en, this message translates to:
  /// **'Review Red Flags Guide'**
  String get reviewRedFlagsGuide;

  /// No description provided for @backToHome.
  ///
  /// In en, this message translates to:
  /// **'Back to Home'**
  String get backToHome;

  /// No description provided for @resetQuiz.
  ///
  /// In en, this message translates to:
  /// **'Reset Quiz'**
  String get resetQuiz;

  /// No description provided for @resetQuizConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to reset the quiz? This will clear your current progress.'**
  String get resetQuizConfirmation;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @contentCopiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Content copied to clipboard'**
  String get contentCopiedToClipboard;

  /// No description provided for @analyzing.
  ///
  /// In en, this message translates to:
  /// **'Analyzing'**
  String get analyzing;

  /// No description provided for @developer.
  ///
  /// In en, this message translates to:
  /// **'Developer'**
  String get developer;

  /// No description provided for @permissionAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Permission Analysis'**
  String get permissionAnalysis;

  /// No description provided for @suspiciousPermissionsDetected.
  ///
  /// In en, this message translates to:
  /// **'Suspicious Permissions Detected'**
  String get suspiciousPermissionsDetected;

  /// No description provided for @viewRedFlagsGuide.
  ///
  /// In en, this message translates to:
  /// **'View Red Flags Guide'**
  String get viewRedFlagsGuide;

  /// No description provided for @question1.
  ///
  /// In en, this message translates to:
  /// **'An IPTV app requests permission to READ_SMS. What should you do?'**
  String get question1;

  /// No description provided for @question1Option1.
  ///
  /// In en, this message translates to:
  /// **'Allow it - SMS access is needed for user verification'**
  String get question1Option1;

  /// No description provided for @question1Option2.
  ///
  /// In en, this message translates to:
  /// **'Flag it for review - SMS access is suspicious for IPTV apps'**
  String get question1Option2;

  /// No description provided for @question1Option3.
  ///
  /// In en, this message translates to:
  /// **'Install it anyway - the permission might be for a legitimate feature'**
  String get question1Option3;

  /// No description provided for @question1Option4.
  ///
  /// In en, this message translates to:
  /// **'Check if the app has good reviews first'**
  String get question1Option4;

  /// No description provided for @question1Explanation.
  ///
  /// In en, this message translates to:
  /// **'SMS access is rarely required for IPTV functionality and is a major red flag. This permission could be used to intercept 2FA codes or steal sensitive information. Always flag apps with permission mismatches for manual review.'**
  String get question1Explanation;

  /// No description provided for @question1Reference.
  ///
  /// In en, this message translates to:
  /// **'Red Flags Guide - Permission Mismatch Analysis'**
  String get question1Reference;

  /// No description provided for @question2.
  ///
  /// In en, this message translates to:
  /// **'What is the primary risk of apps requesting ACCESSIBILITY_SERVICE permission?'**
  String get question2;

  /// No description provided for @question2Option1.
  ///
  /// In en, this message translates to:
  /// **'They can access the internet'**
  String get question2Option1;

  /// No description provided for @question2Option2.
  ///
  /// In en, this message translates to:
  /// **'They can control other apps and steal sensitive data'**
  String get question2Option2;

  /// No description provided for @question2Option3.
  ///
  /// In en, this message translates to:
  /// **'They can read device storage'**
  String get question2Option3;

  /// No description provided for @question2Option4.
  ///
  /// In en, this message translates to:
  /// **'They can make phone calls'**
  String get question2Option4;

  /// No description provided for @question2Explanation.
  ///
  /// In en, this message translates to:
  /// **'Accessibility services can control other applications, simulate user interactions, and steal sensitive data from any app on the device. This is one of the most dangerous permissions and should never be granted to non-essential apps.'**
  String get question2Explanation;

  /// No description provided for @question2Reference.
  ///
  /// In en, this message translates to:
  /// **'Red Flags Guide - Accessibility Service Abuse'**
  String get question2Reference;

  /// No description provided for @question3.
  ///
  /// In en, this message translates to:
  /// **'A VPN app requests permission to READ_CONTACTS. This is:'**
  String get question3;

  /// No description provided for @question3Option1.
  ///
  /// In en, this message translates to:
  /// **'Normal - VPN apps need to access contacts for security'**
  String get question3Option1;

  /// No description provided for @question3Option2.
  ///
  /// In en, this message translates to:
  /// **'Suspicious - VPN apps should not need contact access'**
  String get question3Option2;

  /// No description provided for @question3Option3.
  ///
  /// In en, this message translates to:
  /// **'Required - for user authentication'**
  String get question3Option3;

  /// No description provided for @question3Option4.
  ///
  /// In en, this message translates to:
  /// **'Optional - depends on the VPN provider'**
  String get question3Option4;

  /// No description provided for @question3Explanation.
  ///
  /// In en, this message translates to:
  /// **'VPN apps do not need access to contacts. This is a clear red flag indicating potential data harvesting or social engineering attacks. Legitimate VPN services do not require contact access.'**
  String get question3Explanation;

  /// No description provided for @question3Reference.
  ///
  /// In en, this message translates to:
  /// **'Red Flags Guide - VPN/IPTV Disguise'**
  String get question3Reference;

  /// No description provided for @question4.
  ///
  /// In en, this message translates to:
  /// **'What does dynamic code loading typically indicate in mobile apps?'**
  String get question4;

  /// No description provided for @question4Option1.
  ///
  /// In en, this message translates to:
  /// **'Efficient app performance'**
  String get question4Option1;

  /// No description provided for @question4Option2.
  ///
  /// In en, this message translates to:
  /// **'Attempt to evade static analysis'**
  String get question4Option2;

  /// No description provided for @question4Option3.
  ///
  /// In en, this message translates to:
  /// **'Better user experience'**
  String get question4Option3;

  /// No description provided for @question4Option4.
  ///
  /// In en, this message translates to:
  /// **'Reduced app size'**
  String get question4Option4;

  /// No description provided for @question4Explanation.
  ///
  /// In en, this message translates to:
  /// **'Dynamic code loading is often used by malicious apps to download and execute additional payloads after passing initial security checks. This technique helps malware evade static analysis tools.'**
  String get question4Explanation;

  /// No description provided for @question4Reference.
  ///
  /// In en, this message translates to:
  /// **'Red Flags Guide - Dynamic Code Loading'**
  String get question4Reference;

  /// No description provided for @question5.
  ///
  /// In en, this message translates to:
  /// **'An app with very few reviews (less than 10) and a recently created developer account is:'**
  String get question5;

  /// No description provided for @question5Option1.
  ///
  /// In en, this message translates to:
  /// **'A new legitimate app'**
  String get question5Option1;

  /// No description provided for @question5Option2.
  ///
  /// In en, this message translates to:
  /// **'Potentially suspicious and should be investigated'**
  String get question5Option2;

  /// No description provided for @question5Option3.
  ///
  /// In en, this message translates to:
  /// **'Normal for small developers'**
  String get question5Option3;

  /// No description provided for @question5Option4.
  ///
  /// In en, this message translates to:
  /// **'A sign of high quality'**
  String get question5Option4;

  /// No description provided for @question5Explanation.
  ///
  /// In en, this message translates to:
  /// **'Apps with minimal reviews and recently created developer accounts are common indicators of app store evasion techniques. Malicious apps often use fake or compromised developer accounts to bypass security checks.'**
  String get question5Explanation;

  /// No description provided for @question5Reference.
  ///
  /// In en, this message translates to:
  /// **'Red Flags Guide - App Store Evasion'**
  String get question5Reference;

  /// No description provided for @question6.
  ///
  /// In en, this message translates to:
  /// **'What is the main risk of WebView phishing in mobile apps?'**
  String get question6;

  /// No description provided for @question6Option1.
  ///
  /// In en, this message translates to:
  /// **'Slower app performance'**
  String get question6Option1;

  /// No description provided for @question6Option2.
  ///
  /// In en, this message translates to:
  /// **'Display of fake login pages to steal credentials'**
  String get question6Option2;

  /// No description provided for @question6Option3.
  ///
  /// In en, this message translates to:
  /// **'Increased data usage'**
  String get question6Option3;

  /// No description provided for @question6Option4.
  ///
  /// In en, this message translates to:
  /// **'Poor user interface'**
  String get question6Option4;

  /// No description provided for @question6Explanation.
  ///
  /// In en, this message translates to:
  /// **'WebView phishing uses WebView components to display convincing fake login pages that steal user credentials. The WebView can be styled to look exactly like legitimate banking or social media apps.'**
  String get question6Explanation;

  /// No description provided for @question6Reference.
  ///
  /// In en, this message translates to:
  /// **'Red Flags Guide - WebView Phishing'**
  String get question6Reference;

  /// No description provided for @question7.
  ///
  /// In en, this message translates to:
  /// **'An app requests REQUEST_INSTALL_PACKAGES permission. For most apps, this is:'**
  String get question7;

  /// No description provided for @question7Option1.
  ///
  /// In en, this message translates to:
  /// **'Required for normal operation'**
  String get question7Option1;

  /// No description provided for @question7Option2.
  ///
  /// In en, this message translates to:
  /// **'A critical red flag indicating potential dropper malware'**
  String get question7Option2;

  /// No description provided for @question7Option3.
  ///
  /// In en, this message translates to:
  /// **'Needed for app updates'**
  String get question7Option3;

  /// No description provided for @question7Option4.
  ///
  /// In en, this message translates to:
  /// **'Standard for all Android apps'**
  String get question7Option4;

  /// No description provided for @question7Explanation.
  ///
  /// In en, this message translates to:
  /// **'REQUEST_INSTALL_PACKAGES permission allows apps to install other packages. This is rarely needed and is a major red flag for potential dropper malware that installs additional malicious apps.'**
  String get question7Explanation;

  /// No description provided for @question7Reference.
  ///
  /// In en, this message translates to:
  /// **'Red Flags Guide - Installer Flow Abuse'**
  String get question7Reference;

  /// No description provided for @question8.
  ///
  /// In en, this message translates to:
  /// **'What should you do if an app\'s functionality doesn\'t match its requested permissions?'**
  String get question8;

  /// No description provided for @question8Option1.
  ///
  /// In en, this message translates to:
  /// **'Install it anyway - permissions might be for future features'**
  String get question8Option1;

  /// No description provided for @question8Option2.
  ///
  /// In en, this message translates to:
  /// **'Flag it for manual review and investigate further'**
  String get question8Option2;

  /// No description provided for @question8Option3.
  ///
  /// In en, this message translates to:
  /// **'Check user reviews to see if others had issues'**
  String get question8Option3;

  /// No description provided for @question8Option4.
  ///
  /// In en, this message translates to:
  /// **'Contact the developer for clarification'**
  String get question8Option4;

  /// No description provided for @question8Explanation.
  ///
  /// In en, this message translates to:
  /// **'Permission mismatches are a major red flag and should always trigger manual review. Apps should only request permissions that are directly related to their stated functionality. This is a common technique used by malicious apps.'**
  String get question8Explanation;

  /// No description provided for @question8Reference.
  ///
  /// In en, this message translates to:
  /// **'Red Flags Guide - Permission Mismatch Analysis'**
  String get question8Reference;

  /// No description provided for @realExample.
  ///
  /// In en, this message translates to:
  /// **'Real Example'**
  String get realExample;

  /// No description provided for @source.
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get source;

  /// No description provided for @auditIndicators.
  ///
  /// In en, this message translates to:
  /// **'Audit Indicators'**
  String get auditIndicators;

  /// No description provided for @protectionRecommendations.
  ///
  /// In en, this message translates to:
  /// **'Protection Recommendations'**
  String get protectionRecommendations;

  /// No description provided for @instructorResources.
  ///
  /// In en, this message translates to:
  /// **'Instructor Resources'**
  String get instructorResources;

  /// No description provided for @instructorDescription.
  ///
  /// In en, this message translates to:
  /// **'This section provides educational materials, exercise scenarios, and templates for teaching mobile app security auditing.'**
  String get instructorDescription;

  /// No description provided for @exerciseScenarios.
  ///
  /// In en, this message translates to:
  /// **'Exercise Scenarios'**
  String get exerciseScenarios;

  /// No description provided for @quickReferenceMaterials.
  ///
  /// In en, this message translates to:
  /// **'Quick Reference Materials'**
  String get quickReferenceMaterials;

  /// No description provided for @teachingTips.
  ///
  /// In en, this message translates to:
  /// **'Teaching Tips'**
  String get teachingTips;

  /// No description provided for @teachingTipsDescription.
  ///
  /// In en, this message translates to:
  /// **'Best practices for teaching mobile app security auditing:'**
  String get teachingTipsDescription;

  /// No description provided for @teachingTip1.
  ///
  /// In en, this message translates to:
  /// **'Start with basic permission analysis before moving to advanced techniques'**
  String get teachingTip1;

  /// No description provided for @teachingTip2.
  ///
  /// In en, this message translates to:
  /// **'Use real-world examples and case studies to illustrate concepts'**
  String get teachingTip2;

  /// No description provided for @teachingTip3.
  ///
  /// In en, this message translates to:
  /// **'Encourage students to think like attackers to understand motivations'**
  String get teachingTip3;

  /// No description provided for @teachingTip4.
  ///
  /// In en, this message translates to:
  /// **'Practice with both legitimate and malicious app examples'**
  String get teachingTip4;

  /// No description provided for @teachingTip5.
  ///
  /// In en, this message translates to:
  /// **'Emphasize the importance of context in security analysis'**
  String get teachingTip5;

  /// No description provided for @teachingTip6.
  ///
  /// In en, this message translates to:
  /// **'Use the quiz feature to reinforce learning objectives'**
  String get teachingTip6;

  /// No description provided for @teachingTip7.
  ///
  /// In en, this message translates to:
  /// **'Discuss ethical considerations and responsible disclosure'**
  String get teachingTip7;

  /// No description provided for @scenario1.
  ///
  /// In en, this message translates to:
  /// **'Scenario 1: Static APK Review'**
  String get scenario1;

  /// No description provided for @scenario1Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Manifest and Assets Analysis'**
  String get scenario1Subtitle;

  /// No description provided for @scenario1Description.
  ///
  /// In en, this message translates to:
  /// **'Students analyze a simulated APK manifest and assets to identify suspicious permissions, activities, and resources. Focus on permission mismatches and obfuscation indicators.'**
  String get scenario1Description;

  /// No description provided for @scenario2.
  ///
  /// In en, this message translates to:
  /// **'Scenario 2: App Store Review'**
  String get scenario2;

  /// No description provided for @scenario2Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Store Page and Screenshots Analysis'**
  String get scenario2Subtitle;

  /// No description provided for @scenario2Description.
  ///
  /// In en, this message translates to:
  /// **'Students review simulated app store pages, descriptions, and screenshots to identify red flags in marketing materials and user-facing content.'**
  String get scenario2Description;

  /// No description provided for @scenario3.
  ///
  /// In en, this message translates to:
  /// **'Scenario 3: Risk Assessment Report'**
  String get scenario3;

  /// No description provided for @scenario3Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Comprehensive Security Analysis'**
  String get scenario3Subtitle;

  /// No description provided for @scenario3Description.
  ///
  /// In en, this message translates to:
  /// **'Students create detailed security assessment reports with risk prioritization, evidence collection, and remediation recommendations.'**
  String get scenario3Description;

  /// No description provided for @auditChecklist.
  ///
  /// In en, this message translates to:
  /// **'Audit Checklist'**
  String get auditChecklist;

  /// No description provided for @auditChecklistDescription.
  ///
  /// In en, this message translates to:
  /// **'Comprehensive checklist for mobile app security auditing'**
  String get auditChecklistDescription;

  /// No description provided for @permissionAnalysisGuide.
  ///
  /// In en, this message translates to:
  /// **'Permission Analysis Guide'**
  String get permissionAnalysisGuide;

  /// No description provided for @permissionAnalysisGuideDescription.
  ///
  /// In en, this message translates to:
  /// **'Detailed guide for analyzing Android permissions'**
  String get permissionAnalysisGuideDescription;

  /// No description provided for @redFlagsSummary.
  ///
  /// In en, this message translates to:
  /// **'Red Flags Summary'**
  String get redFlagsSummary;

  /// No description provided for @redFlagsSummaryDescription.
  ///
  /// In en, this message translates to:
  /// **'Quick reference for common security red flags'**
  String get redFlagsSummaryDescription;

  /// No description provided for @downloadManifestExample.
  ///
  /// In en, this message translates to:
  /// **'Download Manifest Example'**
  String get downloadManifestExample;

  /// No description provided for @downloadStoreExamples.
  ///
  /// In en, this message translates to:
  /// **'Download Store Examples'**
  String get downloadStoreExamples;

  /// No description provided for @downloadReportTemplate.
  ///
  /// In en, this message translates to:
  /// **'Download Report Template'**
  String get downloadReportTemplate;

  /// No description provided for @developerInformationMissing.
  ///
  /// In en, this message translates to:
  /// **'Developer information missing or incomplete'**
  String get developerInformationMissing;

  /// No description provided for @normalPermissions.
  ///
  /// In en, this message translates to:
  /// **'Normal Permissions'**
  String get normalPermissions;

  /// No description provided for @smsAccess.
  ///
  /// In en, this message translates to:
  /// **'SMS Access'**
  String get smsAccess;

  /// No description provided for @smsAccessDescription.
  ///
  /// In en, this message translates to:
  /// **'Allows the app to read and send SMS messages.'**
  String get smsAccessDescription;

  /// No description provided for @installPackages.
  ///
  /// In en, this message translates to:
  /// **'Install Packages'**
  String get installPackages;

  /// No description provided for @installPackagesDescription.
  ///
  /// In en, this message translates to:
  /// **'Allows the app to install other applications.'**
  String get installPackagesDescription;

  /// No description provided for @cameraAccess.
  ///
  /// In en, this message translates to:
  /// **'Camera Access'**
  String get cameraAccess;

  /// No description provided for @cameraAccessDescription.
  ///
  /// In en, this message translates to:
  /// **'Allows the app to take pictures and record videos.'**
  String get cameraAccessDescription;

  /// No description provided for @contactsAccess.
  ///
  /// In en, this message translates to:
  /// **'Contacts Access'**
  String get contactsAccess;

  /// No description provided for @contactsAccessDescription.
  ///
  /// In en, this message translates to:
  /// **'Allows the app to read your contacts.'**
  String get contactsAccessDescription;

  /// No description provided for @locationAccess.
  ///
  /// In en, this message translates to:
  /// **'Location Access'**
  String get locationAccess;

  /// No description provided for @locationAccessDescription.
  ///
  /// In en, this message translates to:
  /// **'Allows the app to access your device\'s location.'**
  String get locationAccessDescription;

  /// No description provided for @storageAccess.
  ///
  /// In en, this message translates to:
  /// **'Storage Access'**
  String get storageAccess;

  /// No description provided for @storageAccessDescription.
  ///
  /// In en, this message translates to:
  /// **'Allows the app to read and write to your device\'s storage.'**
  String get storageAccessDescription;

  /// No description provided for @internetAccess.
  ///
  /// In en, this message translates to:
  /// **'Internet Access'**
  String get internetAccess;

  /// No description provided for @internetAccessDescription.
  ///
  /// In en, this message translates to:
  /// **'Allows the app to open network sockets.'**
  String get internetAccessDescription;

  /// No description provided for @networkStateAccess.
  ///
  /// In en, this message translates to:
  /// **'Network State Access'**
  String get networkStateAccess;

  /// No description provided for @networkStateAccessDescription.
  ///
  /// In en, this message translates to:
  /// **'Allows the app to view network connection information.'**
  String get networkStateAccessDescription;

  /// No description provided for @wakeLock.
  ///
  /// In en, this message translates to:
  /// **'Wake Lock'**
  String get wakeLock;

  /// No description provided for @wakeLockDescription.
  ///
  /// In en, this message translates to:
  /// **'Allows the app to prevent the device from sleeping.'**
  String get wakeLockDescription;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'uk'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'uk':
      return AppLocalizationsUk();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}

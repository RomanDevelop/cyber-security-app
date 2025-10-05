# MockIPTV Auditor

## ⚠️ IMPORTANT DISCLAIMER

**This is a safe, non-functional educational demo. Do not use for harmful purposes.**

This application is designed exclusively for educational purposes to train mobile app security auditors in recognizing common techniques used by malicious applications to disguise themselves as legitimate VPN, IPTV, or utility apps. The app contains no malicious code and does not perform any harmful actions.

## 🎯 Project Purpose

MockIPTV Auditor is an educational Flutter application designed to help mobile app security auditors learn to identify red flags and suspicious patterns in mobile applications. The app demonstrates common techniques used by malicious apps to evade detection and trick users into installing them.

## 🏗️ Project Structure

```
lib/
├── main.dart                          # Application entry point
├── providers/
│   └── app_state_provider.dart       # State management
├── models/
│   ├── app_data.dart                 # App data models
│   ├── red_flag_technique.dart       # Red flag techniques
│   └── quiz_question.dart            # Quiz questions
└── screens/
    ├── home_screen.dart              # Main home screen
    ├── app_preview_screen.dart       # App store simulation
    ├── permission_mismatch_viewer.dart # Permission analysis
    ├── red_flags_guide_screen.dart   # Red flags guide
    ├── quiz_screen.dart              # Knowledge quiz
    └── for_instructors_screen.dart   # Instructor resources
```

## 🚀 Features

### 1. Home Screen

- Project overview and educational purpose
- Navigation to all learning modules
- Safety disclaimer and warnings

### 2. App Preview Screen

- Simulated app store pages for "SuperIPTV" and "UltraVPN"
- Realistic app descriptions with embedded red flags
- Permission analysis with explanations
- Developer information and review statistics

### 3. Permission Mismatch Viewer

- Side-by-side comparison of claimed functionality vs. requested permissions
- Visual highlighting of suspicious permission combinations
- Risk assessment and recommendations
- Educational explanations for each red flag

### 4. Red Flags Guide

- Comprehensive guide to 10 common malicious techniques:
  - Dynamic Code Loading
  - Accessibility Service Abuse
  - WebView Phishing
  - Code Obfuscation
  - App Store Evasion
  - VPN/IPTV Disguise
  - Fake OAuth Implementation
  - Installer Flow Abuse
  - Ad Fraud
  - Data Exfiltration
- Real-world examples and sources
- Audit indicators and protection recommendations

### 5. Knowledge Quiz

- 8 multiple-choice questions covering key concepts
- Immediate feedback with detailed explanations
- References to relevant sections in the Red Flags Guide
- Score tracking and performance analysis

### 6. For Instructors

- Exercise scenarios for classroom use
- Downloadable templates and checklists
- Teaching tips and best practices
- Sample reports and analysis materials

## 🛡️ Security Features

This educational app is designed with security in mind:

- **No Malicious Code**: Contains no actual malicious functionality
- **Safe Dependencies**: Uses only standard Flutter packages
- **Educational Focus**: All content is for learning purposes only
- **No Network Access**: Does not connect to external servers
- **No Data Collection**: Does not collect or transmit user data
- **No Permission Requests**: Does not request any device permissions

## 📋 Dependencies

The project uses only safe, widely-used Flutter packages:

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2
  provider: ^6.0.5
  flutter_localizations:
    sdk: flutter
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK
- Android Studio or VS Code
- Android emulator or physical device

### Installation

1. Clone the repository:

```bash
git clone <repository-url>
cd mock_iptv_auditor
```

2. Install dependencies:

```bash
flutter pub get
```

3. Run the application:

```bash
flutter run
```

### Building for Production

```bash
# Android APK
flutter build apk

# Android App Bundle
flutter build appbundle

# iOS (requires macOS)
flutter build ios
```

## 📚 Educational Use Cases

### For Students

- Learn to identify permission mismatches
- Understand common malicious techniques
- Practice security analysis skills
- Test knowledge with interactive quiz

### For Instructors

- Demonstrate security concepts with realistic examples
- Use exercise scenarios for hands-on learning
- Access teaching materials and templates
- Track student progress through quiz results

### For Security Professionals

- Reference guide for mobile app auditing
- Quick checklist for permission analysis
- Examples of real-world attack techniques
- Best practices for security assessment

## 🔍 Learning Objectives

After using this application, users should be able to:

1. **Identify Permission Mismatches**: Recognize when app permissions don't match stated functionality
2. **Spot Red Flags**: Identify common indicators of malicious behavior
3. **Analyze App Store Pages**: Detect suspicious patterns in app descriptions and metadata
4. **Understand Attack Techniques**: Learn how malicious apps evade detection
5. **Apply Security Best Practices**: Implement proper security assessment procedures

## 📖 Additional Resources

### Included Materials

- **Audit Checklist**: CSV format with indicators, severity levels, and actions
- **Permission Guide**: Detailed analysis of Android permissions
- **Report Template**: Markdown template for security assessments
- **Exercise Scenarios**: Three hands-on learning scenarios
- **Red Flags Summary**: Quick reference for common indicators

### External References

- [OWASP Mobile Security Testing Guide](https://owasp.org/www-project-mobile-security-testing-guide/)
- [Android Security Best Practices](https://developer.android.com/topic/security/best-practices)
- [Google Play Security Policies](https://support.google.com/googleplay/android-developer/answer/9859348)

## ⚖️ Legal and Ethical Considerations

This application is designed for educational purposes only and should be used responsibly:

- **No Malicious Use**: Do not use the knowledge gained for harmful purposes
- **Educational Context**: Use only in appropriate educational settings
- **Respect Privacy**: Do not analyze apps without proper authorization
- **Follow Laws**: Comply with all applicable laws and regulations
- **Ethical Hacking**: Use skills for defensive security purposes only

## 🤝 Contributing

Contributions are welcome! Please ensure that:

1. All code additions are educational and non-malicious
2. New features align with the educational purpose
3. Documentation is updated accordingly
4. Code follows Flutter best practices
5. Security considerations are maintained

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

For questions or support:

1. Check the documentation in the app
2. Review the Red Flags Guide
3. Use the For Instructors section
4. Contact the development team

## 🔄 Version History

- **v1.0.0**: Initial release with core educational features
  - App store simulation
  - Permission analysis
  - Red flags guide
  - Knowledge quiz
  - Instructor resources

---

**Remember: This is an educational tool designed to improve mobile app security. Use responsibly and ethically.**
# cyber-security-app

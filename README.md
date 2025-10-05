# MockIPTV Auditor

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)
[![Riverpod](https://img.shields.io/badge/Riverpod-4FC08D?style=for-the-badge&logo=riverpod&logoColor=white)](https://riverpod.dev/)
[![Localization](https://img.shields.io/badge/Localization-🇺🇦🇬🇧-green?style=for-the-badge)](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)

## ⚠️ IMPORTANT DISCLAIMER

**This is a safe, non-functional educational demo. Do not use for harmful purposes.**

This application is designed exclusively for educational purposes to train mobile app security auditors in recognizing common techniques used by malicious applications to disguise themselves as legitimate VPN, IPTV, or utility apps. The app contains no malicious code and does not perform any harmful actions.

## 🎯 Project Purpose

MockIPTV Auditor is an educational Flutter application designed to help mobile app security auditors learn to identify red flags and suspicious patterns in mobile applications. The app demonstrates common techniques used by malicious apps to evade detection and trick users into installing them.

## ✨ What's New in v2.0.0

- 🌍 **Full Localization**: Complete Ukrainian and English language support
- 🎨 **Dark Cyber Theme**: Modern UI with glowing effects and monospace fonts
- ⚡ **Riverpod State Management**: Modern reactive programming architecture
- 🎯 **Custom Cyber Widgets**: Beautiful, themed UI components
- 📱 **Enhanced UX**: Improved user experience and performance
- 🔧 **Performance Optimizations**: Better app responsiveness and memory usage

## 🏗️ Project Structure

```
lib/
├── main.dart                          # Application entry point
├── providers/
│   └── app_state_provider.dart       # Riverpod state management
├── models/
│   ├── app_data.dart                 # App data models
│   ├── red_flag_technique.dart       # Red flag techniques
│   └── quiz_question.dart            # Quiz questions
├── screens/
│   ├── home_screen.dart              # Main home screen
│   ├── app_preview_screen.dart       # App store simulation
│   ├── permission_mismatch_viewer.dart # Permission analysis
│   ├── red_flags_guide_screen.dart   # Red flags guide
│   ├── quiz_screen.dart              # Knowledge quiz
│   └── for_instructors_screen.dart   # Instructor resources
├── themes/
│   └── app_themes.dart               # Dark cyber theme configuration
├── widgets/
│   └── cyber_widgets.dart            # Custom cyber-styled widgets
└── l10n/
    ├── app_en.arb                    # English localization
    ├── app_uk.arb                    # Ukrainian localization
    └── app_localizations.dart        # Generated localization class
```

## 🚀 Features

### 1. Home Screen

- Project overview and educational purpose
- Navigation to all learning modules
- Safety disclaimer and warnings
- **🌍 Multi-language support** (Ukrainian/English)
- **🎨 Dark cyber theme** with glowing effects

### 2. App Preview Screen

- Simulated app store pages for "SuperIPTV" and "UltraVPN"
- Realistic app descriptions with embedded red flags
- **🌍 Localized permission names and descriptions**
- Developer information and review statistics
- **🎨 Cyber-styled UI** with custom widgets

### 3. Permission Mismatch Viewer

- Side-by-side comparison of claimed functionality vs. requested permissions
- Visual highlighting of suspicious permission combinations
- Risk assessment and recommendations
- **🌍 Fully localized interface**
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
- **🌍 Localized section headers and content**
- Audit indicators and protection recommendations

### 5. Knowledge Quiz

- 8 multiple-choice questions covering key concepts
- Immediate feedback with detailed explanations
- References to relevant sections in the Red Flags Guide
- **🌍 Fully localized questions and answers**
- Score tracking and performance analysis

### 6. For Instructors

- Exercise scenarios for classroom use
- Downloadable templates and checklists
- Teaching tips and best practices
- **🌍 Localized teaching materials**
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
  flutter_riverpod: ^2.4.9
  flutter_localizations:
    sdk: flutter
```

### Key Technologies

- **Flutter Riverpod**: Modern state management for reactive programming
- **Flutter Localizations**: Multi-language support (Ukrainian/English)
- **Custom Cyber Theme**: Dark theme with glowing effects and monospace fonts
- **Custom Widgets**: CyberText, CyberButton, CyberCard, CyberIcon, etc.

### Architecture Improvements

- **State Management**: Migrated from Provider to Riverpod for better performance
- **Reactive Programming**: Real-time UI updates with minimal rebuilds
- **Code Organization**: Clean separation of concerns with providers and models
- **Performance**: Optimized widget rebuilds and memory usage
- **Maintainability**: Modular code structure for easy updates

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

3. Generate localization files:

```bash
flutter gen-l10n
```

4. Run the application:

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

## 🌍 Localization

The application supports multiple languages with full localization:

### Supported Languages

- **Ukrainian** (default) - Повна підтримка української мови
- **English** - Complete English language support

### Localized Content

- ✅ All user interface elements
- ✅ App descriptions and metadata
- ✅ Permission names and descriptions
- ✅ Quiz questions and answers
- ✅ Red flags guide content
- ✅ Instructor materials and scenarios
- ✅ Error messages and dialogs

### Language Switching

- Easy language toggle in the app bar
- Dynamic content updates without restart
- Persistent language preference

## 📚 Educational Use Cases

### For Students

- Learn to identify permission mismatches
- Understand common malicious techniques
- Practice security analysis skills
- Test knowledge with interactive quiz
- **🌍 Learn in your preferred language**

### For Instructors

- Demonstrate security concepts with realistic examples
- Use exercise scenarios for hands-on learning
- Access teaching materials and templates
- Track student progress through quiz results
- **🌍 Teach in Ukrainian or English**

### For Security Professionals

- Reference guide for mobile app auditing
- Quick checklist for permission analysis
- Examples of real-world attack techniques
- Best practices for security assessment

## 🎨 UI/UX Features

### Dark Cyber Theme

- **Dark Background**: Easy on the eyes for extended use
- **Glowing Effects**: Cyber-style visual elements with neon accents
- **Monospace Fonts**: Technical, code-like appearance
- **High Contrast**: Clear visibility of all elements

### Custom Widgets

- **CyberText**: Text with optional glowing effects
- **CyberButton**: Styled buttons with hover effects
- **CyberCard**: Cards with cyber borders and shadows
- **CyberIcon**: Icons with glowing effects
- **CyberBadge**: Small informational tags
- **CyberDivider**: Glowing divider lines

### Responsive Design

- **Adaptive Layout**: Works on different screen sizes
- **Touch-Friendly**: Optimized for mobile interaction
- **Smooth Animations**: Fluid transitions between screens
- **Accessibility**: High contrast and readable fonts

## 🔍 Learning Objectives

After using this application, users should be able to:

1. **Identify Permission Mismatches**: Recognize when app permissions don't match stated functionality
2. **Spot Red Flags**: Identify common indicators of malicious behavior
3. **Analyze App Store Pages**: Detect suspicious patterns in app descriptions and metadata
4. **Understand Attack Techniques**: Learn how malicious apps evade detection
5. **Apply Security Best Practices**: Implement proper security assessment procedures
6. **🌍 Work in Multiple Languages**: Use the app in Ukrainian or English

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

### Development Guidelines

#### Adding New Localizations

1. Add new keys to `lib/l10n/app_en.arb` and `lib/l10n/app_uk.arb`
2. Run `flutter gen-l10n` to generate localization files
3. Use `AppLocalizations.of(context)!` to access localized strings

#### Adding New Screens

1. Create screen in `lib/screens/`
2. Add route to `main.dart`
3. Use `ConsumerWidget` for Riverpod integration
4. Apply cyber theme and custom widgets
5. Add localization support

#### Custom Widgets

1. Add new widgets to `lib/widgets/cyber_widgets.dart`
2. Follow naming convention: `Cyber[WidgetName]`
3. Include glowing effects and cyber styling
4. Support both light and dark themes

#### State Management

1. Use Riverpod providers in `lib/providers/`
2. Prefer `StateNotifierProvider` for complex state
3. Use `Provider` for simple values
4. Keep state logic separate from UI

## 🔧 Technical Details

### State Management Architecture

- **Riverpod**: Modern state management with reactive programming
- **Providers**: Centralized state management with type safety
- **StateNotifiers**: Complex state logic with immutable updates
- **Consumer Widgets**: Reactive UI updates with minimal rebuilds

### Localization System

- **ARB Files**: JSON-based localization files
- **Generated Classes**: Type-safe localization access
- **Dynamic Switching**: Runtime language changes
- **Fallback Support**: English fallback for missing translations

### Theme System

- **Custom Colors**: Cyber-themed color palette
- **Glowing Effects**: BoxShadow-based glow effects
- **Monospace Fonts**: Technical appearance
- **Responsive Design**: Adaptive to different screen sizes

### Performance Optimizations

- **Widget Rebuilds**: Minimized with Riverpod
- **Memory Usage**: Efficient state management
- **Build Times**: Optimized compilation
- **Runtime Performance**: Smooth animations and transitions

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 📱 Screenshots

### Home Screen

- Modern cyber-themed interface
- Multi-language support
- Easy navigation to all modules

### App Preview Screen

- Realistic app store simulation
- Localized permission descriptions
- Visual red flag indicators

### Permission Analysis

- Side-by-side comparison
- Risk assessment
- Educational explanations

### Red Flags Guide

- Comprehensive technique library
- Real-world examples
- Protection recommendations

### Knowledge Quiz

- Interactive learning
- Immediate feedback
- Progress tracking

## 🆘 Support

For questions or support:

1. Check the documentation in the app
2. Review the Red Flags Guide
3. Use the For Instructors section
4. Contact the development team

## ❓ Frequently Asked Questions

### Q: Is this app safe to use?

A: Yes, this is a completely safe educational application. It contains no malicious code and does not perform any harmful actions.

### Q: Can I use this app for real security auditing?

A: This app is designed for educational purposes only. For real security auditing, use professional tools and follow proper procedures.

### Q: How do I switch languages?

A: Use the language toggle in the app bar (top right corner) to switch between Ukrainian and English.

### Q: Can I add more languages?

A: Yes, you can add new languages by creating new ARB files and following the localization guidelines in the Contributing section.

### Q: Is the app suitable for beginners?

A: Yes, the app is designed for all skill levels, from beginners to advanced security professionals.

### Q: Can I use this in a classroom setting?

A: Absolutely! The app includes instructor resources and exercise scenarios specifically designed for educational use.

## 🔄 Version History

- **v2.0.0**: Major update with enhanced UI and localization

  - 🌍 **Full Ukrainian/English localization** - All screens and content
  - 🎨 **Dark cyber theme** - Custom styling with glowing effects
  - ⚡ **Riverpod state management** - Modern reactive programming
  - 🎯 **Custom cyber widgets** - CyberText, CyberButton, CyberCard, etc.
  - 📱 **Enhanced UI/UX** - Improved visual design and user experience
  - 🔧 **Performance optimizations** - Better app performance and responsiveness

- **v1.0.0**: Initial release with core educational features
  - App store simulation
  - Permission analysis
  - Red flags guide
  - Knowledge quiz
  - Instructor resources

## 🙏 Acknowledgments

- **Flutter Team**: For the amazing framework and localization support
- **Riverpod Team**: For the excellent state management solution
- **Security Community**: For sharing knowledge about mobile app security
- **Open Source Contributors**: For the tools and libraries that made this possible

## 📊 Project Stats

- **Lines of Code**: 2000+ lines
- **Languages**: 2 (Ukrainian, English)
- **Screens**: 6 main screens
- **Widgets**: 6 custom cyber widgets
- **Localization Keys**: 150+ translated strings
- **Dependencies**: 3 safe, minimal dependencies

---

**Remember: This is an educational tool designed to improve mobile app security. Use responsibly and ethically.**

---

<div align="center">

**Made with ❤️ for the security education community**

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)
[![Riverpod](https://img.shields.io/badge/Riverpod-4FC08D?style=for-the-badge&logo=riverpod&logoColor=white)](https://riverpod.dev/)

</div>

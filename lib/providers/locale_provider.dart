import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (_locale != locale) {
      _locale = locale;
      notifyListeners();
    }
  }

  void toggleLanguage() {
    if (_locale.languageCode == 'en') {
      setLocale(const Locale('uk'));
    } else {
      setLocale(const Locale('en'));
    }
  }

  String get currentLanguageName {
    switch (_locale.languageCode) {
      case 'uk':
        return 'Українська';
      case 'en':
      default:
        return 'English';
    }
  }
}

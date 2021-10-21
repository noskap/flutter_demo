import 'package:flutter/material.dart';

class Language {
  String label;
  Locale locale;

  Language({required this.label, required this.locale});

  static List<Language> getLanguages() {
    return <Language>[
      // ⚠️ Please keep English as the first element in the array!
      Language(label: 'english', locale: Locale('en', '*')),
      Language(label: 'русский', locale: Locale('ru', '*')),
      Language(label: 'español', locale: Locale('es', '*')),
    ];
  }
}
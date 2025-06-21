import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? frText = '',
  }) =>
      [enText, frText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // OnbaordingPage
  {
    '5h98wc7b': {
      'en': 'Welcome to PetInn',
      'fr': 'Bienvenue chez PetInn',
    },
    'za14kvlv': {
      'en': 'Easily find accommodations that truly welcome your pets.',
      'fr':
          'Trouvez facilement des hébergements qui accueillent réellement vos animaux de compagnie.',
    },
    'gzuy16e2': {
      'en': 'Continue',
      'fr': 'Continuer',
    },
    'tw1n1yvs': {
      'en': 'Travel with Peace of Mind',
      'fr': 'Voyagez en toute tranquillité d\'esprit',
    },
    'jv6anxic': {
      'en':
          'Book in just a few taps and enjoy a stress-free holiday with your companion',
      'fr':
          'Réservez en quelques clics et profitez de vacances sans stress avec votre compagnon',
    },
    'bqgciwkr': {
      'en': 'Continue',
      'fr': 'Continuer',
    },
    'qvxfvpj4': {
      'en': 'A Passionate Community',
      'fr': 'Une communauté passionnée',
    },
    '87vv314a': {
      'en': 'Read reviews, share your experiences, and join the PetInn family!',
      'fr':
          'Lisez les avis, partagez vos expériences et rejoignez la famille PetInn !',
    },
    '9h1bduua': {
      'en': 'Continue',
      'fr': 'Continuer',
    },
    '034qzdvc': {
      'en': 'Home',
      'fr': '',
    },
  },
  // Miscellaneous
  {
    '546tiqju': {
      'en': '',
      'fr': '',
    },
    'ikl6huw8': {
      'en': '',
      'fr': '',
    },
    'g5t3895v': {
      'en': '',
      'fr': '',
    },
    'yh7nszms': {
      'en': '',
      'fr': '',
    },
    'z4xy2nwu': {
      'en': '',
      'fr': '',
    },
    'b113rwgi': {
      'en': '',
      'fr': '',
    },
    'wlv20vsi': {
      'en': '',
      'fr': '',
    },
    'nowct0dd': {
      'en': '',
      'fr': '',
    },
    '55ypo592': {
      'en': '',
      'fr': '',
    },
    'u4kbaxp6': {
      'en': '',
      'fr': '',
    },
    'z5cwi4b6': {
      'en': '',
      'fr': '',
    },
    '9hdkbbvd': {
      'en': '',
      'fr': '',
    },
    '0gme7pal': {
      'en': '',
      'fr': '',
    },
    'jlbribbe': {
      'en': '',
      'fr': '',
    },
    'fk0uumfy': {
      'en': '',
      'fr': '',
    },
    'ie6c0ye7': {
      'en': '',
      'fr': '',
    },
    '1m4hx9r4': {
      'en': '',
      'fr': '',
    },
    'erngzs6i': {
      'en': '',
      'fr': '',
    },
    'b8gmtzhg': {
      'en': '',
      'fr': '',
    },
    '0qdeuog7': {
      'en': '',
      'fr': '',
    },
    '59lixpd2': {
      'en': '',
      'fr': '',
    },
    'tvyoeqw8': {
      'en': '',
      'fr': '',
    },
    'drgltm6h': {
      'en': '',
      'fr': '',
    },
    'ryevfyzx': {
      'en': '',
      'fr': '',
    },
    'kfir2f0m': {
      'en': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));

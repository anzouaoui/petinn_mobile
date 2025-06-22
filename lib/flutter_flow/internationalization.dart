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
      'fr': 'Maison',
    },
  },
  // LoginPage
  {
    '2xfgoccq': {
      'en': 'Login to account',
      'fr': 'Connectez-vous au compte',
    },
    'dhy4f5fg': {
      'en': 'You can login with your email or through social accounts',
      'fr':
          'Vous pouvez vous connecter avec votre e-mail ou via vos comptes sociaux',
    },
    'xnvycjle': {
      'en': 'Email',
      'fr': 'E-mail',
    },
    '0lmu3hq9': {
      'en': 'example@domain.com',
      'fr': 'exemple@domaine.com',
    },
    'q0n9oq08': {
      'en': 'Password',
      'fr': 'Mot de passe',
    },
    '6u3x0350': {
      'en': '••••••••',
      'fr': '••••••••',
    },
    'u88miqvt': {
      'en': 'Forgot password?',
      'fr': 'Mot de passe oublié?',
    },
    'taj7yn6y': {
      'en': 'Rem',
      'fr': 'Rem',
    },
    'd8bfdw9g': {
      'en': 'Login',
      'fr': 'Se connecter',
    },
    'qjf8oqrl': {
      'en': 'OR',
      'fr': 'OU',
    },
    'u19g5mjn': {
      'en': 'No account?',
      'fr': 'Pas de compte ?',
    },
    'j1k1lrlh': {
      'en': 'Register now',
      'fr': 'Inscrivez-vous maintenant',
    },
    '6o5smn3m': {
      'en': 'Home',
      'fr': 'Maison',
    },
  },
  // ForgotPasswordPage
  {
    'k9wlxkku': {
      'en': 'Forgot Your Password?',
      'fr': 'Mot de passe oublié?',
    },
    'y8bf34to': {
      'en':
          'Don\'t worry, enter your registered email in our system and we will send you OTP',
      'fr':
          'Ne vous inquiétez pas, entrez votre email enregistré dans notre système et nous vous enverrons un OTP',
    },
    'f23kj53o': {
      'en': 'Registered email',
      'fr': 'E-mail enregistré',
    },
    'zywn2syi': {
      'en': 'Enter here',
      'fr': 'Entrez ici',
    },
    'd2y5t46r': {
      'en': 'Get code',
      'fr': 'Obtenir le code',
    },
    'w4mjdmzo': {
      'en': 'Home',
      'fr': 'Maison',
    },
  },
  // RegisterPage
  {
    'b66gl712': {
      'en': 'Register',
      'fr': 'Registre',
    },
    'q843appi': {
      'en': 'You can register with your email or through social accounts',
      'fr':
          'Vous pouvez vous inscrire avec votre email ou via vos comptes sociaux',
    },
    'vfi3tuvk': {
      'en': 'Email',
      'fr': 'E-mail',
    },
    '53efob97': {
      'en': 'Enter your email',
      'fr': 'Entrez votre email',
    },
    'vox1bwm1': {
      'en': 'Password',
      'fr': 'Mot de passe',
    },
    '4tow3f3z': {
      'en': 'Enter your password',
      'fr': 'Entrez votre mot de passe',
    },
    'g6426tlc': {
      'en': 'Confirm Password',
      'fr': 'Confirmez le mot de passe',
    },
    'spyblsrz': {
      'en': 'Confirm your password',
      'fr': 'Confirmez votre mot de passe',
    },
    'r60tsysl': {
      'en': 'Register',
      'fr': 'Registre',
    },
    '8krcf0mx': {
      'en': 'OR',
      'fr': 'OU',
    },
    'wlsythfo': {
      'en': 'Already have an account?',
      'fr': 'Vous avez déjà un compte ?',
    },
    'w97jgobt': {
      'en': 'Login now',
      'fr': 'Connectez-vous maintenant',
    },
    'qyfsvyvk': {
      'en': 'Home',
      'fr': 'Maison',
    },
  },
  // NotificationsPermissionPage
  {
    'gu80zfec': {
      'en': 'Enable Notifications',
      'fr': 'Activer les notifications',
    },
    'ld72oj12': {
      'en':
          'Please enable notifications to receive about offers, payment and more',
      'fr':
          'Veuillez activer les notifications pour recevoir des informations sur les offres, les paiements et plus encore',
    },
    '3r0qakn3': {
      'en': 'Enable Notifications',
      'fr': 'Activer les notifications',
    },
    '7p1aie0b': {
      'en': 'Maybe Later',
      'fr': 'Peut-être plus tard',
    },
    'h2uuu0tl': {
      'en': 'Home',
      'fr': 'Maison',
    },
  },
  // LocationPermissionPage
  {
    'nv9rrl2m': {
      'en': 'Enable location',
      'fr': 'Activer la localisation',
    },
    'cml463p9': {
      'en': 'Please enable location to search around you',
      'fr': 'Veuillez activer la localisation pour rechercher autour de vous',
    },
    'e0udyuki': {
      'en': 'Enable location',
      'fr': 'Activer la localisation',
    },
    'gkbc09nc': {
      'en': 'Maybe Later',
      'fr': 'Peut-être plus tard',
    },
    'loqhp7ha': {
      'en': 'Home',
      'fr': 'Maison',
    },
  },
  // HomePage
  {
    '68i00hwm': {
      'en': 'PetInn',
      'fr': 'PetInn',
    },
    'tcu44beb': {
      'en': 'Search hotels in',
      'fr': 'Rechercher des hôtels à',
    },
    'vx5s3hnj': {
      'en': 'Most Popular',
      'fr': 'Le plus populaire',
    },
    'liffuzyz': {
      'en': 'See All',
      'fr': 'Tout voir',
    },
    'p8lxz0yq': {
      'en': 'Recommendations',
      'fr': 'Recommandations',
    },
    'kvnkxa4z': {
      'en': 'See All',
      'fr': 'Tout voir',
    },
    'nzuuaobl': {
      'en': 'Home',
      'fr': 'Maison',
    },
  },
  // SearchPage
  {
    'dgzobnjb': {
      'en': 'Rechercher un hébergement',
      'fr': 'Rechercher un hébergement',
    },
    'p5fqxi4t': {
      'en': 'Trouvez l\'endroit parfait pour vous et votre animal',
      'fr': 'Trouvez l\'endroit parfait pour vous et votre animal',
    },
    'o5ku3nqa': {
      'en': 'Destination',
      'fr': 'Destination',
    },
    '7dtf7qn5': {
      'en': 'Où allez-vous ?',
      'fr': 'Où allez-vous ?',
    },
    'z3bwyrhn': {
      'en': 'Arrivée',
      'fr': 'Arrivée',
    },
    '036gxr90': {
      'en': 'jj/mm/aaaa',
      'fr': 'jj/mm/aaaa',
    },
    'eoevr4gr': {
      'en': 'Départ',
      'fr': 'Partir',
    },
    '7dyleizf': {
      'en': 'jj/mm/aaaa',
      'fr': 'jj/mm/aaaa',
    },
    'gn31vpmk': {
      'en': 'Voyageurs',
      'fr': 'Voyageurs',
    },
    '3iy1alrh': {
      'en': '1',
      'fr': '1',
    },
    'xetsn9gu': {
      'en': 'Rechercher',
      'fr': 'Rechercher',
    },
    'bwc5heyn': {
      'en': 'Hébergements disponibles',
      'fr': 'Hébergements disponibles',
    },
    'mxguyfsb': {
      'en': 'Search',
      'fr': 'Maison',
    },
  },
  // AccomodationDetailPage
  {
    '52d9z4p4': {
      'en': 'Burj Al Arab Jumeirah',
      'fr': 'Burj Al Arab Jumeirah',
    },
    'rsorkb2l': {
      'en': '4.8',
      'fr': '4.8',
    },
    'n5az029e': {
      'en': 'Jumeira St, Dubai, UAE',
      'fr': 'Jumeira St, Dubaï, Émirats arabes unis',
    },
    'd50edupj': {
      'en': '50 reviews',
      'fr': '50 avis',
    },
    'oni62yf9': {
      'en': 'Top Amenities',
      'fr': 'Équipements haut de gamme',
    },
    'wo9zgftx': {
      'en': 'See All',
      'fr': 'Tout voir',
    },
    'yumqqtb3': {
      'en': 'Free Wi-Fi',
      'fr': 'Wi-Fi gratuit',
    },
    '438ij8qm': {
      'en': 'Heating',
      'fr': 'Chauffage',
    },
    'aqenlsz9': {
      'en': 'Shower',
      'fr': 'Douche',
    },
    '05ez5q4g': {
      'en': 'Parking',
      'fr': 'Parking',
    },
    'u7hmwqrn': {
      'en': 'Location',
      'fr': 'Emplacement',
    },
    'yxmzdx72': {
      'en': 'See map',
      'fr': 'Voir la carte',
    },
    't3jgkdkw': {
      'en': 'Petit problème... Une erreur s\'est produite',
      'fr': 'Petit problème... Une erreur s\'est produite',
    },
    '0bi6uxaq': {
      'en':
          'Google Maps ne s\'est pas chargé correctement sur cette page. Pour plus d\'informations techniques sur cette erreur, veuillez consulter la console JavaScript.',
      'fr':
          'Google Maps ne s\'est pas chargé correctement sur cette page. Pour plus d\'informations techniques sur cette erreur, veuillez consulter la console JavaScript.',
    },
    't8hwvzym': {
      'en': 'Description',
      'fr': 'Description',
    },
    'b7ojhdnm': {
      'en': 'Read more',
      'fr': 'En savoir plus',
    },
    'pxbv5p1m': {
      'en':
          'The Burj Al Arab Jumeirah in Dubai is one of the world\'s most iconic and luxurious hotels, known for its sail-shaped design and ultra-premium service. Often called the world\'s only 7-star hotel, it offers duplex suites, private butlers, Rolls-Royce transfers, and',
      'fr':
          'Le Burj Al Arab Jumeirah de Dubaï est l\'un des hôtels les plus emblématiques et luxueux au monde, réputé pour son design en forme de voile et son service haut de gamme. Souvent considéré comme le seul hôtel 7 étoiles au monde, il propose des suites duplex, des majordomes privés, des transferts en Rolls-Royce et',
    },
    'hsd32rjq': {
      'en': 'Home',
      'fr': 'Maison',
    },
  },
  // PermissionsNotificationComponent
  {
    'flr32q7o': {
      'en': 'Enable Notifications?',
      'fr': 'Activer les notifications ?',
    },
    'ffso6drw': {
      'en': 'Are sure to enable notifications for this app?',
      'fr':
          'Êtes-vous sûr d\'activer les notifications pour cette application ?',
    },
    'j9vqz101': {
      'en': 'Not now',
      'fr': 'Pas maintenant',
    },
    '3d4x28il': {
      'en': 'Enable',
      'fr': 'Activer',
    },
  },
  // PermissionsLocationComponent
  {
    'klwdwyzu': {
      'en': 'Enable location?',
      'fr': 'Activer la localisation ?',
    },
    'pzhm1oct': {
      'en': 'Are sure to enable location  for this app?',
      'fr': 'Êtes-vous sûr d\'activer la localisation pour cette application ?',
    },
    'skl7wzwi': {
      'en': 'Refused',
      'fr': 'Refusé',
    },
    '4elarcc8': {
      'en': 'Enable',
      'fr': 'Activer',
    },
  },
  // AccomodationFullImageComponent
  {
    'lj0516vl': {
      'en': 'Burj Al Arab Jumeirah',
      'fr': 'Burj Al Arab Jumeirah',
    },
    '888ykax1': {
      'en': 'Jumeira St, Dubai, UAE',
      'fr': 'Jumeira St, Dubaï, Émirats arabes unis',
    },
    '6aib0vyr': {
      'en': '\$400',
      'fr': '400 \$',
    },
    'os64ls5q': {
      'en': '0',
      'fr': '0',
    },
  },
  // AccomodationCardComponent
  {
    'wa7w6sg4': {
      'en': 'Burj Al Arab Jumeirah',
      'fr': 'Burj Al Arab Jumeirah',
    },
    'lthu05m2': {
      'en': 'Jumeira St, Dubai, UAE',
      'fr': 'Jumeira St, Dubaï, Émirats arabes unis',
    },
    'xzrjj7yi': {
      'en': 'Free Wi-Fi',
      'fr': 'Wi-Fi gratuit',
    },
    '7dhscpig': {
      'en': 'Heating',
      'fr': 'Chauffage',
    },
    'qj8wvjf0': {
      'en': 'Shower',
      'fr': 'Douche',
    },
    'ryb6isr9': {
      'en': '\$400',
      'fr': '400 \$',
    },
    'k1odbpkd': {
      'en': 'Starting from',
      'fr': 'À partir de',
    },
  },
  // AccomodationHorizontalComponent
  {
    'ulf5cscw': {
      'en': 'Appartement cosy avec jardin',
      'fr': 'Appartement cosy avec jardin',
    },
    '3celwvem': {
      'en': 'Paris 11ème',
      'fr': 'Paris 11ème',
    },
    'fxdlzynm': {
      'en': '4.9',
      'fr': '4.9',
    },
    'doqaohre': {
      'en': '85€',
      'fr': '85€',
    },
    '13uqwpbs': {
      'en': '/nuit',
      'fr': '/nuit',
    },
  },
  // BookingPriceComponent
  {
    '5xhe08mn': {
      'en': '\$400',
      'fr': '400 \$',
    },
    '5bxi1rtx': {
      'en': 'Starting from',
      'fr': 'À partir de',
    },
    'kzvpaczg': {
      'en': 'Book now',
      'fr': 'Réservez maintenant',
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

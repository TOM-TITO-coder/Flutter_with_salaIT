import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'Setting': 'Setting',
          'Language': 'Language',
          'English': 'English',
          'Khmer': 'Khmer',
          'Theme': 'Theme',
        },
        'kh_KM': {
          'Setting': 'ការកំណត់',
          'Theme': 'ធីម',
          'Language': 'ភាសា',
          'Khmer': 'ខ្មែរ',
          'English': 'អង់គ្ឡេស',
        }
      };
}

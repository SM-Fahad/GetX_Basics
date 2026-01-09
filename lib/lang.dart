

import 'package:get/get_navigation/src/root/internacionalization.dart' show Translations;

class lang extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'message': 'This is GetX internationalization example',
        },
        'es_ES': {
          'hello': 'Hola Mundo',
          'message': 'Este es un ejemplo de internacionalización de GetX',
        },
        'bn_BD': {
          'hello': 'হ্যালো ওয়ার্ল্ড',
          'message': 'এটি GetX আন্তর্জাতিককরণের উদাহরণ',
        },
      };
} 
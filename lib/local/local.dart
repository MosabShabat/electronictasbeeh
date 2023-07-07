import 'package:get/get.dart';

class MyLocal implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "1": "حفظ",
          "2": "اعادة ضبط",
          "3": "اللغة",
          "4": "الوضع",
          "5": "العربية",
          "6": "الانجليزية",
          "7": "اختر اللغة",
          "8": "اختر الوضع",
          "9": " الوضع الليلي",
          "10": " وضع النهار",
          "11": "تم الحفظ بنجاح",
          "12": "التسبيح الالكتروني"
        },
        "en": {
          "1": "Save",
          "2": "Reset",
          "3": " Language",
          "4": "Theme",
          "5": "Arabic",
          "6": "English",
          "7": "Choose Language",
          "8": "Choose Theme",
          "9": "Dark Mode",
          "10": "Light Mode",
          "11": "Saved Successfully",
          "12": "Electronic Tasbeeh"
        }
      };
}
//
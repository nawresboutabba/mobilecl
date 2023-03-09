import 'package:nawres_boutabba_s_application1/presentation/warkthrough_two_screen/warkthrough_two_screen.dart';
import 'package:nawres_boutabba_s_application1/presentation/warkthrough_two_screen/binding/warkthrough_two_binding.dart';
import 'package:nawres_boutabba_s_application1/presentation/conversation_screen/conversation_screen.dart';
import 'package:nawres_boutabba_s_application1/presentation/conversation_screen/binding/conversation_binding.dart';
import 'package:nawres_boutabba_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:nawres_boutabba_s_application1/presentation/profile_screen/binding/profile_binding.dart';
import 'package:nawres_boutabba_s_application1/presentation/accueil_screen/accueil_screen.dart';
import 'package:nawres_boutabba_s_application1/presentation/accueil_screen/binding/accueil_binding.dart';
import 'package:nawres_boutabba_s_application1/presentation/challenge_screen/challenge_screen.dart';
import 'package:nawres_boutabba_s_application1/presentation/challenge_screen/binding/challenge_binding.dart';
import 'package:nawres_boutabba_s_application1/presentation/transfer_screen/transfer_screen.dart';
import 'package:nawres_boutabba_s_application1/presentation/transfer_screen/binding/transfer_binding.dart';
import 'package:nawres_boutabba_s_application1/presentation/login_screen/login_screen.dart';
import 'package:nawres_boutabba_s_application1/presentation/login_screen/binding/login_binding.dart';
import 'package:nawres_boutabba_s_application1/presentation/scan_qr_code_screen/scan_qr_code_screen.dart';
import 'package:nawres_boutabba_s_application1/presentation/scan_qr_code_screen/binding/scan_qr_code_binding.dart';
import 'package:nawres_boutabba_s_application1/presentation/tive_uma_ideia_screen/tive_uma_ideia_screen.dart';
import 'package:nawres_boutabba_s_application1/presentation/tive_uma_ideia_screen/binding/tive_uma_ideia_binding.dart';
import 'package:nawres_boutabba_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:nawres_boutabba_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String warkthroughTwoScreen = '/warkthrough_two_screen';

  static const String conversationScreen = '/conversation_screen';

  static const String profileScreen = '/profile_screen';

  static const String accueilScreen = '/accueil_screen';

  static const String challengeScreen = '/challenge_screen';

  static const String transferScreen = '/transfer_screen';

  static const String loginScreen = '/login_screen';

  static const String scanQrCodeScreen = '/scan_qr_code_screen';

  static const String tiveUmaIdeiaScreen = '/tive_uma_ideia_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: warkthroughTwoScreen,
      page: () => WarkthroughTwoScreen(),
      bindings: [
        WarkthroughTwoBinding(),
      ],
    ),
    GetPage(
      name: conversationScreen,
      page: () => ConversationScreen(),
      bindings: [
        ConversationBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: accueilScreen,
      page: () => AccueilScreen(),
      bindings: [
        AccueilBinding(),
      ],
    ),
    GetPage(
      name: challengeScreen,
      page: () => ChallengeScreen(),
      bindings: [
        ChallengeBinding(),
      ],
    ),
    GetPage(
      name: transferScreen,
      page: () => TransferScreen(),
      bindings: [
        TransferBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: scanQrCodeScreen,
      page: () => ScanQrCodeScreen(),
      bindings: [
        ScanQrCodeBinding(),
      ],
    ),
    GetPage(
      name: tiveUmaIdeiaScreen,
      page: () => TiveUmaIdeiaScreen(),
      bindings: [
        TiveUmaIdeiaBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => WarkthroughTwoScreen(),
      bindings: [
        WarkthroughTwoBinding(),
      ],
    )
  ];
}

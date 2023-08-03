import 'package:get/get.dart';
import 'package:tranzhouse/Pages/Admin/Detail/admin_detail_page.dart';
import 'package:tranzhouse/Pages/Admin/Main/admin_main_page.dart';
import 'package:tranzhouse/Pages/Admin/Notifications/admin_notifications_page.dart';
import 'package:tranzhouse/Pages/Client/Cart/services_cart_page.dart';
import 'package:tranzhouse/Pages/Client/Settings/Feedback/feedback_page.dart';
import 'package:tranzhouse/Pages/Admin/Settings/admin_settings.dart';
import 'package:tranzhouse/Pages/Auth/add_phone_page.dart';
import 'package:tranzhouse/Pages/Auth/login_page.dart';
import 'package:tranzhouse/Pages/Auth/sign_up.dart';
import 'package:tranzhouse/Pages/Auth/verify_phone.dart';
import 'package:tranzhouse/Pages/Client/Articles/single_article_page.dart';
import 'package:tranzhouse/Pages/Client/Cart/products_cart_page.dart';
import 'package:tranzhouse/Pages/Client/Main%20Page/main_page.dart';
import 'package:tranzhouse/Pages/Client/Products/single_productPage.dart';
import 'package:tranzhouse/Pages/Client/Services/services_page.dart';
import 'package:tranzhouse/Pages/Client/Services/single_service_page.dart';
import 'package:tranzhouse/Pages/Client/Settings/About/about_page.dart';
import 'package:tranzhouse/Pages/Client/Settings/Bookmarks/bookmarks_page.dart';
import 'package:tranzhouse/Pages/Client/Settings/Contact/contact_page.dart';
import 'package:tranzhouse/Pages/Client/Settings/Language/language_page.dart';
import 'package:tranzhouse/Pages/Client/Settings/Liked/liked_page.dart';
import 'package:tranzhouse/Pages/Client/Settings/Profile/edit_profile.dart';

import '../Pages/Splash/splash_page.dart';

class RouteNames {
  RouteNames._();

  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: SplashPage.routeName,
      page: () => const SplashPage(),
      transition: Transition.fadeIn,
    ),

    //////// Auth Routes ////////

    GetPage(
      name: LoginPage.routeName,
      page: () => const LoginPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: SignupPage.routeName,
      page: () => const SignupPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AddPhoneNumberPage.routeName,
      page: () => const AddPhoneNumberPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: VerifyPhoneNumberPage.routeName,
      page: () => const VerifyPhoneNumberPage(),
      transition: Transition.fadeIn,
    ),
    //////////////
    //////// Client Routes ////////
    GetPage(
      name: ClientMainPage.routeName,
      page: () => const ClientMainPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: ServicesPage.routeName,
      page: () => const ServicesPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: ProductsCartPage.routeName,
      page: () => const ProductsCartPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: ServicesCartPage.routeName,
      page: () => const ServicesCartPage(),
      transition: Transition.fadeIn,
    ),
    //////////////SETTINS ROUTES////////////
    GetPage(
      name: LanguagePage.routeName,
      page: () => const LanguagePage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: BookmarksPage.routeName,
      page: () => const BookmarksPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: LikedksPage.routeName,
      page: () => const LikedksPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: ContactPage.routeName,
      page: () => const ContactPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AboutPage.routeName,
      page: () => const AboutPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: SingleArticlePage.routeName,
      page: () => const SingleArticlePage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: SingleProductPage.routeName,
      page: () => const SingleProductPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: SingleServicePage.routeName,
      page: () => const SingleServicePage(),
      transition: Transition.fadeIn,
    ),
    //////////////ADMIN ROUTES////////////
    GetPage(
      name: AdminMainPage.routeName,
      page: () => const AdminMainPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AmdinOrderDetailPage.routeName,
      page: () => const AmdinOrderDetailPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AdminSettingsPage.routeName,
      page: () => const AdminSettingsPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AdminNotificationsPAge.routeName,
      page: () => const AdminNotificationsPAge(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: FeedbackPage.routeName,
      page: () => const FeedbackPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: EditProfilePage.routeName,
      page: () => const EditProfilePage(),
      transition: Transition.fadeIn,
    ),
  ];
}

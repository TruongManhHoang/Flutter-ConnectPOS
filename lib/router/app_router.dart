import 'package:boilerplate/features/product/view/cart_page.dart';
import 'package:boilerplate/features/customOrderStatus/view/custom_Order_Status_Page.dart';
import 'package:boilerplate/features/home/view/home_page.dart';
import 'package:boilerplate/features/login/view/login_page.dart';
import 'package:boilerplate/features/outlet&Register/view/new_outlet.dart';
import 'package:boilerplate/features/outlet&Register/view/outlet_register_page.dart';
import 'package:boilerplate/features/outlet&Register/view/update_outlet.dart';
import 'package:boilerplate/features/product/view/product_detail_page.dart';
import 'package:boilerplate/features/product/view/product_page.dart';
import 'package:boilerplate/features/receipt/view/receipt_page.dart';
import 'package:boilerplate/features/setting/setting_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static const String homeNamed = 'home';
  static const String homePath = '/home';

  static const String settingNamed = 'setting';
  static const String settingPath = '/setting';

  static const String loginName = 'login';
  static const String loginPath = '/';

  static const String outletRegisterName = 'outletRegister';
  static const String outletRegisterPath = '/outletRegister';

  static const String customOrderStatusName = 'customOrderStatus';
  static const String customOrderStatusPath = '/customOrderStatus';

  static const String receiptName = 'receipt';
  static const String receiptPath = '/receipt';

  static const String updateName = 'update';
  static const String updatePath = '/update';

  static const String newStoreName = 'newStore';
  static const String newStorePath = '/newStore';

  static const String productName = 'product';
  static const String productPath = '/product';

  static const String productDetailName = 'productDetail';
  static const String productDetailPath = '/productDetail';

  static const String cartName = 'cart';
  static const String cartPath = '/cart';

  static GoRouter get router => _router;
  static final _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: loginName,
        path: loginPath,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        name: homeNamed,
        path: homePath,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: settingNamed,
        path: settingPath,
        builder: (context, state) => const SettingPage(),
      ),
      GoRoute(
        name: outletRegisterName,
        path: outletRegisterPath,
        builder: (context, state) => const OutletPage(),
      ),
      GoRoute(
        name: customOrderStatusName,
        path: customOrderStatusPath,
        builder: (context, state) => const CustomOrderStatusPage(),
      ),
      GoRoute(
        name: receiptName,
        path: receiptPath,
        builder: (context, state) => const ReceiptPage(),
      ),
      GoRoute(
        name: updateName,
        path: updatePath,
        builder: (context, state) => const UpdateOutletPage(),
      ),
      GoRoute(
        name: newStoreName,
        path: newStorePath,
        builder: (context, state) => const NewOutletPage(),
      ),
      GoRoute(
        name: productName,
        path: productPath,
        builder: (context, state) => const ProductPage(),
      ),
      GoRoute(
        name: productDetailName,
        path: productDetailPath,
        builder: (context, state) => const ProductDetailPage(),
      ),
      GoRoute(
        name: cartName,
        path: cartPath,
        builder: (context, state) => const CartPage(),
      )
    ],
  );
}

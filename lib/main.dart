import 'package:flutter/material.dart';
import 'package:flutter_getx/01%20getx_snackbar/snackbar.dart';
import 'package:flutter_getx/02%20getx_dialog/dialog.dart';
import 'package:flutter_getx/03%20getx_bottomsheet/bottomsheet.dart';
import 'package:flutter_getx/04%20getx_routes/routes_named/route_named.dart';
import 'package:flutter_getx/04%20getx_routes/routes_named/route_named_home.dart';
import 'package:flutter_getx/04%20getx_routes/routes_unnamed/route_unnamed.dart';
import 'package:flutter_getx/04%20getx_routes/routes_unnamed/route_unnamed_home.dart';
import 'package:flutter_getx/05%20getx_statemanagement/getx_statemanagement_controller/controller.dart';
import 'package:flutter_getx/05%20getx_statemanagement/getx_statemanagement_customclass/customclass.dart';
import 'package:flutter_getx/05%20getx_statemanagement/getx_statemanagement_reactive/reactive.dart';
import 'package:flutter_getx/05%20getx_statemanagement/getx_statemanagement_reactive_controller_type/reactive_controller_type.dart';
import 'package:flutter_getx/05%20getx_statemanagement/getx_statemanagement_simple_state_manager/simple_state_manager.dart';
import 'package:flutter_getx/06%20getx_controller_lifecycle_method/controller_lifecycle_method.dart';
import 'package:flutter_getx/07%20getx_unique_id/unique_id.dart';
import 'package:flutter_getx/08%20getx_workers/workers.dart';
import 'package:flutter_getx/09%20getx_internationalization/internationalization.dart';
import 'package:flutter_getx/09%20getx_internationalization/internationalization_messages.dart';
import 'package:flutter_getx/10%20getx_dependency_injection/dependency_injection.dart';
import 'package:flutter_getx/11%20getx_service/service.dart';
import 'package:flutter_getx/12%20getx_binding/all_controller_binding.dart';
import 'package:flutter_getx/12%20getx_binding/binding.dart';
import 'package:flutter_getx/12%20getx_binding/home_binding.dart';
import 'package:flutter_getx/12%20getx_binding/home_controller_binding.dart';
import 'package:flutter_getx/13%20getx_getstorage/getstorage.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  /// -#12 Binding                   ///
  // BindingControllerBinding().dependencies();

  /// -#13 GetStorage                   ///
  await GetStorage.init();
  runApp(MyApp());
}

/// -# 11 Service                   ///
///                                 ///

// Future<void> main() async {
//   await initServices();
//   runApp(MyApp());
// }

// Future<void> initServices() async {
//   print('Starting services...');
//   await Get.putAsync<Service>(() async => Service());
//   print('All services started');
// }

///                                 ///
/// -# 11 Service                   ///

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      /// -# 09 Internationalization ///
      ///                            ///

      /// -- Model penerjemah
      translations: Messages(),

      /// -- lLocale awal
      locale: Locale('en', 'US'),

      /// -- Locale apabila locale awal salah
      fallbackLocale: Locale('en', 'US'),

      ///                             ///
      /// -# 09 Internationalization ///

      /// -- Menonaktifkan banner debug
      debugShowCheckedModeBanner: false,

      ///                             ///
      /// -# 12 Binding               ///

      initialBinding: AllControllerBinding(),

      /// -- Jika binding diaplikasikan pada level route
      // getPages: [
      //    GetPage(
      //      name: '/homebinding',
      //      page: () => HomeBinding(),
      //      binding: HomeControllerBinding(),
      //    ),
      // ]

      /// Binding builder (jika kita tidak butuh untuk menggunakan separate binding class)
      // getPages: [
      //    GetPage(
      //      name: '/homebinding',
      //      page: () => HomeBinding(),
      //      binding: BindingsBuilder(() => {
      //            Get.lazyPut<HomeControllerBinding> (
      //                () => HomeControllerBinding())
      //      },
      //     )
      //   ),
      // ]

      /// -# 12 Binding               ///
      ///                             ///

      /// -- Pilih initialRoute dari "routes {}"
      /// -- Ubah secara manual
      initialRoute: '/getstorage',
      getPages: [
        GetPage(name: '/snackbar', page: () => GetXSnackbar()),
        GetPage(name: '/dialog', page: () => GetXDialog()),
        GetPage(name: '/bottomsheet', page: () => GetXBottomSheet()),
        GetPage(name: '/routeunnamed', page: () => GetXRouteUnnamed()),
        GetPage(name: '/routeunnamedhome', page: () => GetXRouteUnnamedHome()),
        GetPage(name: '/routenamed', page: () => GetXRouteNamed()),
        GetPage(name: '/routenamedhome', page: () => GetXRouteNamedHome()),
        GetPage(
            name: '/statemanagementreactive',
            page: () => GetXStateManagementReactive()),
        GetPage(
            name: '/statemanagementcustomclass',
            page: () => GetXStateManagementCustomClass()),
        GetPage(
            name: '/statemanagementcontroller',
            page: () => GetXStateManagementController()),
        GetPage(
            name: '/statemanagementcontrollertype',
            page: () => GetXStateManagementReactiveControllerType()),
        GetPage(
            name: '/statemanagementsimplestatemanager',
            page: () => GetXStateManagementSimpleStateManager()),
        GetPage(
            name: '/controllerlifecyclemethod',
            page: () => GetXControllerLifecycleMethod()),
        GetPage(name: '/uniqueid', page: () => GetXUniqueId()),
        GetPage(name: '/workers', page: () => GetXWorkers()),
        GetPage(
            name: '/internationalization',
            page: () => GetXInternationalization()),
        GetPage(
            name: '/dependencyinjection',
            page: () => GetXDependencyInjection()),
        GetPage(name: '/service', page: () => GetXService()),
        GetPage(name: '/binding', page: () => GetXBinding()),
        GetPage(name: '/getstorage', page: () => GetXGetStorage()),
      ],
    );
  }
}

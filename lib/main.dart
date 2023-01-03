// import packages ---------------------
import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
// import routing ---------------------
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'globals/constants/colors_fonts/colors.dart';
import 'route/app_router.gr.dart';

Future<void> main() async {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return const Material();
  };

  runApp(const Center(
    child: CupertinoActivityIndicator(color: CustomColors.primary, radius: 40),
  ));
  WidgetsFlutterBinding.ensureInitialized();
  // await Future.wait([
  //   Firebase.initializeApp(
  //       // options: DefaultFirebaseOptions.currentPlatform,
  //       ),
  // ]);

  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

final appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    lightUi;
    return CupertinoApp.router(
      // showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.appTheme,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}

//gå igenom hur auto_router används för att pusha nya screens och pop samt shell
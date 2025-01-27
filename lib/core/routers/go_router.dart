import 'package:dalel/core/routers/router_constant.dart';
import 'package:dalel/features/onboarding/presentation/view/on_boarding_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/view/splash_view.dart';

final GoRouter goRouter = GoRouter(routes: [
  GoRoute(
    path: splashView,
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: onBoardingView,
    builder: (context, state) => const OnBoardingView(),
  )
]);

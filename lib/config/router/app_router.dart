import 'package:flutter_application_1/presentation/home_screens.dart';
import 'package:flutter_application_1/presentation/screens/details_screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreens.name,
      builder: (context, state) => const HomeScreens(),
      routes: [
        GoRoute(
          path: 'detail',
          name: DetailsScreens.name,
          builder: (context, state) => const DetailsScreens(),
        ),
      ]
    )
  ]


);

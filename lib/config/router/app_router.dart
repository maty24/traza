import 'package:go_router/go_router.dart';
import 'package:trazabilidad/presentation/screens/sreens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
     routes: [
        GoRoute(
            path: 'resume/:lote',
            name: ResumeLoteScreen.name,
            builder: (contex, state) {
              final lote = state.params['lote'] ?? 'no-lote';
              return ResumeLoteScreen(lote: lote);
            }),
      ]
  ),
  GoRoute(
    path: '/theme-changer',
    name: ThemeChanger.name,
    builder: (context, state) => const ThemeChanger(),
  ),
  GoRoute(
      path: '/qr-code',
      name: QrCodeScreen.name,
      builder: (context, state) => const QrCodeScreen(),
     )
]);

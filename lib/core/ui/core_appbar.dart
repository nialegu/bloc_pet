import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/theme/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppBarCore extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCore({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  Widget appBar(BuildContext context) {
    final String? path = navigationShell.shellRouteContext.routerState.fullPath;

    switch (path) {
      case "/home":
        return renderAppBar(
          context,
          'Home',
          [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, state) {
                  final themeBloc = context.read<ThemeBloc>();
                  return Row(
                    children: [
                      Icon((state.theme == ThemeMode.dark)
                          ? Icons.light_mode
                          : Icons.dark_mode),
                      Switch(
                        onChanged: (value) {
                          themeBloc.add(
                              value ? DarkThemeEvent() : LightThemeEvent());
                        },
                        value: themeBloc.state.switchValue,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        );
      case "/recipients":
        return renderAppBar(context, 'Recipients');
      case "/gifts":
        return renderAppBar(context, 'Gifts');
      default:
        return renderAppBar(context, path!);
    }
  }

  Widget renderAppBar(BuildContext context, String title,
      [List<Widget> actions = const []]) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Colors.white,
      title: Text(title),
      actions: actions,
      centerTitle: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return appBar(context);
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);
}

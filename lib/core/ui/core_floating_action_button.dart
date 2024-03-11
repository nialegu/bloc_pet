import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/bloc/config_bloc.dart';
import 'package:flutter_application_1/core/bloc/floating_button/floating_button_bloc.dart';
import 'package:flutter_application_1/features/recepients/ui/widgets/add_recipient_form.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_application_1/features/recepients/bloc/recepients_bloc/recepients_bloc.dart';

class FloatingActionButtonCore extends StatelessWidget {
  FloatingActionButtonCore({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  final recipientsBloc = getIt.get<RecipientsBloc>();
  final floatingButtonBloc = getIt.get<FloatingButtonBloc>();

  @override
  Widget build(BuildContext context) {
    final Widget? floatingActionButton;

    switch (navigationShell.shellRouteContext.routerState.fullPath) {
      case "/recipients":
        floatingActionButton = FloatingActionButton(
          onPressed: () {
            addRecipientShowBottomSheet(context);
            // recipientsBloc.addRecipient(
            //     "Leonid", "Gusev", DateTime(2002, 2, 2));
          },
          isExtended: true,
          child: const Icon(Icons.add),
        );
      default:
        floatingActionButton = Container();
    }

    return floatingActionButton;
  }

  void addRecipientShowBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: DraggableScrollableSheet(
            initialChildSize: 1,
            minChildSize: 0.99,
            expand: false,
            builder: (context, scrollController) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: AddRecipientForm(
                  scrollController: scrollController,
                ),
              );
            },
          ),
        );
      },
    );
  }
}

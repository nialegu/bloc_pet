import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/recepients/bloc/recepients_bloc/recepients_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecipientsScreen extends StatelessWidget {
  const RecipientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<RecepientsBloc>();

    return Column(
      children: [
        StreamBuilder(
            stream: bloc.streamBloc,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              }
              print(snapshot.data);
              return const Column(
                children: [],
              );
            }),
        BlocProvider<RecepientsBloc>(
          create: (context) => RecepientsBloc(),
          child: BlocBuilder<RecepientsBloc, RecepientsState>(
            builder: (context, state) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      context
                          .read<RecepientsBloc>()
                          .add(AddRecepient(name: "Leonid", surname: "Gusev"));
                    },
                    child: const Icon(Icons.add_box),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

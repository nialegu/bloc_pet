import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/bloc/config_bloc.dart';
import 'package:flutter_application_1/features/recepients/bloc/recepients_bloc/recepients_bloc.dart';

class RecipientsScreen extends StatelessWidget {
  const RecipientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final recepientBloc = getIt.get<RecipientsBloc>();

    recepientBloc.updateRecipients();

    return SingleChildScrollView(
      child: Column(
        children: [
          StreamBuilder(
              stream: recepientBloc.streamBloc,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator();
                }
                if (snapshot.data!.isEmpty) {
                  return const Center(
                    heightFactor: 20,
                    child: Text("No recepients here"),
                  );
                }
                return Column(
                  children: snapshot.data!
                      .map((e) => Dismissible(
                            key: GlobalKey(),
                            direction: DismissDirection.endToStart,
                            background: Container(color: Colors.red),
                            onDismissed: (direction) {
                              recepientBloc.deleteRecipient(e.id);
                            },
                            child: ListTile(
                              title: Text("${e.name} ${e.surname}"),
                              trailing: Text(e.id.toString()),
                            ),
                          ))
                      .toList(),
                );
              }),
        ],
      ),
    );
  }
}

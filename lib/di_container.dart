import 'package:flutter_application_1/core/data/data_source/database.dart';
import 'package:flutter_application_1/features/recepients/bloc/recepients_bloc/recepients_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => AppDatabase());

  sl.registerLazySingleton(() => RecepientsBloc());
}
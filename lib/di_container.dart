import 'package:flutter_application_1/core/bloc/floating_button/floating_button_bloc.dart';
import 'package:get_it/get_it.dart';

import '/core/data/data_source/database.dart';
import '/features/recepients/bloc/recepients_bloc/recepients_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => AppDatabase());

  // Core
  sl.registerLazySingleton(() => FloatingButtonBloc());

  // Features
  sl.registerLazySingleton(() => RecipientsBloc());
}

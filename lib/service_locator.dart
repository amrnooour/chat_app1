import 'package:chat_app1/features/auth/data/repos/auth_repo.dart';
import 'package:chat_app1/features/auth/data/source/auth_firebase_services.dart';
import 'package:chat_app1/features/home/data/repos/home_repo.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependancies() async {
  sl.registerSingleton<AuthFirebaseServices>(AuthFirebaseServicesImpl());
  sl.registerSingleton<AuthRepo>(AuthRepoImpl());
  sl.registerSingleton<HomeRepo>(HomeRepoImpl());

}

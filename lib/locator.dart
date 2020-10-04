import 'package:get_it/get_it.dart';
import 'package:webclima/services/api.dart';
import 'package:webclima/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => Api());
}
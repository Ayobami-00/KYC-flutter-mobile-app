  
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app/injection.iconfig.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}
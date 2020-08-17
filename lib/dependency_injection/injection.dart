import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:lockdown_chharo/dependency_injection/injection.iconfig.dart';

final getIt = GetIt.I;

@injectableInit
void configureDependencies() => $initGetIt(getIt);

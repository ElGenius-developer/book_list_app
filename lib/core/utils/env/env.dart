import 'package:envied/envied.dart';

part 'env.g.dart';
//The obfuscate flag makes variables more
// secure through obfuscation
@Envied(path: 'app_env_vars.env', obfuscate: true, requireEnvFile: true)
abstract class Env {

  @EnviedField(varName: 'SCHEMA')
  static final String schema = _Env.schema;

  @EnviedField(varName: 'SERVER_URL')
  static final String serverUrl = _Env.serverUrl;

}

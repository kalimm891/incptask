import 'package:incp/presentation/getx/binding/user_binding.dart';

class DependencyInjection {
  static inject() {
    UserBinding().dependencies();
  }
}
import 'package:get/get.dart';

import '../../data/store/storage_service.dart';
import '../../data/store/user_store.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StorageService>(() => StorageService());
    Get.lazyPut<UserStore>(() => UserStore());
  }
}

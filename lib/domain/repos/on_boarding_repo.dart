import 'package:tdd_edu_app/core/utils/typedefs.dart';

abstract class OnBoardingRepo {
  // 缓存第一次进入app标识
  ResultFuture<void> cacheFirstTimer();

  // 检查是否第一次进入app
  ResultFuture<bool> checkIfUserIsFirstTimer();
}
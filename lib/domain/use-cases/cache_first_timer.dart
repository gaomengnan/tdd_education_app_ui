import 'package:tdd_edu_app/core/use-cases/use_cases.dart';
import 'package:tdd_edu_app/core/utils/typedefs.dart';
import 'package:tdd_edu_app/domain/repos/on_boarding_repo.dart';

class CacheFirstTimer extends UseCaseWithoutParams<void> {
  const CacheFirstTimer(this._repo);
  final OnBoardingRepo _repo;
  @override
  ResultFuture<void> call() async => _repo.cacheFirstTimer();
}

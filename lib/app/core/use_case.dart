import 'package:dartz/dartz.dart';

abstract class UseCase<P, S> {
  Future<Either<Object, S>> call({required P params});
}

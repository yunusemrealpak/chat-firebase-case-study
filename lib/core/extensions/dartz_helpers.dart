import 'package:dartz/dartz.dart';

extension DartzHelpers<L, R> on Either<L, R> {
  R get right => (this as Right).value; //
  L get left => (this as Left).value;
}
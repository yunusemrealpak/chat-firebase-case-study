import 'package:chat_case_study/domain/auth/model/user.dart';
import 'package:chat_case_study/domain/failure.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Stream<User?> get authStateChanges;
  Future<Either<Failure, User>> signInWithEmailAndPassword(String email, String password);
  Future<Either<Failure, User>> signUpWithEmailAndPassword(String email, String password);
  Future<bool> signOut();
}
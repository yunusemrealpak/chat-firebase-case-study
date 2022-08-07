import 'dart:async';

import 'package:chat_case_study/domain/auth/i_auth_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:chat_case_study/domain/failure.dart';
import 'package:chat_case_study/domain/auth/model/user.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository extends IAuthRepository{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  
  final StreamController<User?> _streamController = StreamController<User?>();
  
  @override
  Stream<User?> get authStateChanges => _streamController.stream;

  @override
  Future<Either<Failure, User>> signInWithEmailAndPassword(String email, String password) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> signUpWithEmailAndPassword(String email, String password) {
    // TODO: implement signUpWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<bool> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
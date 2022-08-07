import 'dart:async';
import 'dart:ffi';

import 'package:chat_case_study/domain/auth/i_auth_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:chat_case_study/domain/failure.dart';
import 'package:chat_case_study/domain/auth/model/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as FBAuth;
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../core/exceptions/firebase_error_code.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository extends IAuthRepository {
  final StreamController<User?> _streamController = StreamController<User?>();

  @override
  Stream<User?> get authStateChanges => _streamController.stream;
  late DatabaseReference _databaseReference;

  @override
  Future<Either<Failure, User>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      FBAuth.UserCredential userCredential = await FBAuth.FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        User user = User(
            id: userCredential.user!.uid,
            name: userCredential.user!.email,
            isOnline: true);
        await _setUserOnline(user);
      }
    } catch (e) {
      FBAuth.FirebaseAuthException exception =
          e as FBAuth.FirebaseAuthException;
      String? errorMessage;
      if (exception.code == kWrongEmailError) {
        errorMessage = "Wrong email";
      } else if (exception.code == kWrongPasswordError) {
        errorMessage = "Wrong password";
      } else if (exception.code == kInvalidEmailError) {
        errorMessage = "Invalid email";
      }
      if (kDebugMode) {
        print(errorMessage);
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      FBAuth.UserCredential userCredential = await FBAuth.FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      User user = User(
          id: userCredential.user!.uid,
          name: userCredential.user!.email,
          isOnline: true);
      await _setUserOnline(user);
    } catch (e) {
      FBAuth.FirebaseAuthException exception =
          e as FBAuth.FirebaseAuthException;
      String? errorMessage;
      if (exception.code == kUsedEmailError) {
        errorMessage = "Used Email";
      } else if (exception.code == kWeakPasswordError) {
        errorMessage = "Weak password";
      } else if (exception.code == kInvalidEmailError) {
        errorMessage = "Invalid email";
      }
      if (kDebugMode) {
        print(errorMessage);
      }
    }

    throw UnimplementedError();
  }

  @override
  Future<bool> signOut() async {
    try {
      await FBAuth.FirebaseAuth.instance.signOut();
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  Future<void> _setUserOnline(User user) async {
    _databaseReference = FirebaseDatabase.instance.ref("users/${user.id}");
    _databaseReference
        .onDisconnect()
        .set({"isOnline": false, "userId": user.id});
    await _databaseReference.set({"isOnline": true, "userId": user.id});
  }
}

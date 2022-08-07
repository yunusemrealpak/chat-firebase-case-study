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
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
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
          tag: userCredential.user!.email!.substring(0, 2).toUpperCase(),
          isOnline: true,
        );

        _streamController.add(user);

        await _setUserOnline(user);

        return Right(user);
      }

      return const Left(Failure(message: "Hata oluştu. Tekrar deneyin."));
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

      return Left(Failure(message: errorMessage));
    }
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
          tag: userCredential.user!.email!.substring(0, 2).toUpperCase(),
          isOnline: true);

      _streamController.add(user);

      var userDoc = await _firestore.collection("users").doc(user.id).get();
      if (!userDoc.exists) {
        await _firestore.collection("users").doc(user.id).set(user.toJson());
      }

      await _setUserOnline(user);

      return Right(user);
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

      return Left(Failure(message: errorMessage));
    }
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

  @override
  Stream<bool> userOnlineStatus(String userId) {
    var databaseReference = FirebaseDatabase.instance.ref("users/$userId");
    return databaseReference.onValue.map(
        (event) => (event.snapshot.value as Map<dynamic, dynamic>)["isOnline"]);
  }
}

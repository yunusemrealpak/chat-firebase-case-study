import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseCubit<T> extends Cubit<T> {
  BaseCubit(T initialState) : super(initialState);

  late BuildContext context;
  setContext(BuildContext context) => this.context = context;

  bool disposed = false;

  showNotification(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  resetFailure() {
    if (kDebugMode) {
      print("State'inde failure objesi bulundurmalısın");
    }
  }
  
  @override
  Future<void> close() {
    disposed = true;
    return super.close();
  }
}

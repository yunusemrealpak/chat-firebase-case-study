// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/core/base_cubit.dart';
import '../../application/core/base_state.dart';
import '../../injection.dart';

class BaseConsumer<T extends BaseCubit<R>, R extends BaseState>
    extends StatefulWidget {
  final Function(BuildContext context, T cubit, R state) builder;
  final bool Function(R, R)? listenWhen;
  final Function(BuildContext context, T cubit, R state)? listener;
  const BaseConsumer({
    Key? key,
    required this.builder,
    this.listenWhen,
    this.listener,
  }) : super(key: key);

  @override
  State<BaseConsumer<T, R>> createState() => _BaseConsumerState<T, R>();
}

class _BaseConsumerState<T extends BaseCubit<R>, R extends BaseState>
    extends State<BaseConsumer<T, R>> {
  

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<T, R>(
      builder: (context, state) {
        final _cubit = context.read<T>();
        return widget.builder(context, _cubit, state);
      },
      listenWhen: widget.listenWhen,
      listener: (context, state) {
        final _cubit = context.read<T>();
        if(widget.listener != null) widget.listener!(context, _cubit, state);
      }
    );
  }
}

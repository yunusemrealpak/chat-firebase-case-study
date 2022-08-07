import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/core/base_cubit.dart';
import '../../application/core/base_state.dart';
import '../../injection.dart';

class BaseView<T extends BaseCubit<R>, R extends BaseState>
    extends StatefulWidget {
  final Function(BuildContext context, T cubit, R state) builder;
  final bool Function(R, R)? listenWhen;
  final Function(BuildContext context, T cubit, R state)? listener;
  final void Function(T cubit)? onCubitReady;
  const BaseView({
    Key? key,
    this.listener,
    this.listenWhen,
    required this.builder,
    this.onCubitReady,
  }) : super(key: key);

  @override
  State<BaseView> createState() => _BaseViewState<T, R>();
}

class _BaseViewState<T extends BaseCubit<R>, R extends BaseState>
    extends State<BaseView<T, R>> {
  late T cubit;

  @override
  void initState() {
    super.initState();
    
    cubit = getIt<T>();
    if(widget.onCubitReady != null) {
      widget.onCubitReady!(cubit);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: BlocConsumer<T, R>(
        builder: (context, state) {
          return widget.builder(context, cubit, state);
        },
        listenWhen: widget.listenWhen,
        listener: (context, state) {
          final _cubit = context.read<T>();
          if(widget.listener != null) widget.listener!(context, _cubit, state);
        },
      ),
    );
  }
}

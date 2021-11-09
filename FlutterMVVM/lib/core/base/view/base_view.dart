import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:mvvm_app/core/localization/app_localization.dart';

class BaseView<T extends Store> extends StatefulWidget {
  final Widget Function(BuildContext context, T value) onPageBuilder;
  final T viewModel;
  final void Function(T model) onModelReady;
  final VoidCallback onDispose;

  const BaseView({Key? key, required this.onPageBuilder, required this.viewModel, required this.onModelReady, required this.onDispose})
      : super(key: key);

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends Store> extends State<BaseView<T>> {
  T? model;

  @override
  void initState() {
    super.initState();
    widget.onModelReady(widget.viewModel);
  }

  @override
  void dispose() {
    super.dispose();
    widget.onDispose();
  }

  @override
  Widget build(BuildContext context) {
    AppLocalizations.of(context);
    return widget.onPageBuilder(context, widget.viewModel);
  }
}

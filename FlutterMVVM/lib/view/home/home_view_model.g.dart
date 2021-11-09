// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  final _$helloWorldAtom = Atom(name: '_HomeViewModelBase.helloWorld');

  @override
  String get helloWorld {
    _$helloWorldAtom.reportRead();
    return super.helloWorld;
  }

  @override
  set helloWorld(String value) {
    _$helloWorldAtom.reportWrite(value, super.helloWorld, () {
      super.helloWorld = value;
    });
  }

  @override
  String toString() {
    return '''
helloWorld: ${helloWorld}
    ''';
  }
}

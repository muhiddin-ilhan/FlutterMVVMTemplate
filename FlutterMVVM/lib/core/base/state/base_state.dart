import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  double dHeight(double value) => MediaQuery.of(context).size.height * value;
  double dWidth(double value) => MediaQuery.of(context).size.width * value;
}

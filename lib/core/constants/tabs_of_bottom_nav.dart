import 'package:chat_app1/features/home/presentation/views/calls.dart';
import 'package:chat_app1/features/home/presentation/views/status.dart';
import 'package:chat_app1/features/home/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

abstract class TabsOfBottomNav {
  static List<Widget> tabs =const [HomeBody(), Status(), Calls()];
}

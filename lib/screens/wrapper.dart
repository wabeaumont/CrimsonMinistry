import 'package:flutter/material.dart';
import 'package:CrimsonMinistry/screens/home/home.dart';
import 'package:CrimsonMinistry/screens/auth/auth.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return either Home or Authenticate Widget
    return Auth();
  }
}

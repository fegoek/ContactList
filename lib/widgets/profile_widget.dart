import 'package:flutter/material.dart';
class ProfileWidhet extends StatefulWidget {
  const ProfileWidhet({super.key});

  @override
  State<ProfileWidhet> createState() => _ProfileWidhetState();
}

class _ProfileWidhetState extends State<ProfileWidhet> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text("Profile"),
      ),
    );
  }
}
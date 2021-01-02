import 'package:flutter/material.dart';
import 'package:projeto_arquitetura/app/app_controller.dart';

class CustomSwitchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDark,
      onChanged: (value) {
        AppController.instance.changeThemeViewModel.changeTheme(value);
      });
  }
}


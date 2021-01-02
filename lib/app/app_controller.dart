import 'package:flutter/cupertino.dart';
import 'package:projeto_arquitetura/app/viewmodels/change_theme_viewmodel.dart';
import 'package:projeto_arquitetura/app/services/shared_local_storage_service.dart';

class AppController {
  static final AppController instance = AppController._();
  AppController._() {
    changeThemeViewModel.init();
  }

  final ChangeThemeViewModel changeThemeViewModel =
      ChangeThemeViewModel(storage: SharedLocalStorageService());

  bool get isDark => changeThemeViewModel.config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch =>
      changeThemeViewModel.config.themeSwitch;
}

import 'package:flutter/cupertino.dart';
import 'package:projeto_arquitetura/app/models/appconfig_model.dart';
import 'package:projeto_arquitetura/app/interface/local_storage_interface.dart';
import 'package:projeto_arquitetura/app/services/shared_local_storage_service.dart';

class AppController {
  static final AppController instance = AppController._();

  AppController._(){
      storage.get('isDark').then((value){
       if (value != null) config.themeSwitch.value = value;
    });
  }

  final AppConfigModel config = AppConfigModel();
  bool get isDark => config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => config.themeSwitch;

  final ILocalStorage storage = SharedLocalStorageService(); 

  changeTheme(bool value) {
    config.themeSwitch.value = value;
    storage.put('isDark', value);
  }
}

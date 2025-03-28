import 'package:flutter/foundation.dart';
import 'package:local_auth/local_auth.dart';
import 'package:my_first_app/app/app.bottomsheets.dart';
import 'package:my_first_app/app/app.dialogs.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  // final _localAuth = locator<LocalAuthentication>();
  final LocalAuthentication _auth = LocalAuthentication();

  String get counterLabel => 'Counter is: $_counter';
  bool get isAuthenticated => _isAuthenticated;

  int _counter = 0;
  bool _isAuthenticated = false;

  void authAction() async {
    final bool canAuthenticateWithBiometrics = await _auth.canCheckBiometrics;
    // print(canAuthenticateWithBiometrics);
    if (canAuthenticateWithBiometrics) {
      final List<BiometricType> availableBiometrics = await _auth.getAvailableBiometrics();
      print(availableBiometrics);
      // if (availableBiometrics.isNotEmpty) {
      //   // Some biometrics are enrolled.
      // }

      // if (availableBiometrics.contains(BiometricType.strong) ||
      //     availableBiometrics.contains(BiometricType.face)) {
      //   // Specific types of biometrics are available.
      //   // Use checks like this with caution!
      // }
      try{
        final bool didAuthenticate = await _auth.authenticate(
            localizedReason: 'Please authenticate to access the app',
            options: const AuthenticationOptions(
              // biometricOnly: true,
            ));
        _isAuthenticated = didAuthenticate;
      }catch(e){
        print(e);
      }
    } else {
      _isAuthenticated = false;
    }
    notifyListeners();
  }

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }
}

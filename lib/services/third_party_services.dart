import 'package:flutter/material.dart';
import 'package:sd_project/services/firebase_auth.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:injectable/injectable.dart';

@ModalBarrier()
abstract class ThirdPartyServicesModule {
  @lazySingleton
  NavigationService get navigationService;
  @lazySingleton
  DialogService get dialogService;
  @lazySingleton
  SnackbarService get snackBarService;
  @lazySingleton
  BottomSheetService get bottomSheetService;
  @lazySingleton
  FireBaseAuthService get firebaseAuthService;
}

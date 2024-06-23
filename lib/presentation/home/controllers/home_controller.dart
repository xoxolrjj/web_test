import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app/services/local_storage.dart';

enum HomeState {
  loading,
  loaded,
  error,
}

class HomeController extends GetxController {
  var store = Get.find<LocalStorageService>();

  final SearchController controller = Get.put(SearchController());

  var selectedLocation = ''.obs;
  var selectedPropertyType = ''.obs;
  var selectedPriceRange = ''.obs;
  var isForSale = true.obs;
  var isForLease = true.obs;

  void radioSaleLease(value) {
    isForSale.value = value;
    isForLease.value = !value;
  }
}

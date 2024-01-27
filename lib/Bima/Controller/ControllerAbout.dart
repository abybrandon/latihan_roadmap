import 'package:get/get.dart';

class ControllerAbout extends GetxController {
  List<String> genderList = ['Laki-laki', 'Perempuan']; // List of genders
  RxString selectedGender = ''.obs;

  void onGenderChanged(RxString value) {
    selectedGender.value = value.value;
  }
}

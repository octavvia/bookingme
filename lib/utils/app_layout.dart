import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixel) {
    double x = getScreenHeight() / pixel;
    return getScreenHeight() / x;
  }

  static getWidth(double pixel) {
    double x = getScreenWidth() / pixel;
    return getScreenWidth() / x;
  }

  static getScreenHeigth() {
    return Get.height;
  }

  static getHeigth(double pixels) {
    double x = getScreenHeigth() / pixels; // 844:200 = 4.22
    return getScreenHeigth() / x; // 844 : 4.22
  }
}

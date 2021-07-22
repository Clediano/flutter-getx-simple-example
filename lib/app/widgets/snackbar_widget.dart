import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snackbar {
  void success({
    title = "Title",
    message: "Message",
    snackPosition,
    dismissDirection,
    icon,
    shouldIconPulse = true,
    barBlur = 20.0,
    isDismissible = true,
    duration,
    margin,
    leftBarIndicatorColor,
    backgroundColor,
    Widget titleText,
    Widget messageText,
  }) {
    Get.snackbar(
      title,
      message,
      titleText: titleText ?? "",
      messageText: messageText ?? "",
      snackPosition: snackPosition ?? SnackPosition.BOTTOM,
      dismissDirection: dismissDirection ?? SnackDismissDirection.HORIZONTAL,
      icon: icon,
      shouldIconPulse: shouldIconPulse,
      barBlur: barBlur,
      isDismissible: isDismissible,
      duration: duration,
      margin: margin ?? EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      leftBarIndicatorColor: leftBarIndicatorColor ?? Colors.green,
      backgroundColor: backgroundColor ?? Colors.green[50],
    );
  }
}

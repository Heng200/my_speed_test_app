// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_speed_test_app/controllers/speed_test_controller.dart';
import 'package:my_speed_test_app/pages/speed_meter_widget.dart';
import 'package:my_speed_test_app/shared/themes/colors/color_theme.dart';
import 'package:my_speed_test_app/shared/widgets/buton_widget.dart';
import 'package:my_speed_test_app/shared/widgets/text_widget.dart';

class SpeedTestPage extends StatelessWidget {
  const SpeedTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SpeedTestController());

    return GetBuilder<SpeedTestController>(
      init: controller,
      builder: (context) {
        return Scaffold(
          backgroundColor: ColorTheme.COLOR_LIGHT,
          appBar: AppBar(
            title: const Text("Speed Test"),
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: ColorTheme.colorLightDanger),
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    CCText.subtitle(
                      controller.status,
                      textAlign: TextAlign.center,
                      color: ColorTheme.colorLightDanger,
                      isBold: true,
                    ),
                    SpeedMeterWidget(currentSpeed: controller.currentSpeed),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CCButton.round(
                        'Test Speed Now',
                        isBold: true,
                        borderRadius: 10,
                        backgroundColor: ColorTheme.colorLightDanger,
                        onPressed: controller.getSpeed,
                      ),
                      CCButton.round(
                        'Stop Test Speed',
                        isBold: true,
                        borderRadius: 10,
                        backgroundColor: ColorTheme.colorLightDanger,
                        onPressed: controller.stopTest,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      CCText.subtitle(
                        'Results'.toUpperCase(),
                        isBold: true,
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 30),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 10),
                        child: Wrap(
                          direction: Axis.vertical,
                          spacing: 5,
                          children: [
                            CCText.subtitle(
                              'Server: ${controller.server}',
                            ),
                            CCText.subtitle(
                              'Ping: ${controller.ping}',
                            ),
                            CCText.subtitle(
                              'Download speed: ${controller.downloadSpeed.toStringAsFixed(2)} Mbps',
                            ),
                            CCText.subtitle(
                              'Upload speed: ${controller.uploadSpeed.toStringAsFixed(2)} Mbps',
                            ),
                            CCText.subtitle(
                              'Connection Type: ${controller.connectionType}',
                            ),
                            CCText.subtitle(
                              'User IP: ${controller.ip}',
                            ),
                            CCText.subtitle(
                              'User ISP: ${controller.isp}',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'dart:async';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:speed_checker_plugin/speed_checker_plugin.dart';

class SpeedTestController extends GetxController {
  bool isEnable = false;
  String status = '';
  int ping = 0;
  String server = '';
  String connectionType = '';
  double currentSpeed = 0;
  int percent = 0;
  double downloadSpeed = 0;
  double uploadSpeed = 0;
  String ip = '';
  String isp = '';
  final plugin = SpeedCheckerPlugin();
  late StreamSubscription<SpeedTestResult> subscription;

  Future<void> getIp() async {
    final ipInfo = await plugin.getIpInfo();
    ip = ipInfo['ip']?.toString() ?? '';
    isp = ipInfo['isp']?.toString() ?? 'Unknown';
    update();
  }

  void getSpeed() async {
    // await handleLocationPer();
    // await getIp();
    plugin.startSpeedTest();
    subscription = plugin.speedTestResultStream.listen(
      (event) {
        status = event.status;
        ping = event.ping;
        percent = event.percent;
        currentSpeed = event.currentSpeed;
        downloadSpeed = event.downloadSpeed;
        uploadSpeed = event.uploadSpeed;
        server = event.server;
        connectionType = event.connectionType;
        ip = '';
        isp = '';
        update();
      },
      onDone: () {
        subscription.cancel();
        update();
      },
      onError: (error) {
        status = error.toString();
        subscription.cancel();
        update();
      },
    );
  }

  void stopTest() {
    plugin.stopTest();
    subscription = plugin.speedTestResultStream.listen(
      (event) {
        status = 'Speed test stopped';
        ping = 0;
        percent = 0;
        currentSpeed = 0;
        downloadSpeed = 0;
        uploadSpeed = 0;
        server = '';
        connectionType = '';
        ip = '';
        isp = '';
        update();
      },
      onDone: () => subscription.cancel(),
    );
    ip = '';
    isp = '';
  }

  Future<void> handleLocationPer() async {
    final status = await Permission.location.status;
    if (status.isDenied) {
      isEnable = false;
      await Permission.location.request();
      update();
      if (status.isDenied) {
        await Permission.location.request();
      }
    }
    if (status.isPermanentlyDenied) {
      isEnable = false;
      await openAppSettings();
      update();
    }
    if (status.isGranted) {
      isEnable = true;
      update();
    }
  }
}

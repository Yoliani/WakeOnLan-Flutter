import 'package:ping_discover_network/ping_discover_network.dart';
import 'package:wifi/wifi.dart';
import 'package:wifi_flutter/wifi_flutter.dart';

class Escaner {
  NetworkAddress addrs;

  Future<dynamic> escanear() async {
    final String ip = await Wifi.ip;
    final String subnet = ip.substring(0, ip.lastIndexOf('.'));
    final int port = 80;

    final stream = NetworkAnalyzer.discover(subnet, port);
    stream.listen((NetworkAddress addr) {
      if (addr.exists) {
        print('Found device: ${addr.ip}');
        addrs = addr;
      }
    });
  }

  scan() {
    final networks = WifiFlutter.scanNetworks();
    print(networks);
  }
}

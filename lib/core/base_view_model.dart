import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

abstract class BaseViewModel {
  late BuildContext context;
  final String baseUrl='https://fakestoreapi.com/';
  INetworkManager get networkManager => NetworkManager(options: BaseOptions(baseUrl:baseUrl ));
  void setContext(BuildContext context);
  void init();
}

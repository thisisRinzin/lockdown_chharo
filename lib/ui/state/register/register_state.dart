import 'package:flutter/material.dart';
import 'package:lockdown_chharo/http_client/rest_client.dart';
import 'package:lockdown_chharo/models/dzongkag/dzongkhag.dart';
import 'package:dio/dio.dart';
import 'package:lockdown_chharo/models/dzongkag/dzongkhags.dart';
import 'package:lockdown_chharo/models/service_area/service_area.dart';
import 'package:lockdown_chharo/models/service_area/service_areas.dart';

class RegisterState {
  final client = RestClient(Dio());
  int step = 0;
  List<Dzongkhag> dzongkhags;
  List<ServiceArea> serviceAreas;

  String name;
  String phoneNumber;
  Dzongkhag selectedDzongkhag;

  void nextStep() {
    this.step++;
  }

  void previous() {
    if (step > 0) {
      this.step--;
    }
  }

  void getDzongkhag() async {
    final Dzongkhags allDzongkhag = await client.getDzongkhags();
    dzongkhags = allDzongkhag.dzongkhags;
  }

  void getServiceAreas({@required int dzongkhagId}) async {
    final ServiceAreas allServiceArea =
        await client.getServiceAreas(dzongkhagId: dzongkhagId);
    serviceAreas = allServiceArea.serviceAreas;
  }
}

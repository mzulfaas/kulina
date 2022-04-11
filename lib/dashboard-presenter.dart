import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart';

import 'model/banner-model.dart';

class DashboardPresenter extends GetxController{

  Banner dataBanner = Banner();

  Future<Banner> fetchBanner() async {
    final response = await get(Uri.parse('https://food.mockable.io/v1/banner'));

    if (response.statusCode == 200) {
      print(response.statusCode);
      print(response.body);
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return dataBanner = Banner.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }


  }


}
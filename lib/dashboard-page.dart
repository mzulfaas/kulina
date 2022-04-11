import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kulina/dashboard-presenter.dart';
import 'dart:math' as math;

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  final dashboardPresenter  = Get.put(DashboardPresenter());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dashboardPresenter.fetchBanner();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("FOOD.ID"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.green,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20,top: 10),
                    child: Row(
                      children: const [
                        Icon(Icons.edit_location,color: Colors.white,),
                        SizedBox(width: 10,),
                        Text("Dikirim ke Jakarta Selatan",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.black54,)
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            CarouselSlider(
              options: CarouselOptions(height: 100.0,autoPlay: true, enlargeCenterPage: true,),
              items: dashboardPresenter.dataBanner.data?.map((i) {
                print(i.variant?.name);
                return Builder(
                  builder: (BuildContext context) {
                    if (i.variant!.name=="Top") {
                      return Image.network("${i.media}",);
                    } else {
                      return Container(
                        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                      );
                    }
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 40,),

            Container(
              margin: EdgeInsets.only(left: 20, bottom: 10),
                child: Text("Special di Food.id")),
            CarouselSlider(
              options: CarouselOptions(height: 100.0,autoPlay: true, enlargeCenterPage: true,),
              items: dashboardPresenter.dataBanner.data?.map((i) {
                print(i.variant?.name);
                return Builder(
                  builder: (BuildContext context) {
                    if (i.variant!.name=="Small") {
                      return Image.network("${i.media}",);
                    } else {
                      return Container(
                        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                      );
                    }
                  },
                );
              }).toList(),
            ),

          ],
        ),
      ),
    );
  }
}

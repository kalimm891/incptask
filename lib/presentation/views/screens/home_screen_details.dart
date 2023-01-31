import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:incp/core/theme/style.dart';
import 'package:incp/presentation/views/widget/custom_button.dart';
import 'package:incp/presentation/views/widget/custom_text.dart';

import '../../../core/theme/color.dart';
import '../../../model/user_data.dart';
import '../../getx/controller/user_controller.dart';
import '../widget/common_card.dart';

class HomeScreendetails extends StatefulWidget {
  UserData? user;
  HomeScreendetails({super.key, this.user});

  @override
  State<HomeScreendetails> createState() => _HomeScreendetailsState();
}

class _HomeScreendetailsState extends State<HomeScreendetails> {
  @override
  Widget build(BuildContext context) {
    print(widget.user!.email);
    final userController = Get.find<UserController>();
    userController.getUserData();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text("Details User page"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: white,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            CommonCard(
              color: primary,
              title: text(widget.user!.username),
              trailing: text(widget.user!.email),
              subTitle: text(widget.user!.name),
            ),
            cardWidget(key: "Username", value: widget.user!.username),
            sizedbox(),
            cardWidget(key: "Name", value: widget.user!.name),
            sizedbox(),
            cardWidget(key: "City", value: widget.user!.address!.city),
            sizedbox(),
            cardWidget(key: "Phone", value: widget.user!.phone),
            sizedbox(),
            cardWidget(key: "Company", value: widget.user!.company!.name),
            sizedbox(),
            cardWidget(key: "Company", value: widget.user!.company!.name),
            sizedbox(),
            cardWidget(key: "Zipcode", value: widget.user!.address!.zipcode),
            SizedBox(
              height: 40,
            ),
            CustomButtons(
              onTap: () {
                Navigator.pop(context);
              },
              style: whiteStyle18,
              text: "Back",
              color: primary,
            ),
          ],
        ),
      ),
    );
  }

  Widget text(text) {
    return CustomText(
      text: text,
      style: whiteStyle,
    );
  }

  Widget cardWidget({String? key, String? value}) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: white,
          border: Border.all(color: black, width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text16(
            key ?? '',
          ),
          text16(
            value ?? '',
          )
        ],
      ),
    );
  }

  Widget text16(text) {
    return CustomText(
      text: text,
      style: blackStyle16,
    );
  }

  Widget sizedbox() {
    return SizedBox(
      height: 15,
    );
  }
}

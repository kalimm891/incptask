import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incp/core/theme/color.dart';
import 'package:incp/presentation/views/screens/home_screen_details.dart';

import '../../../core/theme/style.dart';
import '../../getx/controller/user_controller.dart';
import '../widget/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userController = Get.find<UserController>();
    userController.getUserData();
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        centerTitle: true,
        backgroundColor: black,
        title: Text("User Home page"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Obx(() {
            return Expanded(
                child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      crossAxisCount: 2,
                    ),
                    itemCount: userController.usersData.length,
                    itemBuilder: (context, index) {
                      final data = userController.usersData[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreendetails(
                                        user: data,
                                      )));
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 15, top: 5),
                          decoration: BoxDecoration(
                              color: grey400,
                              borderRadius: BorderRadius.circular(15)),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text16("Name"),
                                text(data.name ?? ""),
                                sizedbox(),
                                text16("Email"),
                                text(data.email ?? ""),
                                sizedbox(),
                                text16("Address"),
                                text(data.address!.city ?? ""),
                              ],
                            ),
                          ),
                        ),
                      );
                    }));
          })
        ],
      ),
    );
  }

  Widget text(text) {
    return CustomText(
      text: text,
      style: blackStyle,
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
      height: 10,
    );
  }
}

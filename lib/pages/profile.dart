import 'package:coupon_hunt/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final ValueNotifier<bool> _switchValue = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: kPrimaryColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/notification.svg",
              height: 20,
              width: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 110,
                    width: 100,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/Avatar.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 40,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: kSecondaryColor,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/edit.svg",
                          height: 10,
                          width: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text("Master Yoda",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )),
              Text(
                "Member since 2020",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: SvgPicture.asset(
                  "assets/active_profile_button.svg",
                  height: 24,
                  width: 24,
                ),
                title: const Text("Personal Details",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                onTap: () {},
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: kSecondaryColor,
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  "assets/location.svg",
                  height: 24,
                  width: 24,
                ),
                title: const Text("Address",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                onTap: () {},
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: kSecondaryColor,
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  "assets/verify.svg",
                  height: 24,
                  width: 24,
                ),
                title: const Text("Preferences",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                onTap: () {},
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: kSecondaryColor,
                ),
              ),
              ValueListenableBuilder(
                  valueListenable: _switchValue,
                  builder: (context, _, __) {
                    return ListTile(
                      leading: SvgPicture.asset(
                        "assets/notification-status.svg",
                        height: 24,
                        width: 24,
                      ),
                      title: const Text("Notifications",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                      onTap: () {
                        _switchValue.value = !_switchValue.value;
                      },
                      trailing: Transform.scale(
                        scale: 0.7,
                        child: CupertinoSwitch(
                            thumbColor: kPrimaryColor,
                            trackColor: kAscentColor,
                            activeColor: kSecondaryColor,
                            value: _switchValue.value,
                            onChanged: (value) {
                              _switchValue.value = value;
                            }),
                      ),
                    );
                  }),
              ListTile(
                leading: SvgPicture.asset(
                  "assets/document.svg",
                  height: 24,
                  width: 24,
                ),
                title: const Text("Terms & Conditions",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                onTap: () {},
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: kSecondaryColor,
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  "assets/document.svg",
                  height: 24,
                  width: 24,
                ),
                title: const Text("Privicy Policy",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                onTap: () {},
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: kSecondaryColor,
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  "assets/verify.svg",
                  height: 24,
                  width: 24,
                ),
                title: const Text("Reset Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                onTap: () {},
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: kSecondaryColor,
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  "assets/logout.svg",
                  height: 24,
                  width: 24,
                ),
                title: const Text("Logout",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                onTap: () {},
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: kSecondaryColor,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "ⓒ  ",
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "BeFriend Me 2022",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

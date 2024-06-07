import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pinput/pinput.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Authfile extends StatefulWidget {
  Authfile({super.key});

  @override
  State<Authfile> createState() => _AuthfileState();
}

class _AuthfileState extends State<Authfile> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    final defaultPinTheme = PinTheme(
        width: 56,
        height: 60,
        textStyle: TextStyle(fontSize: 22, color: Colors.black),
        decoration: BoxDecoration(
            color: Colors.teal.shade100,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.transparent)));

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg_3.png'), fit: BoxFit.cover),
        ),
        child: Padding(
            padding: const EdgeInsets.all(60),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    width: 970,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Welcome To ",
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
                            ),
                            Image.asset(
                              'assets/tb_title_logo.png',
                              width: 90,
                            ),
                            Text(
                              "FinTech Platform ",
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/productlogo2.png',
                          width: size.width / 3.8,
                          height: size.height / 3.5,
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    height: double.maxFinite,
                    width: 970,
                    child: Center(
                        child: !isPressed
                            ? Container(
                                width: size.width / 3.4,
                                height: size.height / 1.5,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.withOpacity(0.1),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [

                                    Wrap( crossAxisAlignment:
                                    WrapCrossAlignment.center,
                                      alignment: WrapAlignment.center,
                                      spacing: 5,
                                      runSpacing: 5,
                                      direction: Axis.horizontal,
                                      children: [
                                        SizedBox(width: 30,),
                                        ToggleSwitch(
                                            dividerMargin: 0.3,
                                            dividerColor: Colors.teal.shade300,
                                            borderWidth: 1,
                                            borderColor: [Colors.teal.shade500],
                                            inactiveFgColor: Colors.teal.shade500,
                                            inactiveBgColor: Colors.teal.shade50,
                                            activeFgColor: Colors.teal.shade100,
                                            initialLabelIndex: 0,
                                            totalSwitches: 3,
                                            cornerRadius: 10,
                                            fontSize: 10,
                                            labels: const ['UAT', 'Live', 'DR'],
                                            onToggle: (_) {}),
                                      ],
                                    ),SizedBox(height: 10,),
                                    Image.asset('assets/user.png',width: 60,height: 60,),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      alignment: WrapAlignment.center,
                                      spacing: 5,
                                      runSpacing: 5,
                                      direction: Axis.horizontal,
                                      children: [
                                        SizedBox(
                                            width: 30,
                                            child: Icon(Icons.person)),
                                        SizedBox(
                                          width: size.width / 5,
                                          height: 45,
                                          child: TextField(
                                            cursorColor: Colors.black,
                                            cursorHeight: 15,
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              labelStyle: TextStyle(
                                                color: Colors
                                                    .black, // Change this color to whatever you want
                                              ),
                                              focusColor: Colors.black,
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              hoverColor: Colors.grey.shade100,
                                              suffixIcon:
                                                  Icon(Icons.remove_red_eye),
                                              labelText: "Username",
                                              fillColor: Colors.transparent,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              filled: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      alignment: WrapAlignment.center,
                                      spacing: 5,
                                      runSpacing: 5,
                                      direction: Axis.horizontal,
                                      children: [
                                        SizedBox(
                                          child: Icon(Icons.lock_rounded),
                                          width: 30,
                                        ),
                                        SizedBox(
                                          width: size.width / 5,
                                          height: 45,
                                          child: TextField(
                                            cursorColor: Colors.black,
                                            cursorHeight: 15,
                                            decoration: InputDecoration(
                                              labelStyle: TextStyle(
                                                color: Colors
                                                    .black, // Change this color to whatever you want
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              focusColor: Colors.black,
                                              hoverColor: Colors.grey.shade100,
                                              suffixIcon:
                                                  Icon(Icons.remove_red_eye),
                                              labelText: "Password",
                                              fillColor: Colors.transparent,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              filled: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 50,),
                                    Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      alignment: WrapAlignment.center,
                                      spacing: 5,
                                      runSpacing: 5,
                                      direction: Axis.horizontal,
                                      children: [

                                        IconButton(onPressed: (){}, icon:Icon(Icons.refresh)),
                                        SizedBox(
                                          width: size.width / 6,
                                          height: 45,
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                              Color>(
                                                          Color.fromARGB(255,
                                                              69, 140, 131)),
                                                  foregroundColor:
                                                      MaterialStateProperty.all<
                                                          Color>(Colors.white),
                                                  shape:
                                                      MaterialStateProperty.all<
                                                          RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0), // Change border radius here
                                                    ),
                                                  )),
                                              onPressed: () {
                                                setState(() {
                                                  isPressed = true;
                                                });
                                              },
                                              child: Text("Login")),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: size.height / 8,
                                    ),
                                  ],
                                ),
                              )
                            : Container(
                                width: size.width / 3.4,
                                height: size.height / 1.5,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.withOpacity(0.1),
                                ),
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Wrap(
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        alignment: WrapAlignment.center,
                                        spacing: 3,
                                        runSpacing: 5,
                                        direction: Axis.vertical,
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'OTP Verification',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 30,),
                                          Text(
                                            "Enter the recieve OTP in your number",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18),
                                          ),
                                          SizedBox(height: 30,),
                                          SizedBox(
                                              width: size.width / 5,
                                              height: 45,
                                              child: Pinput(
                                                length: 4,
                                                defaultPinTheme:
                                                    defaultPinTheme,
                                                focusedPinTheme:
                                                    defaultPinTheme.copyWith(
                                                  decoration: defaultPinTheme
                                                      .decoration!
                                                      .copyWith(
                                                    border: Border.all(
                                                      color: Colors.teal,
                                                    ),
                                                  ),
                                                ),
                                                onCompleted: (_) {
                                                  Navigator.of(context)
                                                      .push(MaterialPageRoute(
                                                    builder: (context) =>
                                                        Container(
                                                      height: size.height,
                                                      width: size.width,
                                                      child: Scaffold(),
                                                    ),
                                                  ));
                                                },
                                              )),
                                          SizedBox(height: 90,)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

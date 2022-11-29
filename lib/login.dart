import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(),

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.38),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                prefixIcon: Icon(Icons.email),
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(),
                            obscureText: isHiddenPassword,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: InkWell(
                                  onTap: _togglePasswordVisibility,
                                  child: Icon(isHiddenPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),

                          TextButton(
                            onPressed: () {
                              //Navigator.pushNamed(context, 'home');
                            },

                            child: Text(
                              'Sign In',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(Colors.purple),
                              backgroundColor: MaterialStateProperty.all(Colors.blue),
                              minimumSize: MaterialStateProperty.all(Size(300 , 50))
                            ),
                          ),


                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Text(
                          //       'Sign In',
                          //       style: TextStyle(
                          //           fontSize: 27, fontWeight: FontWeight.w700),
                          //     ),
                          //
                          //     CircleAvatar(
                          //       radius: 30,
                          //       backgroundColor: Color(0xff4c505b),
                          //       child: IconButton(
                          //           color: Colors.white,
                          //           onPressed: () {},
                          //           icon: Icon(
                          //             Icons.arrow_forward,
                          //           )),
                          //     )
                          //   ],
                          // ),

                          SizedBox(
                            height: 10,
                          ),

                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            },
                            child: Text(
                              'Sign Up Here',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue,
                                  fontSize: 20),
                            ),
                            style: ButtonStyle(),
                          ),

                          SizedBox(
                            height: 30,
                          ),

                          Text(
                            'Copyright 2022 \u00A9 All Rights Reserved',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16),
                          )
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     TextButton(
                          //       onPressed: () {
                          //         Navigator.pushNamed(context, 'register');
                          //       },
                          //       child: Text(
                          //         'Sign Up',
                          //         textAlign: TextAlign.center,
                          //         style: TextStyle(
                          //             decoration: TextDecoration.underline,
                          //             color: Color(0xff4c505b),
                          //             fontSize: 18),
                          //       ),
                          //       style: ButtonStyle(),
                          //     ),
                          //     // TextButton(
                          //     //     onPressed: () {},
                          //     //     child: Text(
                          //     //       'Forgot Password',
                          //     //       style: TextStyle(
                          //     //         decoration: TextDecoration.underline,
                          //     //         color: Color(0xff4c505b),
                          //     //         fontSize: 18,
                          //     //       ),
                          //     //     )),
                          //   ],
                          // )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _togglePasswordVisibility(){
    isHiddenPassword = !isHiddenPassword;
    setState(() {});
  }
}

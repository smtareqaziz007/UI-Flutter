import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  bool isHiddenPassword = true;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/register.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [

                          TextField(
                            style: TextStyle(color: Colors.black , height: 0.7),
                            decoration: InputDecoration(

                                fillColor: Colors.grey.shade200,
                                filled: true,
                                prefixIcon: Icon(Icons.person),

                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blue.shade400,
                                  ),
                                ),
                                hintText: "First Name",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          TextField(
                            style: TextStyle(color: Colors.black , height: 0.7),
                            decoration: InputDecoration(

                                fillColor: Colors.grey.shade200,
                                filled: true,
                                prefixIcon: Icon(Icons.person),

                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blue.shade400,
                                  ),
                                ),
                                hintText: "Last Name",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.black , height: 0.7),
                            decoration: InputDecoration(

                                fillColor: Colors.grey.shade200,
                                filled: true,
                                prefixIcon: Icon(Icons.email),

                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blue.shade400,
                                  ),
                                ),
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),


                          TextField(
                            style: TextStyle(color: Colors.black , height: 0.7),
                            obscureText: isHiddenPassword,
                            decoration: InputDecoration(

                                fillColor: Colors.grey.shade200,
                                filled: true,
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: InkWell(
                                  onTap: _togglePasswordVisibility,
                                  child: Icon(isHiddenPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off
                                  ),
                                ),

                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blue.shade400,
                                  ),
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),

                          SizedBox(
                            height: 10,
                          ),


                          TextField(
                            style: TextStyle(color: Colors.black , height: 0.7),
                            obscureText: isHiddenPassword,
                            decoration: InputDecoration(

                                fillColor: Colors.grey.shade200,
                                filled: true,
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: InkWell(
                                  onTap: _togglePasswordVisibility,
                                  child: Icon(isHiddenPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off
                                  ),
                                ),

                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blue.shade400,
                                  ),
                                ),
                                hintText: "Confirm Password",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),


                          // SizedBox(
                          //   height: 1,
                          // ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              Checkbox(
                                  value: isChecked,
                                  activeColor: Colors.green,
                                  onChanged: (newBool){
                                    setState(() {
                                      isChecked = newBool;
                                    });
                                  }
                              ),

                              Text(
                                'I accept the'
                              ),

                              TextButton(
                                onPressed: () {
                                  //Navigator.pushNamed(context, 'login');
                                },
                                child: Text(
                                  'Terms',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue,
                                      fontSize: 12),
                                ),
                                style: ButtonStyle(),
                              ),

                              Text(
                                  'and'
                              ),


                              TextButton(
                                onPressed: () {
                                  //Navigator.pushNamed(context, 'login');
                                },
                                child: Text(
                                  'Policy',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue,
                                      fontSize: 12),
                                ),
                                style: ButtonStyle(),
                              ),

                            ],
                          ),


                          TextButton(
                            onPressed: () {
                              //Navigator.pushNamed(context, 'home');
                            },

                            child: Text(
                              'Sign Up',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.purple),
                                backgroundColor: MaterialStateProperty.all(Colors.blue),
                                minimumSize: MaterialStateProperty.all(Size(300 , 30))
                            ),
                          ),

                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Text(
                          //       'Sign Up',
                          //       style: TextStyle(
                          //           color: Colors.black,
                          //           fontSize: 27,
                          //           fontWeight: FontWeight.w700),
                          //     ),
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

                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'login');
                            },
                            child: Text(
                              'Already registered? Sign in',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue,
                                  fontSize: 14),
                            ),
                            style: ButtonStyle(),
                          ),

                          SizedBox(
                            height: 1
                          ),

                          Text(
                            'Copyright 2022 \u00A9 All Rights Reserved',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12),
                          )

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

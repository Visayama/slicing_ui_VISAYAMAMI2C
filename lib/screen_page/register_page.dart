import 'dart:js_util';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui_visayamami2c/screen_page/login_page.dart';
import 'package:slicing_ui_visayamami2c/screen_page/welcome_page.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  @override
  Widget build(BuildContext context) {

    bool? isChecked = false; // Mendeklarasikan varBool sebagai bool dan memberikan nilai awal

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 45,
                decoration: BoxDecoration(
                    color: Color(0xfffF2F2F2),
                    borderRadius: BorderRadius.circular(50)
                ),
                alignment: Alignment.topLeft,
                child: Center(
                  child: IconButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)
                    => WelcomePage()
                    ));},
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 1,),
                    Image.asset('gambar/logo_udaskin.png'),
                    SizedBox(height: 1,),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          hintText: 'Full Name'
                      ),
                    ),

                    SizedBox(height: 9,),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          hintText: 'Email'
                      ),
                    ),

                    SizedBox(height: 9,),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          hintText: 'Password'
                      ),
                    ),

                    SizedBox(height: 9,),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          hintText: 'Confirm Password'
                      ),
                    ),

                    SizedBox(height: 9,),
                    Row(
                      children: [
                      Checkbox(
                      checkColor: Colors.white,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),

                        Text(
                          'I agree with the Term and Condition and the Provace Policy',
                          style: TextStyle(
                            color: Colors.grey,
                            // Ganti gaya teks sesuai kebutuhan, misalnya beri tebal jika diperlukan
                            fontWeight: FontWeight.normal,
                            // Ganti ukuran font sesuai kebutuhan
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),


                    SizedBox(height: 10,),
                    MaterialButton(onPressed: (){},
                      padding: EdgeInsets.symmetric(horizontal: 175, vertical: 15),
                      color: Color(0xff333333),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)
                      ),
                      child: Text('Sign Up' ,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('------------------------------------ or ----------------------------------',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    SizedBox(height: 10,),
                    MaterialButton(onPressed: (){},
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('gambar/logo_google.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(width: 10,),
                          Text('Sign in with Google',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    RichText(
                      text: TextSpan(
                          text: "Already have an account?  ",
                          style: TextStyle(
                              color: Colors.grey
                          ),
                          children: [
                            TextSpan(
                                text: 'Login',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)
                                    => PageLogin()
                                    ));
                                  },
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold
                                )
                            )
                          ]
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

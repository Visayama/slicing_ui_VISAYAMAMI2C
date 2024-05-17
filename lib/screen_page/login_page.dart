import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui_visayamami2c/screen_page/register_page.dart';
import 'package:slicing_ui_visayamami2c/screen_page/welcome_page.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {

    bool varBool = true;

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
                    SizedBox(height: 10,),
                    Image.asset('gambar/logo_udaskin.png'),
                    SizedBox(height: 60,),
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

                    SizedBox(height: 15,),
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

                    SizedBox(height: 40,),
                    MaterialButton(onPressed: (){},
                      padding: EdgeInsets.symmetric(horizontal: 175, vertical: 15),
                      color: Color(0xff333333),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: Text('Login' ,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16
                      ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text('------------------------------------ or ----------------------------------',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    SizedBox(height: 20,),
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
                          SizedBox(width: 20,),
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
                    SizedBox(height: 20,),
                    RichText(
                      text: TextSpan(
                          text: "Don't have an account?  ",
                          style: TextStyle(
                              color: Colors.grey
                          ),
                          children: [
                            TextSpan(
                                text: 'Sign Up',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)
                                    => PageRegister()
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

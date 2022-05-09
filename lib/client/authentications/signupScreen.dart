import 'package:flutter/material.dart';
import 'package:ubelaw_client/client/authentications/registration2.dart';
import '../../utilities/size_config.dart';
import '../../widgets/defaultButton.dart';
import '../../widgets/edittexts.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController fnameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController conPassController = new TextEditingController();

@override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children:  [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/images/logo1.png"),
              ),
              const  SizedBox(height: 10),
              const Text("Register as a Client",style: TextStyle(fontSize: 26,color: Colors.black54,fontWeight: FontWeight.bold),),


              Builder(
                builder: (context) => Form(
                  key: _formKey,
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: buildTextFormField(controller: fnameController,label: "First Name",hint: "Enter your First Name",svg: "assets/icons/User.svg",textInputType: TextInputType.name),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: buildTextFormField(controller: emailController,label: "Email Address",hint: "Enter your Email Address",svg: "assets/icons/Lock.svg",textInputType: TextInputType.emailAddress),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: buildTextFormField(
                            controller: passwordController,obscureText:true,label: "Password",hint: "Enter your First Name Password",svg: "assets/icons/Lock.svg",textInputType: TextInputType.text),
                      ),

                      SizedBox(height: getProportionateScreenHeight(10)),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: buildTextFormField(controller: conPassController,label: "Confirm Password",hint: "Enter your Password",svg: "assets/icons/User.svg",textInputType: TextInputType.name),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),

                      SizedBox(height: getProportionateScreenHeight(20)),
                      defaultButton(true,"Next",(){ Navigator.push(context, MaterialPageRoute(builder: (c)=>Registration2()));}),

                      SizedBox(height: getProportionateScreenHeight(40)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}

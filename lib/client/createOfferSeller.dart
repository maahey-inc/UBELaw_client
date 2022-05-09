import 'package:flutter/material.dart';
import '../widgets/defaultButton.dart';
import '../widgets/edittexts.dart';
import 'main_screen.dart';
class CreateOfferSeller extends StatefulWidget {
  const CreateOfferSeller({Key? key}) : super(key: key);

  @override
  State<CreateOfferSeller> createState() => _CreateOfferSellerState();
}

class _CreateOfferSellerState extends State<CreateOfferSeller> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController offerController = new TextEditingController();
  TextEditingController descriptionController = new TextEditingController();
  TextEditingController priceController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children:  [
              const SizedBox(height: 10),

              const  SizedBox(height: 10),
              const Text("Create Offer",style: TextStyle(fontSize: 26,color: Colors.black54,fontWeight: FontWeight.bold),),



              Builder(
                builder: (context) => Form(
                  key: _formKey,
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: buildTextFormField(controller: offerController,label: "Offer Name",hint: "Enter your Offer Name",svg: "assets/icons/package.svg",textInputType: TextInputType.emailAddress),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: buildTextFormField(
                            controller: descriptionController,obscureText:false,label: "Description",hint: "Enter Description",svg: "assets/icons/description.svg",textInputType: TextInputType.text,maxLine: 6),
                      ),
                      SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                        child: buildTextFormField(controller: priceController,label: "Enter Price",hint: "Enter your Price",svg: "assets/icons/price.svg",textInputType: TextInputType.number),
                      ),
                      SizedBox(height: 10),


                      SizedBox(height: 20),
                      defaultButton(true,"Send",(){
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => MainScreen()),
                                (Route<dynamic> route) => false);

                      }),

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

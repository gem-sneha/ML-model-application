import 'package:dairyapp/core/components/colors.dart';
import 'package:dairyapp/core/components/button_widget.dart';
import 'package:dairyapp/core/components/text_form_field_widget.dart';
import 'package:dairyapp/core/components/text_widget.dart';
import 'package:dairyapp/features/authentication/presentation/pages/user_login.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController fullNameController = TextEditingController();

  final TextEditingController addressController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  bool consentToKYC = false;

  @override
  Widget build(BuildContext context) {
    double baseWidth = MediaQuery.of(context).size.width;
    double pageRatio = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('KYC Form'),
      // ),
      backgroundColor: const Color(0xff2C9EE0),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 230 * pageRatio,
            width: baseWidth,
            color: const Color(0xff2C9EE0),
            child: Image.asset(
              'assets/images/onboarding_logo.png',
              height: 180 * pageRatio,
              width: 180 * pageRatio,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: ColorConstants.ThirdSecondaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Padding(
              padding: EdgeInsets.all(10 * pageRatio),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const CustomText(
                    text: 'Complete Profile Details',
                    size: 20,
                    color: ColorConstants.SecondaryColor,
                    weight: FontWeight.w700,
                  ),
                  const SizedBox(height: 16),
                  const TextFormFieldWidget(
                    hintText: "Enter Name",
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(height: 16),
                  const TextFormFieldWidget(
                    hintText: "Enter Contact Number",
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(height: 16),
                  const TextFormFieldWidget(
                    hintText: "Email Address",
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(height: 16),
                  const TextFormFieldWidget(
                    hintText: "Flat, House No, Building",
                    textInputType: TextInputType.text,
                  ),
                  const TextFormFieldWidget(
                    hintText: "Street name, Area",
                    textInputType: TextInputType.text,
                  ),
                  const TextFormFieldWidget(
                    hintText: "Landmark",
                    textInputType: TextInputType.text,
                  ),
                  const TextFormFieldWidget(
                    hintText: "City/District",
                    textInputType: TextInputType.text,
                  ),
                  const TextFormFieldWidget(
                    hintText: "State",
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserLogin(),
                        ),
                      );
                      // if (consentToKYC) {

                      // } else {

                      // }
                    },
                    child: CustomButton(
                      text: "Next",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

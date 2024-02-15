import 'package:dairyapp/core/components/colors.dart';
import 'package:dairyapp/core/components/button_widget.dart';
import 'package:dairyapp/core/components/text_form_field_widget.dart';
import 'package:dairyapp/core/components/text_widget.dart';
import 'package:dairyapp/features/authentication/presentation/pages/user_login.dart';
import 'package:flutter/material.dart';

class KYCForm extends StatefulWidget {
  @override
  _KYCFormState createState() => _KYCFormState();
}

class _KYCFormState extends State<KYCForm> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController nationalityController = TextEditingController();
  final TextEditingController maritalStatusController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController idTypeController = TextEditingController();
  final TextEditingController idNumberController = TextEditingController();
  final TextEditingController issueDateController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
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
                    text: 'Personal Information',
                    size: 18,
                    color: ColorConstants.SecondaryColor,
                    weight: FontWeight.w500,
                  ),
                  const SizedBox(height: 16),
                  const TextFormFieldWidget(
                    hintText: "Enter Name",
                    textInputType: TextInputType.text,
                  ),
                  const TextFormFieldWidget(
                    hintText: "Nationality",
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),
                  const CustomText(
                    text: 'Contact Information',
                    size: 18,
                    color: ColorConstants.SecondaryColor,
                    weight: FontWeight.w500,
                  ),
                  const SizedBox(height: 16),
                  const TextFormFieldWidget(
                    hintText: "Residential Address",
                    textInputType: TextInputType.text,
                  ),
                  const TextFormFieldWidget(
                    hintText: "Contact Number",
                    textInputType: TextInputType.text,
                  ),
                  const TextFormFieldWidget(
                    hintText: "Email Address",
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),
                  const CustomText(
                    text: 'Identification Details',
                    size: 18,
                    color: ColorConstants.SecondaryColor,
                    weight: FontWeight.w500,
                  ),
                  const SizedBox(height: 16),
                  const TextFormFieldWidget(
                    hintText: "Adhaar Number",
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Checkbox(
                        value: consentToKYC,
                        onChanged: (value) {
                          setState(() {
                            consentToKYC = value ?? false;
                          });
                        },
                      ),
                      const SizedBox(height: 20),
                      const CustomText(
                        text: 'I consent to the KYC process',
                        size: 14,
                        color: ColorConstants.SecondaryColor,
                        weight: FontWeight.w300,
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
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
                    child: CustomButton(text: "Next", ),
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

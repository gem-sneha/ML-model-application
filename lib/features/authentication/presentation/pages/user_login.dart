

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dairyapp/core/blocs/sendOtpBloc/send_otp_bloc.dart';
import 'package:dairyapp/core/blocs/sendOtpBloc/send_otp_event.dart';
import 'package:dairyapp/core/blocs/sendOtpBloc/send_otp_state.dart';
import 'package:dairyapp/core/components/button_widget.dart';
import 'package:dairyapp/core/components/colors.dart';
import 'package:dairyapp/core/components/text_form_field_widget.dart';
import 'package:dairyapp/core/components/text_widget.dart';
import 'package:dairyapp/features/authentication/domain/model/send_otp_request_model.dart';

class UserLogin extends StatefulWidget {
  UserLogin({Key? key}) : super(key: key);

  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final _formfield = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  late SendOTPBloc sendOTPBloc;

  @override
  void initState() {
    super.initState();
    sendOTPBloc = BlocProvider.of<SendOTPBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF2C9EE0),
        child: SingleChildScrollView(
          child: Form(
            key: _formfield,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset("assets/images/dairy_go_logo.png"),
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, bottom: 20),
                        child: Image.asset("assets/images/Smartphone.png"),
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text: 'Login with Mobile Number',
                        size: 20,
                        color: ColorConstants.SecondaryColor,
                        weight: FontWeight.w600,
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                        child: CustomText(
                          text:
                              'We will send you a One Time Password on your phone number',
                          size: 14,
                          weight: FontWeight.w500,
                          color: ColorConstants.SecondaryColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormFieldWidget(
                        hintText: 'Enter your mobile number (+91)',
                        controller: phoneController,
                      ),
                      SizedBox(height: 20),
                      BlocConsumer<SendOTPBloc, SendOTPState>(
                        listener: (context, state) {
                          if (state is SendOTPError) {
                          
                          } else if (state is SendOTPSuccess) {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              'verify-otp',
                              (route) => false,
                              arguments: phoneController.text.toString(),
                            );
                          }
                        },
                        builder: (context, state) {
                          if (state is SendOTPLoading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return InkWell(
                            onTap: () {
                              SendOTPRequestModel model = SendOTPRequestModel(
                                number: int.parse(phoneController.text),
                              );
                              sendOTPBloc.add(SendOTPRequestEvent(model));
                            },
                            child: const CustomButton(text: 'Get OTP'),
                          );
                        },
                      ),
                      const SizedBox(height: 50),
                      const CustomText(
                        text: 'or Login with',
                        size: 14,
                        color: ColorConstants.SecondaryColor,
                        weight: FontWeight.w400,
                      ),
                      Container(
                        width: 120,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            // Add logic for G+ login
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text('G+',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

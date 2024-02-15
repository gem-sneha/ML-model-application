import 'package:dairyapp/core/blocs/sendOtpBloc/send_otp_bloc.dart';
import 'package:dairyapp/core/blocs/verifyOtpBloc/verify_otp_bloc.dart';
import 'package:dairyapp/core/cubits/getCategoryCubit/get_category_cubit.dart';
import 'package:dairyapp/features/authentication/domain/repository/send_otp_repository.dart';
import 'package:dairyapp/features/authentication/domain/repository/verify_otp_repository.dart';
import 'package:dairyapp/features/dashboard/domain/repositories/get_category_repository.dart';
import 'package:dairyapp/features/dashboard/presentation/pages/catalog.dart';
import 'package:dairyapp/features/authentication/presentation/pages/get_started.dart';
import 'package:dairyapp/features/authentication/presentation/pages/otp_verification.dart';
import 'package:dairyapp/features/authentication/presentation/pages/user_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouterClass {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case 'getting-started':
        return MaterialPageRoute(builder: (_) => const GetStartedPage());
      case 'send-otp':
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => SendOTPBloc(SendOTPRepository()),
                  child: UserLogin(),
                ));
     
      case 'verify-otp':
        final phoneNumber = routeSettings.arguments as String?;
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) =>
                      VerifyOTPBloc(VerifyOTPRepository()),
                  child: EnterOtpPage(phnumber: phoneNumber!,),
                ));
      case 'catalog-screen':
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) =>
                      GetCategoryCubit(GetCategoryRepository()),
                  child: CatalogMain(),
                ));

      default:
        return MaterialPageRoute(builder: (_) => const GetStartedPage());
    }
  }
}

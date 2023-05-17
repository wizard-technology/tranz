import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tranzhouse/Pages/Client/Main%20Page/main_page.dart';
import 'package:tranzhouse/Widgets/TextField/textfield_widget.dart';

import '../../Theme/theme.dart';
import '../../Widgets/Buttons/request_button.dart';
import '../../Widgets/Other/app_spacer.dart';
import '../../Widgets/Text/text_widget.dart';

class VerifyPhoneNumberPage extends StatefulWidget {
  const VerifyPhoneNumberPage({super.key});
  static const String routeName = '/verify_phone_number';

  @override
  State<VerifyPhoneNumberPage> createState() => _VerifyPhoneNumberPageState();
}

class _VerifyPhoneNumberPageState extends State<VerifyPhoneNumberPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSpacer.appBarHeight(),
              AppSpacer.p20(),
              TextWidget(
                "Verify Phone Number",
                style: TextWidget.textStyleCurrent.copyWith(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              AppSpacer.p4(),
              TextWidget(
                "You will receive an SMS verification that may apply message and data rates",
                style: TextWidget.textStyleCurrent.copyWith(
                  fontWeight: FontWeight.w400,
                  color: ColorPalette.greyText,
                ),
              ),
              AppSpacer.p20(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  6,
                  (index) => const Expanded(
                    child: TextFieldWidget(
                      constraints: BoxConstraints(
                        maxHeight: 50,
                        maxWidth: 50,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              RequestButtonWidget(
                width: double.infinity,
                onPressed: () async {
                  await Future.delayed(
                    const Duration(milliseconds: 500),
                    () {
                      Get.toNamed(ClientMainPage.routeName);
                    },
                  );
                },
                text: "Continue",
              ),
              AppSpacer.p32(),
            ],
          ),
        ),
      ),
    );
  }
}

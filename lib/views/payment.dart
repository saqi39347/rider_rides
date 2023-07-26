import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rides_driver_app/utils/custom_navigator.dart';

import '../utils/app_colors.dart';
import '../widgets/green_intro_widget.dart';
import 'add_payment_card_screen.dart';

class PaymentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PaymentScreenState();
  }
}

class PaymentScreenState extends State<PaymentScreen> {
  String cardNumber = '5555 55555 5555 4444';
  String expiryDate = '12/25';
  String cardHolderName = 'Osama Qureshi';
  String cvvCode = '123';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.7),
        width: 2.0,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        // height: Get.height,
        child: Stack(
          children: <Widget>[
            greenIntroWidgetWithoutLogos(title: 'My Card'),
            Positioned(
                top: 120,
                left: 0,
                right: 0,
                bottom: 80,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (ctx, i) {
                    String cardNumber = '';
                    String expiryDate = '';
                    String cardHolderName = '';
                    String cvvCode = '';

                    try {
                      cardNumber ='number';
                    } catch (e) {
                      cardNumber = '';
                    }

                    try {
                      expiryDate =
                         'expiry';
                    } catch (e) {
                      expiryDate = '';
                    }

                    try {
                      cardHolderName ='name';
                    } catch (e) {
                      cardHolderName = '';
                    }

                    try {
                      cvvCode ='cvv';
                    } catch (e) {
                      cvvCode = '';
                    }

                    return CreditCardWidget(
                      cardBgColor: Colors.black,
                      cardNumber: cardNumber,
                      expiryDate: expiryDate,
                      cardHolderName: cardHolderName,
                      cvvCode: cvvCode,
                      bankName: '',
                      showBackView: isCvvFocused,
                      obscureCardNumber: true,
                      obscureCardCvv: true,
                      isHolderNameVisible: true,
                      isSwipeGestureEnabled: true,
                      onCreditCardWidgetChange:
                          (CreditCardBrand creditCardBrand) {},
                    );
                  },
                  // itemCount: authController.userCards.length,
                )),
            Positioned(
                bottom: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Add new card",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.appThemeColor),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                     navigate(context, AddPaymentCardScreen());
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      backgroundColor: AppColors.appThemeColor,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

import 'package:Invoice/constants.dart';
import 'package:flutter/material.dart';

import 'invoice_body.dart';

class Invoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenConfig.init(context);
    return Column(
      children: [invoiceHeader(), InvoiceBody()],
    );
  }

  Widget invoiceHeader() {
    return Container(
      width: ScreenConfig.deviceWidth,
      height: ScreenConfig.getProportionalHeight(374),
      color: Color(0xFF4D4F52),
      padding: EdgeInsets.only(
          top: ScreenConfig.getProportionalHeight(50),
          left: ScreenConfig.getProportionalWidth(40),
          right: ScreenConfig.getProportionalWidth(40)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Invoice",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenConfig.getProportionalHeight(56)),
              ),
              SizedBox(
                height: ScreenConfig.getProportionalHeight(20),
              ),
              topHeaderText("#20/07/1203"),
              SizedBox(
                height: ScreenConfig.getProportionalHeight(20),
              ),
              // TODO: form get actual date and format it accondingly
              topHeaderText("04 October 2020"),
            ],
          ),
          SizedBox(
            height: ScreenConfig.getProportionalHeight(20),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/icons/icons8-receipt.png",
                    height: ScreenConfig.getProportionalHeight(78),
                  ),
                  addressColumn()
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Column addressColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Delivery address",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "KK 234 rd 23 st",
        ),
        SizedBox(
          height: 10,
        ),
        Text("Kimihurura")
      ],
    );
  }

  Text topHeaderText(String label) {
    return Text(label,
        style: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontSize: ScreenConfig.getProportionalHeight(23)));
  }
}

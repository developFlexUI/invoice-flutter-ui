import 'package:Invoice/constants.dart';
import "package:flutter/material.dart";

class InvoiceBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var totalAmount = 64;
    double height =
        ScreenConfig.deviceHeight - ScreenConfig.getProportionalHeight(374);
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(
          horizontal: ScreenConfig.getProportionalWidth(40)),
      color: iPrimarryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: ScreenConfig.getProportionalHeight(27),
            ),
            addItemAction(),
            SizedBox(
              height: ScreenConfig.getProportionalHeight(40),
            ),
            Column(
                children: List.generate(
              demoData.length,
              (index) => Column(
                children: [
                  invoiceItem(
                      demoData[index]["quantity"],
                      demoData[index]["imagePath"],
                      demoData[index]["price"],
                      demoData[index]["itemDesc"]),
                  SizedBox(
                    height: ScreenConfig.getProportionalHeight(24),
                  )
                ],
              ),
            )),
            invoiceTotal(totalAmount),
            SizedBox(
              height: ScreenConfig.getProportionalHeight(56),
            ),
            FlatButton(
              color: iAccentColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: SizedBox(
                height: ScreenConfig.getProportionalHeight(80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.file_download),
                    SizedBox(
                      width: ScreenConfig.getProportionalWidth(21),
                    ),
                    Text(
                      "Download now",
                      style: TextStyle(
                          fontSize: ScreenConfig.getProportionalHeight(27),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  Row invoiceTotal(int totalAmount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Text(
              "Total: ",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenConfig.getProportionalHeight(32)),
            ),
            SizedBox(
              width: ScreenConfig.getProportionalWidth(50),
            ),
            Text(
              "\$$totalAmount",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenConfig.getProportionalHeight(32)),
            )
          ],
        )
      ],
    );
  }

  Container invoiceItem(
      int quantity, String imagePath, int price, String itemDesc) {
    int totalValue = quantity * price;

    return Container(
      height: ScreenConfig.getProportionalHeight(170),
      padding: EdgeInsets.symmetric(
          horizontal: ScreenConfig.getProportionalWidth(27)),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 11),
                blurRadius: 11,
                color: Colors.black.withOpacity(0.06))
          ],
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            quantity.toString(),
            style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.bold),
          ),
          Image.asset(imagePath),
          Text(
            "\$$price",
            style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: ScreenConfig.getProportionalWidth(145),
            child: Text(
              itemDesc,
              style: TextStyle(color: Colors.black),
            ),
          ),
          Text(
            "\$$totalValue",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Row addItemAction() {
    return Row(
      children: [
        Text("Items",
            style: TextStyle(
                color: Colors.black,
                fontSize: ScreenConfig.getProportionalHeight(30))),
        SizedBox(
          width: ScreenConfig.getProportionalWidth(50),
        ),
        FlatButton(
          color: iAccentColor2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          child: Row(
            children: [Icon(Icons.add), Text("Add items")],
          ),
          onPressed: () {},
        )
      ],
    );
  }
}

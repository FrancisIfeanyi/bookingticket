import 'package:bookingticket/screens/ticket_view.dart';
import 'package:bookingticket/utils/app_info_list.dart';
import 'package:bookingticket/utils/app_layout.dart';
import 'package:bookingticket/utils/app_style.dart';
import 'package:bookingticket/widgets/column_layout.dart';
import 'package:bookingticket/widgets/layout_builder_widget.dart';
import 'package:bookingticket/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              'Tickets',
              style: Styles.headLineStyle,
            ),
            Gap(AppLayout.getHeight(20)),
            TicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(15),
              ),
              child: Ticket_View(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            SizedBox(height: 1),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: 15), //help to maintain with uppercontainer width
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          alignment: CrossAxisAlignment.start,
                          firstText: 'Flutter DB',
                          secondText: 'Passenger'),
                      AppColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          firstText: '5221 34567899',
                          secondText: 'Passport'),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  AppLayoutBuilder(
                    sections: 15,
                    isColor: false,
                    width: 5,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          alignment: CrossAxisAlignment.start,
                          firstText: '6579102 332 48595',
                          secondText: 'Number of E-ticket'),
                      AppColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          firstText: 'B2SG28',
                          secondText: 'Booking Code'),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  AppLayoutBuilder(
                    sections: 15,
                    isColor: false,
                    width: 5,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/visa.png',
                                scale: 10,
                              ),
                              Text('*** 1039', style: Styles.headLineStyle3),
                            ],
                          ),
                          Gap(5),
                          Text(
                            'Payment Method',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      AppColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          firstText: '\$289.99',
                          secondText: 'Price'),
                    ],
                  ),
                  SizedBox(height: 1),
                  Gap(AppLayout.getHeight(20)),
                ],
              ),
            ),
            SizedBox(height: 1),
            // Bar Code design
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              margin: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Container(
                // margin: EdgeInsets.all(15),
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(14)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/martinovovo',
                    drawText: false,
                    color: Styles.textColor,
                    width: double.maxFinite,
                    height: 70,
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(15),
              ),
              child: Ticket_View(
                ticket: ticketList[0],
              ),
            ),
          ],
        ),
        Positioned(
          left: 22,
          top: 297,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)),
            child: CircleAvatar(
              maxRadius: 6,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        Positioned(
          right: 22,
          top: 297,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)),
            child: CircleAvatar(
              maxRadius: 6,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
      ]),
    );
  }
}

import 'package:bookingticket/utils/app_layout.dart';
import 'package:bookingticket/utils/app_style.dart';
import 'package:bookingticket/widgets/double_text_widget.dart';
import 'package:bookingticket/widgets/icon_text_widget.dart';
import 'package:bookingticket/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are\nYou Looking For?',
            style:
                Styles.headLineStyle.copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          TicketTabs(firstTab: 'Airline Tickets', secondTab: 'Hotels'),
          Gap(AppLayout.getHeight(25)),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(18)),
          AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(18),
                horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
                color: Color(0xD91130CE),
                borderRadius: BorderRadius.circular(
                  AppLayout.getWidth(10),
                )),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle
                    .copyWith(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          AppDoubleText(bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(425),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/sit.jpg'))),
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Text(
                      '20% discount on the early booking of this flight. Don\'t miss out this chance',
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(184),
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18))),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getWidth(15),
                            horizontal: AppLayout.getHeight(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(15)),
                            Text(
                              'Take the Survey about our \nServices and get Discounts',
                              style: Styles.headLineStyle2.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -40,
                        right: -45,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: Color(0xFF189999))),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(190),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(15)),
                      color: Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take Love',
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(8)),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(text: '😍', style: TextStyle(fontSize: 30)),
                          TextSpan(text: '🥰', style: TextStyle(fontSize: 50)),
                          TextSpan(text: '🤩', style: TextStyle(fontSize: 30)),
                        ]))
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

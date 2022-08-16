import 'package:bookingticket/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class TicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketTabs({Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        // ignore: sort_child_properties_last
        child: Row(
          children: [
            //airline tickets
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular((AppLayout.getHeight(50)))),
                  color: Colors.white),
              child: Center(
                child: Text(firstTab),
              ),
            ),
            //hotels
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular((AppLayout.getHeight(50)))),
                  color: Colors.transparent),
              child: Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              (AppLayout.getHeight(50)),
            ),
            color: Color(0xFFF4F6FD)),
      ),
    );
  }
}

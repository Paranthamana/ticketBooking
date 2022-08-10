import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketsTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketsTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
            color: const Color(0xFFF4F6FD),
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50))
        ),
        child: Row(
          children: [
                    /*
                      airline tickets container
                    */
            Container(
              width: size.width*.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50)))
              ),
              child: Center(child: Text(firstTab)),
            ),

                    /*
                    ---hotel booking
                    */
            Container(
              width: size.width*.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50)))
              ),
              child: Center(child: Text(secondTab)),
            )
          ],
        ),
      ),
    );
  }
}

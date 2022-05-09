import 'package:flutter/material.dart';
import 'package:ubelaw_client/client/orders/clientOrderCancelled.dart';
import 'package:ubelaw_client/client/orders/clientOrderCompleted.dart';
import 'package:ubelaw_client/client/orders/clientOrderOngoing.dart';
import 'package:ubelaw_client/client/orders/clientOrderRequest.dart';
class OrderTab extends StatefulWidget {
  const OrderTab({Key? key}) : super(key: key);

  @override
  State<OrderTab> createState() => _OrderTabState();
}

class _OrderTabState extends State<OrderTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                  child: AppBar(
                    backgroundColor: Colors.black54,
                    bottom: const TabBar(
                      unselectedLabelColor: Colors.white54,
                      labelColor: Colors.white,
                      isScrollable: true,
                      tabs: [
                        Tab(
                          child: Text(
                            "Request",
                            style: TextStyle(
                                color: Colors.white,
                                ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Open",
                            style: TextStyle(
                                color: Colors.white,

                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Completed",
                            style: TextStyle(
                                color: Colors.white,

                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Cancelled",
                            style: TextStyle(
                                color: Colors.white,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // create widgets for each tab bar here
                const Expanded(
                  child: TabBarView(
                    children: [
                      // first tab bar view widget

                      ClientOrderRequest(),
                      ClientOrderOpen(),
                      ClientOrderCompleted(),
                      ClientOrderCancelled(),

                      // second tab bar viiew widget

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

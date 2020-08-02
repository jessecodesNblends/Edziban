import 'package:edziban/app/presentation/widgets/custom_header.dart';
import 'package:flutter/material.dart';

import 'add_to_cart.dart';
import 'done_order.dart';
import 'tracking.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<CartScreen> with TickerProviderStateMixin {
  TabController _tabController;
  final List<Map<String, String>> foods = [
    {
      'name': 'Rice and meat',
      'price': '130.00',
      'rate': '4.8',
      'clients': '150',
      'image': 'images/plate-003.png'
    },
    {
      'name': 'Vegan food',
      'price': '400.00',
      'rate': '4.2',
      'clients': '150',
      'image': 'images/plate-007.png'
    },
  ];

  @override
  void initState() {
    this._tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Column(
        children: <Widget>[
          CustomHeader(
            title: 'Cart Food',
            quantity: this.foods.length,
            internalScreen: false,
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 10.0,
            ),
            child: TabBar(
              controller: this._tabController,
              indicatorColor: theme.primaryColor,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black87,
              unselectedLabelColor: Colors.black87,
              tabs: <Widget>[
                Tab(text: 'Add Food'),
                Tab(text: 'Tracking Order'),
                Tab(text: 'Done Order'),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TabBarView(
                controller: this._tabController,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Expanded(
                        child: AddToCart(this.foods),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: theme.primaryColor,
                        ),
                        child: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.check,
                            size: 20.0,
                            color: Colors.white,
                          ),
                          label: Text(
                            'CHECK OUT',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: size.height * 0.20 * this.foods.length,
                        width: size.width,
                        child: Tracking(this.foods),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 65.0),
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: theme.primaryColor,
                        ),
                        child: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.location_searching,
                            size: 20.0,
                            color: Colors.white,
                          ),
                          label: Text(
                            'View Tracking Order',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  DoneOrder(this.foods),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

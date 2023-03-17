import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';
import 'package:test2/ui/cart/cart_viewmodel.dart';
import 'package:test2/ui/pickup_date/widgets/wash_container.dart';
import 'package:test2/widgets/app_bar.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => CartViewModel(),
        builder: (model, index, context) {
          return Scaffold(
            appBar: customAppBar(title: "Package"),
            body: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 150,
                          padding: const EdgeInsets.all(4),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 150,
                                padding: EdgeInsets.all(15),
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  "assets/shirt.png",
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "5 T- Shirts Dry and cleaning (\$60)",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "You will get \$10 Off buy this Product",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      washContainer(
                                          image: "assets/wash.png",
                                          title: "Wash"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      washContainer(
                                          image: "assets/shirt.png",
                                          title: "Dry Cleaning"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      washContainer(
                                          image: "assets/iron.png",
                                          title: "Iron"),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  }),
            ),
          );
        });
  }
}

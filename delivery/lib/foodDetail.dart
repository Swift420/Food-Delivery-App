import 'package:delivery/colors.dart';
import 'package:delivery/constant.dart';
import 'package:delivery/style.dart';
import 'package:flutter/material.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({Key? key}) : super(key: key);

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ConstrainedBox(
        constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width - 40, minHeight: 56),
        child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              PrimaryText(
                text: "Place an Order",
                fontWeight: FontWeight.w700,
                size: 18,
              ),
              Icon(
                Icons.chevron_right,
                color: AppColors.secondary,
              )
            ],
          ),
          style: ElevatedButton.styleFrom(
              primary: AppColors.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
      body: ListView(
        children: [
          customAppBar(context),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 25, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryText(
                  text: "Primavera\nPizza",
                  size: 40,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$",
                      style: TextStyle(color: AppColors.tertiary),
                    ),
                    PrimaryText(
                      text: "5.99",
                      size: 45,
                      fontWeight: FontWeight.w600,
                      color: AppColors.tertiary,
                      height: 1,
                    ),
                  ],
                ),
                SizedBox(height: 40),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(
                            text: "Size",
                            size: 18,
                            color: AppColors.lightGray,
                            fontWeight: FontWeight.w500,
                          ),
                          PrimaryText(
                            text: 'Medium 14"',
                            size: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 20),
                          PrimaryText(
                            text: "Crust",
                            size: 18,
                            color: AppColors.lightGray,
                            fontWeight: FontWeight.w500,
                          ),
                          PrimaryText(
                            text: 'Thin Crust',
                            size: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 20),
                          PrimaryText(
                            text: "Delivery In",
                            size: 18,
                            color: AppColors.lightGray,
                            fontWeight: FontWeight.w500,
                          ),
                          PrimaryText(
                            text: '30 min',
                            size: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.lightGray, blurRadius: 20)
                            ]),
                        child: Image.asset(
                          "assets/pizza.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 50, bottom: 15),
            child: PrimaryText(
              text: "Ingredients",
              fontWeight: FontWeight.w700,
              size: 22,
            ),
          ),
          SizedBox(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ingredients.length,
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(left: index == 0 ? 20 : 8.0),
                      child: ingedientsCard(ingredients[index]["imagePath"]!),
                    )),
          )
        ],
      ),
    );
  }

  Container ingedientsCard(String imagePath) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      margin: EdgeInsets.only(right: 20, top: 20, bottom: 15),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(blurRadius: 10, color: AppColors.lighterGray)]),
      child: Image.asset(
        imagePath,
        width: 90,
      ),
    );
  }

  Padding customAppBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        GestureDetector(
          onTap: () => {Navigator.pop(context)},
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.lightGray),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.chevron_left_rounded),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightGray),
            borderRadius: BorderRadius.circular(10),
            color: AppColors.primary,
          ),
          child: Icon(
            Icons.star,
            color: AppColors.white,
          ),
        ),
      ]),
    );
  }
}

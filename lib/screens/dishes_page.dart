import 'dart:io';
import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_menu/lang_provider.dart';
import 'package:restaurant_menu/models/meal.dart';
import 'package:restaurant_menu/screens/details_page.dart';
import 'package:restaurant_menu/screens/product_item.dart';

class DishesPage extends StatefulWidget {
  DishesPage({Key? key}) : super(key: key);

  @override
  State<DishesPage> createState() => _DishesPageState();
}

class _DishesPageState extends State<DishesPage> {
  bool _isItemSelected = false;
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
      final langProvider = Provider.of<LangProvider>(context, listen: false);

    return WillPopScope(onWillPop: () {
      //trigger leaving and use own data
      // Navigator.pop(context, false);
      langProvider.getItemSelected()
          ? setState(() {
              langProvider.isItemSelected(false);
            })
          : exit(0);

      //we need to return a future
      return Future.value(false);
    }, child: Consumer<LangProvider>(builder: (context, data, child) {
      return SafeArea(
        child: langProvider.getItemSelected()
            ? DetailsPage(langProvider.getItemIndex())
            : Scaffold(
                body: LayoutBuilder(
                builder: ((context, constraints) => defaultUI(constraints)),
              )),
      );
    }));
  }

  Widget defaultUI(BoxConstraints constraints) {
    var axisCount = 1;
    var current = constraints.maxWidth;

    if (current <= 500) {
      axisCount = 1;
    } else if (current > 500 && current <= 750) {
      axisCount = 2;
    } else if (current > 750 && current <= 1000) {
      axisCount = 3;
    } else {
      axisCount = 4;
    }

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'title'.tr(),
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 12),
        Expanded(
          child: GridView.builder(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              scrollDirection: Axis.vertical,
              itemCount: Meal.mealUz.length,
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: axisCount,
                  mainAxisExtent: 350,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 32),
              itemBuilder: (BuildContext context, int index) {
                return ProductItem(getMeals()[index],  index);
              }),
        )
      ],
    );
  }

  List<Meal> getMeals() {
    switch (context.locale.toString()) {
      case "uz_UZ":
        {
          return Meal.mealUz;
        }
      case "ru_RU":
        {
          return Meal.mealRu;
        }
      case "en_EN":
        {
          return Meal.mealEn;
        }
      default:
        return Meal.mealUz;
    }

 
  }

  
}

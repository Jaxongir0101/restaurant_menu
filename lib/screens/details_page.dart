import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../lang_provider.dart';
import '../models/meal.dart';

class DetailsPage extends StatefulWidget {
  final int selectedItemIndex;

  DetailsPage(this.selectedItemIndex, {Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int count = 2;

  @override
  Widget build(BuildContext context) {
      final langProvider = Provider.of<LangProvider>(context, listen: false);
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/bg_details.png'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
             setState(() {
               langProvider.isItemSelected(false);
             });
              },
              icon: Icon(
                Icons.arrow_back,
                size: 36,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(child: myBody()),
        ],
      ),
    );
  }

  Widget myBody() {
    return Container(
      margin: const EdgeInsets.only(top: 40, right: 30),
      color: Colors.white,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          details( getMeals()[widget.selectedItemIndex]),
          Positioned(
              top: -72,
              right: -40,
              child: Image.asset(
               getMeals()[widget.selectedItemIndex].imageUrl!,
                height: 200,
              ))
        ],
      ),
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

  Widget details(Meal meal) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 120),
          Text(
            meal.name!,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/ic_dish.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '20 мин',
                    style: const TextStyle(
                        color: Color(0xff52616B), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/ic_cal.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '5 инг',
                    style: TextStyle(
                        color: Color(0xff52616B), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/ic_kkal.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '438 кал',
                    style: TextStyle(
                        color: Color(0xff52616B), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            Meal.mealRu[0].details!,
            style: const TextStyle(fontSize: 16, height: 1.4),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}

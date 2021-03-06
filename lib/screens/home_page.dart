import 'dart:math' as math;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_menu/lang_provider.dart';
import 'package:restaurant_menu/screens/dishes_page.dart';
import 'package:restaurant_menu/screens/salads_page.dart';
import '../models/lang.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }

  var _pages = [
    DishesPage(),
    SaladsPage(),
    SaladsPage(),
    SaladsPage(),
  ];

  var _langs = [
    Lang('uz', true),
    Lang('ru', false),
    Lang('en', false),
  ];

  int _activeLangIndex = 0;

  void setCurrentLangButton() {
    switch (context.locale.toString()) {
      case "uz_UZ":
        {
          _langs.forEach((element) {
            if (element.name == 'uz') {
              element.isActive = true;
            } else {
              element.isActive = false;
            }
          });
        }
        break;
      case "ru_RU":
        {
          _langs.forEach((element) {
            if (element.name == 'ru') {
              element.isActive = true;
            } else {
              element.isActive = false;
            }
          });
        }
        break;
      case "en_EN":
        {
          _langs.forEach((element) {
            if (element.name == 'en') {
              element.isActive = true;
            } else {
              element.isActive = false;
            }
          });
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LangProvider>(context, listen: false);
    return Scaffold(
      body: Row(
        children: [
          LayoutBuilder(builder: (context, constraint) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                  child: NavigationRail(
                    minWidth: 52,
                    onDestinationSelected: (int index) {
                      setState(() {
                        _selectedIndex = index;
                        if (index == 0) {
                          langProvider.isItemSelected(false);
                        }
                      });
                    },
                    groupAlignment: 0.5,
                    selectedLabelTextStyle:
                        const TextStyle(color: Colors.white, fontSize: 24),
                    unselectedLabelTextStyle:
                        const TextStyle(color: Colors.white70, fontSize: 18),
                    labelType: NavigationRailLabelType.all,
                    backgroundColor: Color(0xff2A5270),
                    selectedIndex: _selectedIndex,
                    leading: langInit(),
                    destinations: [
                      NavigationRailDestination(
                          icon: SizedBox(),
                          label: RotatedBox(
                            quarterTurns: 0,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_outline,
                                color: Colors.red,
                              ),
                            ),
                          )),
                      NavigationRailDestination(
                          icon: SizedBox(),
                          label: RotatedBox(
                            quarterTurns: -1,
                            child: Text("meal".tr()),
                          )),
                      NavigationRailDestination(
                          icon: SizedBox(),
                          label: RotatedBox(
                            quarterTurns: -1,
                            child: Text("salat".tr()),
                          )),
                      NavigationRailDestination(
                          icon: SizedBox(),
                          label: RotatedBox(
                            quarterTurns: -1,
                            child: Text("drink".tr()),
                          )),
                      NavigationRailDestination(
                          icon: SizedBox(),
                          label: RotatedBox(
                            quarterTurns: -1,
                            child: Text("fast_food".tr()),
                          )),
                    ],
                  ),
                ),
              ),
            );
          }),
          Expanded(child: _pages[_selectedIndex])
        ],
      ),
    );
  }

  Widget langInit() {
    final langProvider = Provider.of<LangProvider>(context, listen: false);
    setCurrentLangButton();
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          height: 70,
        ),
        Transform.rotate(
          angle: -math.pi / 2,
          child: Text(
            'Briliant',
            style: TextStyle(
                letterSpacing: 0.1,
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        ToggleButtons(
          fillColor: Colors.transparent,
          borderColor: Colors.transparent,
          selectedBorderColor: Colors.transparent,
          selectedColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          direction: Axis.vertical,
          children: <Widget>[
            langButton(_langs[0]),
            langButton(_langs[1]),
            langButton(_langs[2]),
          ],
          onPressed: (int index) {
            setState(() {
              _langs.forEach((e) {
                e.isActive = false;
              });

              switch (index) {
                case 0:
                  {
                    context.setLocale(Locale("uz", "UZ"));
                    langProvider.langChanged();
                  }
                  break;
                case 1:
                  {
                    context.setLocale(Locale("ru", "RU"));
                    langProvider.langChanged();
                  }
                  break;
                case 2:
                  {
                    context.setLocale(Locale("en", "EN"));
                    langProvider.langChanged();
                  }
                  break;
              }
              _langs[index].isActive = true;
            });
          },
          isSelected: _langs.map((e) => e.isActive).toList(),
        ),
      ],
    );
  }

  Widget langButton(Lang lang) {
    return Container(
      width: 40,
      height: 40,
      child: Center(
        child: Text(
          lang.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            lang.isActive ? const Color(0xff206498) : const Color(0xff2A5270),
      ),
    );
  }
}

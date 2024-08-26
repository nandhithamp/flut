import 'package:flutter/material.dart';
import 'package:introflutter/bottomNavWidget.dart';
import 'package:introflutter/buttons/inkWellBtn.dart';
import 'package:introflutter/checkBoxWidget.dart';
import 'package:introflutter/floatingActionButtonWidget.dart';
import 'package:introflutter/circleAvatarWidgets.dart';
import 'package:introflutter/drawerWidget.dart';
import 'package:introflutter/gridViewWidget.dart';
import 'package:introflutter/radioButtonWidgets.dart';

import 'package:introflutter/refactoring.dart';
import 'package:introflutter/refactoringFunction.dart';
import 'package:introflutter/screens/productPage.dart';
import 'package:introflutter/showDialog.dart';
import 'package:introflutter/stackWidgets.dart';
import 'package:introflutter/statefulWidget.dart';
import 'package:introflutter/switchSiderWidget.dart';
import 'package:introflutter/textFieldWidgets.dart';
import 'package:introflutter/tabBarWidget.dart';
import 'package:introflutter/viewFullScreen.dart';
import 'package:introflutter/viewWidget.dart';

// import 'floatingActionButtonWidget.dart';
import 'alertBoxWidget.dart';
import 'buttonWidgets.dart';
import 'buttons/dropDownBtn.dart';
import 'buttons/gestureBtn.dart';
import 'calenderWidget.dart';
import 'cardExercise.dart';
import 'cardWidgets.dart';
import 'chippWidget.dart';
import 'date&time.dart';
import 'demoScreen.dart';
import 'designationDropdown.dart';
import 'expanded.dart';
import 'flexibleWidgets.dart';
import 'floatingActionButton.dart';
import 'gradientColor.dart';
import 'gridVW.dart';
import 'homePage.dart';
import 'imageWidgets.dart';
import 'listViewAnothertry.dart';
import 'listViewTry.dart';
import 'listViewWidgets.dart';
import 'listviewMedal.dart';
import 'navigation.dart';
import 'tabBarWidget.dart';
import 'radioButtonWidgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: HomePage(),
      // home:Button()
      // home:TextFieldWidgets()
      // home:ImageWidget()
      // home: CardWidget(),
      // home: CircleAvatarWidget()
      // home:CardExercise(),
      // home: StateFulWidget(),
      // home: DrawerWidget(),
      // home: CheckBoxWidget(),
      // home:BottomNav(),
      // home: FloatingABtn(),
      // home: TabBarWidget(),
      // home: radioBtnWidget(),
      // home: Navigation(),
      // home: ProductPage(),
      // home: ListViewWidgets(),
      // home: StackWidgets(),
      // home: Refactoring(),
      // home: RefactoringFunction(),
      // home:ListViewTry()
      // home: ListViewAnothertry(),
      // home: ListViewMedal(),
      // home: GridViewWidget(),
      // home: ChipWidgets(),
      // home: FloatingActionBtn(),
      //   home: InkWellBtn(),
      // home: SearchScreen(),
// home: ExpandedWidgets(),
//     home: FlexibleWidgets(),
//     home: GridVW(),
//     home: DropDownbtn(),
//     home: Gesturebtn(),
//     home: gradientColor(),
//     home: SwitchSiderWidget(),
//     home: DateTimeWidgets(),
//     home: CalenderWidget(),
//     home: AlertBoxWidget(),
//     home: viewWidget(),
//     home: viewFullScreen(),
//     home: ShowDialog(),
//     home: LoginScreen(),
    );


  }
}


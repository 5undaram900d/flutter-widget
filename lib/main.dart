import 'package:all_widget/A01_AllFlutterWidget/A002_AboutDialog.dart';
import 'package:all_widget/A01_AllFlutterWidget/A003_AboutListTile.dart';
import 'package:all_widget/A01_AllFlutterWidget/A004_AbsorbPointer.dart';
import 'package:all_widget/A01_AllFlutterWidget/A005_AlertDialog.dart';
import 'package:all_widget/A01_AllFlutterWidget/A006_Align.dart';
import 'package:all_widget/A01_AllFlutterWidget/A007_AnimatedAlign.dart';
import 'package:all_widget/A01_AllFlutterWidget/A008_AnimatedBuilder.dart';
import 'package:all_widget/A01_AllFlutterWidget/A009_AnimatedContainer.dart';
import 'package:all_widget/A01_AllFlutterWidget/A010_AnimatedCrossFade.dart';
import 'package:all_widget/A01_AllFlutterWidget/A011_AnimatedDefaultTextStyle.dart';
import 'package:all_widget/A01_AllFlutterWidget/A012_AnimatedIcon.dart';
import 'package:all_widget/A01_AllFlutterWidget/A013_AnimatedList.dart';
import 'package:all_widget/A01_AllFlutterWidget/A014_AnimatedModalBarrier.dart';
import 'package:all_widget/A01_AllFlutterWidget/A015_AnimatedOpacity.dart';
import 'package:all_widget/A01_AllFlutterWidget/A016_AnimatedPadding.dart';
import 'package:all_widget/A01_AllFlutterWidget/A017_AnimatedPhysicalModel.dart';
import 'package:all_widget/A01_AllFlutterWidget/A018_AnimatedPositioned.dart';
import 'package:all_widget/A01_AllFlutterWidget/A019_AnimatedRotation.dart';
import 'package:all_widget/A01_AllFlutterWidget/A020_AnimatedSize.dart';
import 'package:all_widget/A01_AllFlutterWidget/A021_AnimatedSwitcher.dart';
import 'package:all_widget/A01_AllFlutterWidget/A022_AppBar.dart';
import 'package:all_widget/A01_AllFlutterWidget/A023_AspectRatio.dart';
import 'package:all_widget/A01_AllFlutterWidget/A024_AutoComplete.dart';
import 'package:all_widget/A01_AllFlutterWidget/A025_BackdropFilter.dart';
import 'package:all_widget/A01_AllFlutterWidget/A026_Banner.dart';
import 'package:all_widget/A01_AllFlutterWidget/A027_Baseline.dart';
import 'package:all_widget/A01_AllFlutterWidget/A028_01_BlockSemantics.dart';
import 'package:all_widget/A01_AllFlutterWidget/A028_02_BlockSemantics.dart';
import 'package:all_widget/A01_AllFlutterWidget/A029_BottomNavigationBar.dart';
import 'package:all_widget/A01_AllFlutterWidget/A030_BottomSheet.dart';
import 'package:all_widget/A01_AllFlutterWidget/A031_Builder.dart';
import 'package:all_widget/A01_AllFlutterWidget/A032_Card.dart';
import 'package:all_widget/A01_AllFlutterWidget/A033_Center.dart';
import 'package:all_widget/A01_AllFlutterWidget/A034_Checkbox.dart';
import 'package:all_widget/A01_AllFlutterWidget/A035_CheckboxListTile.dart';
import 'package:all_widget/A01_AllFlutterWidget/A036_Chip.dart';
import 'package:all_widget/A01_AllFlutterWidget/A037_ChoiceChip.dart';
import 'package:all_widget/A01_AllFlutterWidget/A038_CircleAvatar.dart';
import 'package:all_widget/A01_AllFlutterWidget/A039_CircularProgressIndicator.dart';
import 'package:all_widget/A01_AllFlutterWidget/A040_ClipOval.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'All Flutter Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return A024_AutoComplete();
  }
}

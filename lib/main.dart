import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pregcare/auth/login.dart';
import 'package:pregcare/auth/login_controller.dart';
import 'package:pregcare/mom/m_kick.dart';
import 'package:pregcare/baby/b_store.dart';
import 'package:pregcare/mom/m_main.dart';
import 'package:pregcare/mom/m_weight.dart';
import 'package:pregcare/pages/pregcare.dart';
import 'package:pregcare/utils/routes.dart';
import 'baby/b_vaccine.dart';
import 'mom/m_articles.dart';
import 'mom/m_reminder.dart';
import 'mom/m_meal.dart';
import 'mom/m_store.dart';
import 'mom/m_exercise.dart';
import 'mom/m_calendar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.pink, statusBarIconBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.pinkAccent,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      initialRoute: "/",
      routes: {
         //"/": (context) => const Pregcare(),
        // ignore: equal_keys_in_map
        "/": (context) => LoginController().handleAuthState(),
        PregcareRoutes().homeRoute: (context) => const Pregcare(),
        PregcareRoutes().splashRoute: (context) => MMain(),
        PregcareRoutes().momWeightRoute: (context) => const MWeight(),
        PregcareRoutes().momArticleRoute: (context) => const ArticlesPage(),
        PregcareRoutes().momReminderRoute: (context) => MReminder(),
        PregcareRoutes().momStoreRoute: (context) => const Mstore(),
        PregcareRoutes().momExerciseRoute: (context) => MExercise(),
        PregcareRoutes().momMealRoute: (context) => const MealPlan(),
        PregcareRoutes().babyStoreRoute: (context) => const BStore(),
        PregcareRoutes().momKickCountRoute: (context) => const MKickCount(),
        PregcareRoutes().babyStoreRoute: (context) => const BStore(),
        PregcareRoutes().babyVaccineRoute: (context) => const BVaccine(),
        PregcareRoutes().momCalendarRoute: (context) => const EventCalendarScreen(),
      },
    );
  }
}

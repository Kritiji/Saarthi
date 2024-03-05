//No Change
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pregcare/tools/sos.dart';
import 'package:pregcare/widgets/m_drawer.dart';
import 'package:pregcare/utils/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_sms/flutter_sms.dart';
import '../auth/login_controller.dart';
import '../tools/sos_details.dart';
import '../widgets/cards.dart';
import 'package:http/http.dart' as http;

class MMain extends StatelessWidget {
  final controller = Get.put(LoginController());

  MMain({super.key});

  List cards = [
    MomTileCrad(
        title_text: "Meal Plan",
        image_url: "assets/images/m_meal.png",
        openUrl: PregcareRoutes().momMealRoute),
    MomTileCrad(
        title_text: "Exercise",
        image_url: "assets/images/m_exercise.png",
        openUrl: PregcareRoutes().momExerciseRoute),
    MomTileCrad(
        title_text: "Kick Count",
        image_url: "assets/images/kick_pink.png",
        openUrl: PregcareRoutes().momKickCountRoute),
    MomTileCrad(
        title_text: "Store",
        image_url: "assets/images/m_store.png",
        openUrl: PregcareRoutes().momStoreRoute),
    MomTileCrad(
        title_text: "Reminder",
        image_url: "assets/images/m_experience.png",
        openUrl: PregcareRoutes().momReminderRoute),
    MomTileCrad(
        title_text: "Weight",
        image_url: "assets/images/m_weight.png",
        openUrl: PregcareRoutes().momWeightRoute),
    // MomTileCrad(
    //     title_text: "Calendar",
    //     image_url: "assets/images/m_calender.png",
    //     openUrl: PregcareRoutes().momCalendarRoute),
    // MomTileCrad(
    //     title_text: "Articles",
    //     image_url: "assets/images/m_articles.png",
    //     openUrl: PregcareRoutes().momArticleRoute),
   ];

  void _sendSMS(String message, List<String> recipents) async {
    try {
      String _result = await sendSMS(message: message, recipients: recipents)
          .catchError((onError) {
        print(onError);
      });
      print(_result);
    } catch (e) {
      print(e);
    }
  }
  // Function to calculate pregnancy week based on last period date
  String calculatePregnancyWeek(String lastPeriodDateString) {
    DateTime lastPeriodDate = DateTime.parse(lastPeriodDateString);
    DateTime currentDate = DateTime.now();
    // Calculate the difference in weeks
    int weeksDifference = currentDate.difference(lastPeriodDate).inDays ~/ 7;

    // Return the calculated week
    return "Weeks-$weeksDifference";
  }
  String getCurrentDate() {
    // Format the current date as "dd : MM : yyyy"
    return DateFormat('dd : MM : yyyy').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    String pregnancyWeek = calculatePregnancyWeek("2023-09-15");
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            "Saarthi",
            style: GoogleFonts.dancingScript(
                fontWeight: FontWeight.w900, fontSize: 28, color: Colors.white),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: (() {
                    SOS().sosFire(context);
                  }),
                  icon: const Icon(Icons.sos_outlined),
                ),
              ],
            )
          ],
        ),
// comment this drawer
//         drawer: MyDrawer(
//             email: FirebaseAuth.instance.currentUser!.email!,
//             avtar_img: FirebaseAuth.instance.currentUser!.photoURL!,
//             name: FirebaseAuth.instance.currentUser!.displayName!),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  pregnancyWeek,
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    getCurrentDate(),
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      children: List.generate(
                        cards.length,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: cards[index],
                          );
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

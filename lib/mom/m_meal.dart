import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class MealPlan extends StatefulWidget {
  const MealPlan({Key? key}) : super(key: key);

  @override
  _MealPlanState createState() => _MealPlanState();
}

class _MealPlanState extends State<MealPlan> {
  String selectedCategory = "Monday";

  List<Map<String, String>> articles = [
    {
      "title": "Pre Breakfast Snack",
      "source":
      "8-12 pieces of dry fruits including cashew nuts, almonds, and raisins.",
      "image": "assets/images/monPBS.jpeg",
      "category": "Monday"
    },
    {
      "title": "Morning Breakfast",
      "source": "Moongdal chilla-3 +pudina/coconut chutney-2 tsp",
      "image": "assets/images/monMB.jpeg",
      "category": "Monday"
    },
    {
      "title": "Mid Morning Snack",
      "source": "Blueberry shake (1 cup)",
      "image": "assets/images/monMMS.jpeg",
      "category": "Monday"
    },
    {
      "title": "Lunch",
      "source": "1.5 cup Mutton biryani + Cucumber onion Raita (½ cup)",
      "image": "assets/images/monL.jpeg",
      "category": "Monday"
    },
    {
      "title": "Evening Snack",
      "source":
      "Sweet potato salad (cooked with 200 gms of sweet potato, 1 pinch of chat masala, and 1 tsp lemon juice) +  light tea (1 cup)",
      "image": "assets/images/monES.jpg",
      "category": "Monday"
    },
    {
      "title": "Dinner",
      "source": "chapatti 3 + bitter gourd sabji  ",
      "image": "assets/images/monD.jpg",
      "category": "Monday"
    },
    ///////////////////monday
    {
      "title": "Pre Breakfast Snack",
      "source":
      "Homemade fruit juice with strawberries, pomegranate, guava, or oranges (1 glass)",
      "image": "assets/images/tuPBS.jpg",
      "category": "Tuesday"
    },
    {
      "title": "Morning Breakfast",
      "source": "chapatti-4 + Tomato sabji (½ cup) ",
      "image": "assets/images/tueMB.jpg",
      "category": "Tuesday"
    },
    {
      "title": "Mid Morning Snack",
      "source": "Vegetable soup made with brocolli and garlic (1 bowl)",
      "image": "assets/images/tueMMS.jpg",
      "category": "Tuesday"
    },
    {
      "title": "Lunch",
      "source": "1.5 cup rice + 1 piece of chicken + 1 cup broccoli sabji",
      "image": "assets/images/tueL.jpg",
      "category": "Tuesday"
    },
    {
      "title": "Evening Snack",
      "source":
      "Mixed fruit salad made of mangoes, bananas, and berries of your choice (1 medium-sized plate)",
      "image": "assets/images/tueES.jpg",
      "category": "Tuesday"
    },
    {
      "title": "Dinner",
      "source": "Moongdal chilla-3 +pudina/coconut chutney-2 tsp",
      "image": "assets/images/tueD.jpeg",
      "category": "Tuesday"
    },
    ////////tuesday
    {
      "title": "Pre Breakfast Snack",
      "source": "Banana milkshake (1 glass)",
      "image": "assets/images/wedPBS.jpg",
      "category": "Wednesday"
    },
    {
      "title": "Morning Breakfast",
      "source": "Veggie-rich sevai or upma (1 cup) + 2 medium-sized parathas",
      "image": "assets/images/wedMB.jpg",
      "category": "Wednesday"
    },
    {
      "title": "Mid Morning Snack",
      "source": "Kaddu ka soup or pumpkin soup (1 bowl)",
      "image": "assets/images/wedMMS.jpg",
      "category": "Wednesday"
    },
    {
      "title": "Lunch",
      "source": "1.5 cup Mutton biryani + Cucumber onion Raita (½ cup)",
      "image": "assets/images/wedL.jpeg",
      "category": "Wednesday"
    },
    {
      "title": "Evening Snack",
      "source": "10-14 pieces of dry fruits",
      "image": "assets/images/wedES.jpg",
      "category": "Wednesday"
    },
    {
      "title": "Dinner",
      "source": "Multigrain toast (2 in no.) with two sunny side up eggs",
      "image": "assets/images/wedD.jpg",
      "category": "Wednesday"
    },
    ///////Wednesday
    {
      "title": "Pre Breakfast Snack",
      "source": "Carrot juice (1 glass)",
      "image": "assets/images/thrPBS.jpg",
      "category": "Thursday"
    },
    {
      "title": "Morning Breakfast",
      "source": "Oatmeal (1 cup) + 2 boiled eggs",
      "image": "assets/images/thrMB.jpg",
      "category": "Thursday"
    },
    {
      "title": "Mid Morning Snack",
      "source": "Banana milkshake (1 glass)",
      "image": "assets/images/thrMMS.jpg",
      "category": "Thursday"
    },
    {
      "title": "Lunch",
      "source": "1.5 cup rice, 1 piece mutton + 1 bowl masoor daal",
      "image": "assets/images/thrL.jpeg",
      "category": "Thursday"
    },
    {
      "title": "Evening Snack",
      "source":
      "Mixed fruit salad made of mangoes, bananas, and berries of your choice (1 medium-sized plate)",
      "image": "assets/images/thrES.jpeg",
      "category": "Thursday"
    },
    {
      "title": "Dinner",
      "source": "Veggie-rich poha (1 cup) + 1 glass milk ",
      "image": "assets/images/thrD.jpg",
      "category": "Thursday"
    },
    //Thursday
    {
      "title": "Pre Breakfast Snack",
      "source": "1 plain glass of milk",
      "image": "assets/images/friPBS.jpg",
      "category": "Friday"
    },
    {
      "title": "Morning Breakfast",
      "source": "3 moong dal chillas",
      "image": "assets/images/friMS.jpg",
      "category": "Friday"
    },
    {
      "title": "Mid Morning Snack",
      "source": "Tamatar or tomato soup (1 bowl)",
      "image": "assets/images/friMMS.jpg",
      "category": "Friday"
    },
    {
      "title": "Lunch",
      "source": "1.5 cup chicken biryani + cucumber onion raita (½ cup)",
      "image": "assets/images/friL.jpg",
      "category": "Friday"
    },
    {
      "title": "Evening Snack",
      "source":
      "Vegetable salad (1 plate) made with carrots, cucumber, and onions",
      "image": "assets/images/friES.jpg",
      "category": "Friday"
    },
    {
      "title": "Dinner",
      "source": "Multigrain toast (2 in no.) with two sunny side up eggs",
      "image": "assets/images/friD.jpg",
      "category": "Friday"
    },
    //Friday
    {
      "title": "Pre Breakfast Snack",
      "source": "Banana milkshake (1 glass)",
      "image": "assets/images/satPBS.jpg",
      "category": "Saturday"
    },
    {
      "title": "Morning Breakfast",
      "source": "Oatmeal (1 cup) + 2 boiled eggs",
      "image": "assets/images/satMB.jpg",
      "category": "Saturday"
    },
    {
      "title": "Mid Morning Snack",
      "source": "Kaddu or pumpkin soup (1 bowl)",
      "image": "assets/images/satMMS.jpg",
      "category": "Saturday"
    },
    {
      "title": "Lunch",
      "source": "1.5 cup rice, 1 piece mutton + 1 bowl masoor daal",
      "image": "assets/images/satL.jpeg",
      "category": "Saturday"
    },
    {
      "title": "Evening Snack",
      "source":
      "10-14 pieces of dry fruits including cashew nuts, almonds, and raisins",
      "image": "assets/images/satES.jpeg",
      "category": "Saturday"
    },
    {
      "title": "Dinner",
      "source": "Chapatti-4 + Tomato sabji (½ cup) ",
      "image": "assets/images/satD.jpg",
      "category": "Saturday"
    },
    //Saturday
    {
      "title": "Pre Breakfast Snack",
      "source": "1 plain glass of milk",
      "image": "assets/images/sunPBS.jpg",
      "category": "Sunday"
    },
    {
      "title": "Morning Breakfast",
      "source": "Veggie-rich sevai or upma (1 cup) + 2 medium-sized parathas",
      "image": "assets/images/sunMB.jpg",
      "category": "Sunday"
    },
    {
      "title": "Mid Morning Snack",
      "source": "Peach milkshake (1 glass)",
      "image": "assets/images/sunMMS.jpeg",
      "category": "Sunday"
    },
    {
      "title": "Lunch",
      "source":
      "1.5 cup vegetable khichdi + 1 piece chicken + 1 small bowl of dahi",
      "image": "assets/images/sunL.jpg",
      "category": "Sunday"
    },
    {
      "title": "Evening Snack",
      "source": "1 medium-sized avocado with 1 spoon of peanut butter",
      "image": "assets/images/sunES.jpg",
      "category": "Sunday"
    },
    {
      "title": "Dinner",
      "source": "Veggie-rich poha (1 cup) + 1 glass milk",
      "image": "assets/images/sunD.jpg",
      "category": "Sunday"
    },
    //Sunday
  ];

  List<String> categories = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  print("hello");
                }),
                icon: const Icon(Icons.sos_outlined),
              ),
            ],
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Meal Plans",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: categories.map((category) {
                      return Padding(
                        padding: EdgeInsets.all(5),
                        child: ChoiceChip(
                          label: Text(category),
                          selected: selectedCategory == category,
                          onSelected: (selected) {
                            setState(() {
                              selectedCategory = category;
                            });
                          },
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: articles.length,
              itemBuilder: (BuildContext context, int index) {
                if (articles[index]['category'] == selectedCategory) {
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            articles[index]['image']!,
                            fit: BoxFit.cover,
                            height: 320,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                articles[index]['title']!,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                articles[index]['source']!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class BVaccine extends StatefulWidget {
  const BVaccine({Key? key}) : super(key: key);

  @override
  State<BVaccine> createState() => _BVaccineState();
}



class _BVaccineState extends State<BVaccine> {
  String selectedCategory = "At Birth";

  List<Map<String, String>> articles = [
    {
      "title": "Bacillus Calmette Guerin (BCG)",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• This is a single dose vaccine.;"
          "• Administered via injection on upper arm.;"
          "• This vaccine offers protection against tuberculosis;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Soreness or discharge where the injection was given;"
          "• High temperature;"
          "• Headache;"
          "• Swollen glands under the armpit on the arm that received the vaccine shot;",
      "category": "At Birth"
    },
    {
      "title": "Oral Polio Vaccine (OPV) - 0 dose",
      //"dose number": "Dose Number: 0",
      //"title2":"Description",
      "description":
      ";"
          "• This is the first dose taken at birth.;"
          "• Administered orally.;"
          "• This vaccine protects against the poliovirus which is a highly infectious disease that invades the nervous system and can lead to total paralysis.;"
          "• The virus primarily affects children 5 years and below.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• There are no common side effects associated with this vaccine.;",
      "category": "At Birth"
    },
    {
      "title": "Hepatitis B birth dose",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• This is a single dose vaccine.;"
          "• Administered via injection;"
          "• This vaccine protects against Hepatitis B which is a viral infection that attacks the liver and can cause both acute and chronic disease.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Other than some redness and soreness where the injection was given, side effects are rare.;"
          "• It's an inactivated (dead) vaccine, so it cannot cause the infection itself;",
      "category": "At Birth"
    },
    ///////////////////////////////
    {
      "title": "Oral Polio Vaccine (OPV) - 1",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• This is the second OPV dose taken at 6 weeks.;"
          "• Administered orally;"
          "• This vaccine protects against the poliovirus which is a highly infectious disease that invades the nervous system and can lead to total paralysis.;"
          "• The virus primarily affects children 5 years and below.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• There are no common side effects associated with this vaccine.;",
      "category": "6 Weeks"
    },
    {
      "title": "Pentavalent - 1",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• This is the first dose taken at 6 weeks old.;"
          "• Administered via injection;"
          "• This vaccine offers protection against Diphtheria, Pertussis, Tetanus, Hepatitis B and Hib.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Swelling, redness and pain may occur at the site where the injection is given.;"
          "• Children may develop fever for a short time after immunization.;"
          "• Symptoms usually appear the day after vaccination and last between 1-3 days.;",
      "category": "6 Weeks"
    },
    {
      "title": "Rotavirus Vaccine (RVV) - 1",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• This is the first dose of three doses.;"
          "• Administered orally;"
          "• This vaccine offers protection against rotaviruses which are the most common cause of severe diarrhoeal disease in infants and young children.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Side effects are rare and mild;"
          "• May include diarrhea, vomiting and irritation;",
      "category": "6 Weeks"
    },
    {
      "title": "Pneumococcal Conjugate Vaccine (PCV) - 1 *",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• The first of two doses of the PCV.;"
          "• Administered via injection;"
          "• This vaccine offers protection against meningitis, septicemia and pneumonia to milder infections such as sinusitis and otitis media.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Redness;"
          "• Swelling;"
          "• Pain or tenderness;"
          "• Fever;"
          "• Loss of appetite;"
          "• Fussiness(irritability);"
          "• Feeling tired;"
          "• Headache;"
          "• Muscle aches or joint pain;"
          "• Chills;",

      "category": "6 Weeks"
    },
    {
      "title": "Inactivated Polio Vaccine (fIPV) - 1",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• The first of two doses of the fIPV.;"
          "• Administered via injection;"
          "• This vaccine offers protection from the poliovirus which is a highly infectious viral disease that largely affects children under 5 years of age.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Soreness;"
          "• Fever;",
      "category": "6 Weeks"
    },
    ////////////////////////////////
    {
      "title": "Pentavalent - 2",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• The second dose is taken when your child is 10 weeks old.;"
          "• Administered via injection;"
          "• This vaccine offers protection against Diphtheria, Pertussis, Tetanus, Hepatitis B and Hib.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Swelling, redness and pain may occur at the site where the injection is given.;"
          "• Children may develop fever for a short time after immunization.;"
          "• Symptoms usually appear the day after vaccination and last between 1-3 days.;",
      "category": "10 Weeks"
    },
    {
      "title": "Oral Polio Vaccine (OPV) - 2",
      "dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• This is the third OPV dose taken when your child is 10 weeks old.;"
          "• Administered orally;"
          "• This vaccine protects against the poliovirus which is a highly infectious disease that invades the nervous system and can lead to total paralysis.;"
          "• The virus primarily affects children 5 years and below.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• There are no common side effects associated with this vaccine.;",
      "category": "10 Weeks"
    },
    {
      "title": "Rotavirus Vaccine (RVV) - 2",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• The second dose is taken when your child is 10 weeks old.;"
          "• Administered via injection;"
          "• Administered orally;"
          "• This vaccine offers protection against rotaviruses which are the most common cause of severe diarrhoeal disease in infants and young children.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Side effects are rare and mild;"
          "• May include diarrhea, vomiting and irritation;",
      "category": "10 Weeks"
    },
    /////////////////////////////////
    {
      "title": "Pentavalent - 3",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• This is the last Pentavalent vaccine dose to be taken at 14 weeks old.;"
          "• Administered via injection;"
          "• This vaccine offers protection against Diphtheria, Pertussis, Tetanus, Hepatitis B and Hib.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Swelling, redness and pain may occur at the site where the injection is given.;"
          "• Children may develop fever for a short time after immunization.;"
          "• Symptoms usually appear the day after vaccination and last between 1-3 days.;",
      "category": "14 Weeks"
    },
    {
      "title": "Oral Polio Vaccine (OPV) - 3",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• This is the last OPV dose is taken when your child Is 14 weeks old.;"
          "• Administered orally;"
          "• This vaccine protects against the poliovirus which is a highly infectious disease that invades the nervous system and can lead to total paralysis.;"
          "• The virus primarily affects children 5 years and below.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• There are no common side effects associated with this vaccine.;",
      "category": "14 Weeks"
    },
    {
      "title": "Rotavirus Vaccine (RVV) - 3",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• This is the last RVV dose is taken when your child Is 14 weeks old.;"
          "• Administered via injection;"
          "• Administered orally;"
          "• This vaccine offers protection against rotaviruses which are the most common cause of severe diarrhoeal disease in infants and young children.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Side effects are rare and mild;"
          "• May include diarrhea, vomiting and irritation;",
      "category": "14 Weeks"
    },
    {
      "title": "Pneumococcal Conjugate Vaccine (PCV) - 2",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• The second of two doses of the PCV given at 14 weeks old.;"
          "• Administered via injection;"
          "• This vaccine offers protection from meningitis, septicaemia and pneumonia to milder infections such as sinusitis and otitis media.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Redness;"
          "• Swelling;"
          "• Pain or tenderness;"
          "• Fever;"
          "• Loss of appetite;"
          "• Fussiness(irritability);"
          "• Feeling tired;"
          "• Headache;"
          "• Muscle aches or joint pain;"
          "• Chills;",
      "category": "14 Weeks"
    },
    {
      "title": "Inactivated Polio Vaccine (fIPV) - 2",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• The final fIPV dose is given to your child at 14 weeks.;"
          "• Administered via injection;"
          "• This vaccine offers protection from the poliovirus which is a highly infectious viral disease that largely affects children under 5 years of age.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Soreness;"
          "• Fever;",
      "category": "14 Weeks"
    },
    //////////////////////////////////////
    {
      "title": "Measles & Rubella (MR) - 1",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• The first of two doses of the MR vaccine.;"
          "• Administered via injection;"
          "• This vaccine offers protection against measles and rubella;"
          "• Measles is often a severe disease, frequently complicated by middle-ear infection or bronchopneumonia.;"
          "• Rubella causes a mild exanthematous illness, along with few constitutional symptoms, and occurs most commonly in childhood.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Redness, swelling and sore feeling for 2 to 3 days;"
          "• Around 7 to 11 days after the injection, babies or young children may feel a bit unwell or develop a high temperature for about 2 or 3 days;",
      "category": "9-12 Months"
    },
    {
      "title": "Japanese Encephalitis (JE-1) **",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• The first of two doses of the JE-1 vaccine.;"
          "• Administered via injection;"
          "• This vaccine offers protection against Japanese Encephalitis which is the main cause of viral encephalitis in Asia.;"
          "• Most infections are mild or without apparent symptoms other than fever and a headache.;"
          "• However, sometimes it can result in severe clinical illness.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Fever though rarely (more often in children).;"
          "• Headache or muscle aches mainly in adults.;"
          "• Pain, tenderness, redness, or swelling around the vaccine shot.;",
      "category": "9-12 Months"
    },
    {
      "title": "Pneumococcal Conjugate Vaccine - Booster *",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• This is a single dose vaccine.;"
          "• Administered via injection;"
          "• This vaccine offers protection against pneumonia, ear infections, sinus infections, meningitis, bacteremia.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Redness/swelling;"
          "• Loss of appetite;"
          "• Irritability;"
          "• Fever;"
          "• Increased crying;",
      "category": "9-12 Months"
    },
    /////////////////////////////////
    {
      "title": "Measles & Rubella (MR) - 2",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• The second of two doses of the MR vaccine to be taken by your child between 16-24 months.;"
          "• Administered via injection;"
          "• The vaccine offers protection against measles and rubella.; "
          "• Measles is an almost invariable clinical experience of childhood, and is often a severe disease, frequently complicated by middle-ear infection or bronchopneumonia.;"
          "• Rubella (German measles) gives rise to a mild exanthematous illness, accompanied by few constitutional symptoms, and occurs most commonly in childhood.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• The area where the needle goes in looking red, swollen and feeling sore for 2 to 3 days;"
          "• Around 7 to 11 days after the injection, babies or young children may feel a bit unwell or develop a high temperature for about 2 or 3 days;",
      "category": "16-24 Months"
    },
    {
      "title": "Japanese Encephalitis (JE-2) **",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• The final JE vaccine to be administered between 16-24 months.;"
          "• Administered via injection;"
          "• This vaccine offers protection against Japanese Encephalitis which is the main cause of viral encephalitis in Asia.;"
          "• Most infections are mild or without apparent symptoms other than fever and a headache.;"
          "• However, sometimes it can result in severe clinical illness.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Fever though rarely (more often in children).;"
          "• Headache or muscle aches mainly in adults.;"
          "• Pain, tenderness, redness, or swelling around the area of the vaccine shot.;",
      "category": "16-24 Months"
    },
    {
      "title": "Diphtheria Pertussis & Tetanus (DPT) - Booster 1",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• The first of two doses of the DPT vaccine.;"
          "• Administered via injection;"
          "• The vaccine offers protection from diphtheria, pertussis, and tetanus.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Soreness or swelling around the area of the vaccine shot.;"
          "• Fever;"
          "• Irritation;"
          "• Exhaustion;"
          "• Loss of appetite;"
          "• Vomiting;",
      "category": "16-24 Months"
    },
    {
      "title": "Oral Polio Vaccine - Booster",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• This is a single dose vaccine.;"
          "• Administered orally;"
          "• This vaccine protects against the poliovirus which is a highly infectious disease that invades the nervous system and can lead to total paralysis.;"
          "• The virus primarily affects children 5 years and below.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• There are no common side effects associated with this vaccine.;",
      "category": "16-24 Months"
    },
    //////////////////////////////////
    {
      "title": "Diphtheria Pertussis & Tetanus (DPT) - Booster 2",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• The second of two doses, DPT vaccine is to be given to your child when they are 5-6 years old.;"
          "• Administered via injection;"
          "• The vaccine offers protection from diphtheria, pertussis, and tetanus.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Soreness or swelling around the area of the vaccine shot.;"
          "• Fever;"
          "• Irritation;"
          "• Exhaustion;"
          "• Loss of appetite;"
          "• Vomiting;",
      "category": "5-6 Years"
    },
    //////////////////////////////////
    {
      "title": "Tetanus & adult Diphtheria (Td)",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• This is a single dose vaccine.;"
          "• Administered via injection;"
          "• The vaccine provides protection against tetanus which can be contracted through infected cuts or wounds with the spores of the bacterium Clostridium tetani.;"
          "• Diphtheria can lead to difficulty breathing, heart failure, paralysis, or death. Most cases occur within 14 days of infection.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Pain;"
          "• Redness or swelling around the area of the vaccine shot;"
          "• Mild fever;"
          "• Headache;"
          "• Exhaustion;"
          "• Nausea, vomiting, diarrhea, or stomachache;",
      "category": "10 Years"
    },
    /////////////////////////////////////
    {
      "title": "Tetanus & adult Diphtheria (Td)",
      //"dose number": "Dose Number: 1",
      //"title2":"Description",
      "description":
      ";"
          "• This is a single dose vaccine.;"
          "• Administered via injection;"
          "• The vaccine provides protection against tetanus which can be contracted through infected cuts or wounds with the spores of the bacterium Clostridium tetani.;"
          "• Diphtheria can lead to difficulty breathing, heart failure, paralysis, or death. Most cases occur within 14 days of infection.;",
      //"title3":"Side Effects",
      "side effects":
      "Potential Side Effects;"
          "• Pain;"
          "• Redness or swelling around the area of the vaccine shot;"
          "• Mild fever;"
          "• Headache;"
          "• Exhaustion;"
          "• Nausea, vomiting, diarrhea, or stomachache;",
      "category": "16 Years"
    },

  ];

  List<String> categories = [
    "At Birth",
    "6 Weeks",
    "10 Weeks",
    "14 Weeks",
    "9-12 Months",
    "16-24 Months",
    "5-6 Years",
    "10 Years",
    "16 Years",
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
                  "Vaccine",
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
                  List<String> descriptionSentences =
                  articles[index]['description']!.split(';');

                  List<String> sideeffectSentences =
                  articles[index]['side effects']!.split(';');

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0), // Increase gap between cards
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7, // Decrease width of card
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0), // Increase left and right margins
                        child: Card(//return Card(
                          color: Colors.pink[50],
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
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
                                    // const SizedBox(height: 8),
                                    // Text(
                                    //   articles[index]['dose number']!,
                                    //   style: const TextStyle(
                                    //     fontSize: 16,
                                    //     color: Colors.grey,
                                    //   ),
                                    // ),
                                    // Text(
                                    //   articles[index]['title2']!,
                                    //   style: const TextStyle(
                                    //     fontSize: 16,
                                    //     //fontWeight: FontWeight.bold,
                                    //   ),
                                    // ),
                                    const SizedBox(height: 8),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: descriptionSentences
                                          .map((sentence) => Text(
                                        sentence.trim(),
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ))
                                          .toList(),
                                    ),
                                    // Text(
                                    //   articles[index]['title3']!,
                                    //   style: const TextStyle(
                                    //     fontSize: 16,
                                    //     //fontWeight: FontWeight.bold,
                                    //   ),
                                    // ),
                                    const SizedBox(height: 8),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: sideeffectSentences
                                          .map((sentence) => Text(
                                        sentence.trim(),
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ))
                                          .toList(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                      ),
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
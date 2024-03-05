//no-change
import 'package:flutter/material.dart';
import 'package:pregcare/baby/product.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class bbirth extends StatefulWidget {
  const bbirth({Key? key}) : super(key: key);

  @override
  _bbirthState createState() => _bbirthState();
}

class _bbirthState extends State<bbirth> {
  final List<Product> productList = [
    Product('assets/images/2.jpg', '2 weeks: Fertilization',
        "Ovulation releases an egg, fertilization within 12-24 hours leads to cell division in the fallopian tube, implantation in the uterus follows."),
    Product('assets/images/3.jpg', '3 weeks: Implantation',
        "A blastocyst, nestled in the uterine lining, signals the end of egg release by producing hCG, becoming the embryo precursor."),
    Product('assets/images/4.jpg', '4 Weeks Pregnent',
        "At 4 weeks, your ball of cells transforms into an embryo, the size of a poppy seed. A home pregnancy test may detect a positive result around your expected period."),
    Product('assets/images/5.jpg', '5 Weeks Pregnent',
        "Your growing baby, tadpole-like, forms its circulatory system. This week, cells in the tiny heart flicker, and it's the size of a sesame seed."),
    Product('assets/images/6.jpg', '6 Weeks Pregnent',
        "Your baby's nose, mouth and ears are starting to take shape, and their intestines and brain are beginning to develop. Your baby is the size of a lentil."),
    Product('assets/images/7.jpg', '7 Weeks Pregnent',
        "At the doubled size of a blueberry, your developing baby exhibits emerging hands and feet resembling paddles, while a temporary tail soon disappears."),
    Product('assets/images/8.jpg', '8 Weeks Pregnent',
        "The baby, now the size of a kidney bean, moves internally as nerve cells form primitive neural pathways and breathing tubes extend to developing lungs."),
    Product('assets/images/9.jpg', '9 Weeks Pregnent',
        "Basic anatomy forms, including tiny earlobes. The embryonic tail is gone, and at the size of a grape, your baby starts gaining weight rapidly."),
    Product('assets/images/10.jpg', '10 Weeks Pregnent',
        "The embryo completes crucial development. Limbs can bend, and details like nails form. Baby, now the size of a kumquat, grows in translucent skin."),
    Product('assets/images/11.jpg', '11 Weeks Pregnent',
        "At the size of a fig, your nearly fully formed baby is active, kicking, stretching, and even hiccupping as their diaphragm develops, though unfelt by you."),
    Product('assets/images/12.jpg', '12 Weeks Pregnent',
        "This week, your baby's reflexes emerge—fingers opening, toes curling, and the mouth making sucking motions. The baby's size is comparable to a lime."),
    Product('assets/images/13.jpg', '13 Weeks Pregnent',
        "In the final week of the first trimester, your baby's fingers develop fingerprints, organs show through the skin, and a girl has over 2 million eggs, pea pod-sized."),
    Product('assets/images/14.jpg', '14 Weeks Pregnent',
        "The baby, now the size of a lemon, exhibits brain impulses and facial muscle activity. Kidneys are functional, and ultrasound may capture thumb-sucking moments."),
    Product('assets/images/15.jpg', '15 Weeks Pregnent',
        "Fused eyelids but responsive to light, your apple-sized baby moves from a flashlight. Ultrasounds this week might reveal the baby's sex."),
    Product('assets/images/16.jpg', '16 Weeks Pregnent',
        "Baby's scalp patterning begins, legs develop, head upright, and ears near final position. Though not visible, the baby, the size of an avocado, undergoes significant growth."),
    Product('assets/images/17.jpg', '17 Weeks Pregnent',
        "The baby's joints move, and its cartilage skeleton is hardening to bone. The umbilical cord strengthens as your baby reaches turnip size."),
    Product('assets/images/18.jpg', '18 Weeks Pregnent',
        "Feeling your baby's movements as they flex arms and legs, while internally, myelin forms around nerves. The baby is now the size of a bell pepper."),
    Product('assets/images/19.jpg', '19 Weeks Pregnent',
        "Your baby's senses are developing; they can hear your voice. Engage by talking, singing, or reading aloud. The baby is the size of an heirloom tomato."),
    Product('assets/images/20.jpg', '20 Weeks Pregnent',
        "Baby can swallow, producing meconium in their digestive system. The size of a banana, they'll pass it either in the womb or post-birth."),
    Product('assets/images/21.jpg', '21 Weeks Pregnent',
        "Baby's flutters evolve into kicks and jabs, creating noticeable patterns. Becoming familiar with their activity as they grow to the size of a carrot."),
    Product('assets/images/22.jpg', '22 Weeks Pregnent',
        "Resembling a miniature newborn with distinct features, your baby lacks eye color pigment. At this stage, the baby is the size of a spaghetti squash."),
    Product('assets/images/23.jpg', '23 Weeks Pregnent',
        "Baby's ears develop to pick up sounds, potentially recognizing noises heard in the womb. At this stage, the baby is the size of a large mango."),
    Product('assets/images/24.jpg', '24 Weeks Pregnent',
        "Baby appears long and lean, with thin, translucent skin. Chubbier times ahead, as the baby, now the size of an ear of corn, undergoes transformations."),
    Product('assets/images/25.jpg', '25 Weeks Pregnent',
        "Baby's skin fills out with fat, resembling a newborn. Hair develops color and texture. The baby now weighs as much as an average rutabaga."),
    Product('assets/images/26.jpg', '26 Weeks Pregnent',
        "Breathing amniotic fluid, your baby practices for the first breath. At the size of scallions, lung development continues in preparation for birth."),
    Product('assets/images/27.jpg', '27 Weeks Pregnent',
        "Ending the second trimester, baby's rhythmic sleep-wake cycle develops. Lungs are immature but may function with medical support; size of cauliflower."),
    Product('assets/images/28.jpg', '28 Weeks Pregnent',
        "As your baby's eyesight develops, they blink and their eyelashes grow. At the size of a large eggplant, they sense light filtering in."),
    Product('assets/images/29.jpg', '29 Weeks Pregnent',
        "As your baby's muscles and lungs prepare for the outside world, their head grows to accommodate the developing brain. Size: butternut squash."),
    Product('assets/images/30.jpg', '30 Weeks Pregnent',
        "Surrounded by amniotic fluid, your baby, now the size of a large cabbage, will gradually claim more space in your uterus, reducing the fluid amount."),
    Product('assets/images/31.jpg', '31 Weeks Pregnent',
        "Your baby turns their head, and a fat layer fills out their arms and legs. At the size of a coconut, development continues."),
    Product('assets/images/32.jpg', '32 Weeks Pregnent',
        "Gaining about a pound weekly, half for your baby, preparing for life outside. The baby, now the size of a large jicama, readies for birth."),
    Product('assets/images/33.jpg', '33 Weeks Pregnent',
        "Baby's skull bones aren't fused, allowing flexibility during birth. They won't fully fuse until adulthood. Baby's current size is that of a pineapple."),
    Product('assets/images/34.jpg', '34 Weeks Pregnent',
        "At the size of a cantaloupe, your baby's developing central nervous system and lungs are maturing. Babies born between 34-37 weeks generally fare well."),
    Product('assets/images/35.jpg', '35 Weeks Pregnent',
        "In your snug womb, feel your active baby. Kidneys are developed, and the liver can process waste. Baby's size: honeydew melon."),
    Product('assets/images/36.jpg', '36 Weeks Pregnent',
        "At a daily ounce gain, your baby sheds lanugo hair and vernix caseosa. The size of a head of romaine lettuce marks development."),
    Product('assets/images/37.jpg', '37 Weeks Pregnent',
        "Approaching due date, your baby resembles a newborn but isn't full-term until 39 weeks. Over two weeks, lungs and brain mature, size of Swiss chard."),
    Product('assets/images/38.jpg', '38 Weeks Pregnent',
        "Curious about baby's eye color? Irises not fully pigmented at birth; eye color may change until about a year. Baby's size: leek."),
    Product('assets/images/39.jpg', '39 Weeks Pregnent',
        "Your baby's physical development is complete, but they're still busy putting on fat and growing bigger.Your baby is the size of a mini watermelon."),
    Product('assets/images/40.jpg', '40 Weeks Pregnent',
        "Past due date? Consider late ovulation. Provider monitors for safe pregnancy progression. Baby's size now matches a small pumpkin."),
    Product('assets/images/41.jpg', '41 Weeks Pregnent',
        "Late-term, exceeding two weeks past the due date poses risks. Induction may be discussed, possibly with a non-stress test monitoring baby's heart rate and contractions."),
  ];

  @override
  Widget build(BuildContext context) {
    final itemHeight = MediaQuery.of(context).size.height * 0.75;
    final itemWidth = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: itemHeight,
              child: ScrollSnapList(
                itemBuilder: (context, index) =>
                    _buildListItem(context, index, itemWidth, itemHeight),
                itemCount: productList.length,
                itemSize: itemWidth,
                onItemFocus: (index) {},
                dynamicItemSize: true,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(
      BuildContext context, int index, double itemWidth, double itemHeight) {
    final product = productList[index];

    return SizedBox(
      width: itemWidth,
      height: itemHeight,
      child: Card(
        elevation: 12,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                child: Image.asset(
                  product.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      product.title,
                      style: TextStyle(
                          fontSize: itemWidth * 0.080,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      product.desc,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: itemWidth * 0.065,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

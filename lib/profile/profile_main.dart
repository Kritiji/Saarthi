import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pregcare/widgets/m_dialogue.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final contactController = TextEditingController();
  final lastPeriodDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          "Saarthi",
          style: GoogleFonts.dancingScript(
              fontWeight: FontWeight.w900, fontSize: 28, color: Colors.white),
        ),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.list_outlined, color: Colors.white),
            onSelected: (value) {
              if (value == 'logout') {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return MyDialogue().logotDialogue(context);
                  },
                );
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'logout',
                  child: ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Logout'),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(120),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black54,
                  child: Ink.image(
                    image: NetworkImage(FirebaseAuth.instance.currentUser!.photoURL!),
                    height: 215,
                    width: 215,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(height: 10),
            Text(
              FirebaseAuth.instance.currentUser!.displayName!,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              FirebaseAuth.instance.currentUser!.email!,
              style: Theme.of(context).textTheme.bodySmall,
            ),

            Container(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: _editProfile,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  side: BorderSide.none,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            const Text(
              'User Details',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection('User').snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }
                  final userDocs = snapshot.data?.docs.toList();
                  return ListView.builder(
                    itemCount: userDocs?.length ?? 0,
                    itemBuilder: (context, index) {
                      final user = userDocs![index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Period Date: ${user['period date']}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Mobile: ${user['mobile']}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      // Delete the document from Firestore
                                      FirebaseFirestore.instance.collection('User').doc(user.id).delete();
                                    },
                                    icon: Icon(Icons.delete),
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                              Divider(color: Colors.grey),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void _editProfile() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Profile'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: contactController,
                decoration: InputDecoration(labelText: 'Contact Number'),
              ),
              TextField(
                controller: lastPeriodDateController,
                decoration: InputDecoration(labelText: 'Last Period Date'),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                // Save the data to the database
                CollectionReference collRef = FirebaseFirestore.instance.collection('User');
                collRef.add({
                    'mobile' : contactController.text,
                    'period date' : lastPeriodDateController.text,
                });
                // Close the dialog
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
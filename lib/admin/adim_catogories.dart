import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cosme/widget/big_text.dart';
import 'package:flutter/material.dart';

import '../widget/app_icon.dart';
import '../widget/small_text.dart';

// class Categories extends StatefulWidget {
//   const Categories({Key? key}) : super(key: key);
//
//   @override
//   State<Categories> createState() => _CategoriesState();
// }
//
// class _CategoriesState extends State<Categories> {
//   var myList = <String>[];
//   List<String> items = List<String>.generate(20, (i) => "items   $i");
//
//   // void _addItemToFirebase() async {
//   //   try {
//   //     // Add item to Firestore
//   //     await _firestore.collection('productone').doc('skincare').set({
//   //       'name': 'New Product',
//   //       'description': 'This is a new product added dynamically.',
//   //     });
//   //     // Update the UI
//   //     setState(() {
//   //       items.add('New Product'); // Add item to the local list
//   //     });
//   //   } catch (e) {
//   //     print('Error adding item to Firestore: $e');
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Catagories"),
//       ),
//       body: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.only(left: 20),
//             margin: EdgeInsets.only(left: 20),
//             width: 300,
//             height: 50,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: Colors.grey[100]),
//             child: Row(
//               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 SizedBox(
//                   width: 10,
//                 ),
//                 AppIcon(
//                   icon: Icons.search,
//                   background: Colors.white,
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 SmallText(
//                   text: 'Search Product',
//                   color: Colors.grey[400],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: items.length,
//               itemBuilder: (BuildContext context, int index) {
//                 final item = items[index];
//                 return Dismissible(
//                     key: Key(item),
//                     direction: DismissDirection.endToStart,
//                     background: const Card(
//                       color: Colors.red,
//                       margin: EdgeInsets.only(
//                         left: 200,
//                       ),
//                       child: Icon(
//                         Icons.delete,
//                       ),
//                     ),
//                     onDismissed: (direction) {
//                       setState(() {
//                         items.removeAt(index);
//                       });
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         width: 400,
//                         child: ListTile(
//                           onTap: () {
//                             print(index);
//                           },
//                           title: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Container(
//                                 width: 250,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: Colors.pinkAccent,
//                                 ),
//                                 child: Text(
//                                   items[index],
//                                   style: const TextStyle(
//                                     color: Colors.blue,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 25,
//                                   ),
//                                 ),
//                               ),
//                               IconButton(
//                                 icon: Icon(Icons.edit),
//                                 onPressed: () {
//                                   // Handle edit action here
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ));
//               },
//             ),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // _addItemToFirebase();
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  var myList = <String>[];
  List<String> regionDataList = [];
  // List<String> items = List<String>.generate(20, (i) => "items   $i");
  TextEditingController regionNameController = TextEditingController();

  Future<void> addRegion(String regionName) async {
    //check if the region name already exist in regionDatalist
    if (regionDataList.contains(regionName)) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('Region name already exists'),
              actions: <Widget>[
                TextButton(
                  child: Text('Ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
      return;
    }
    // Define a regular expression pattern to match only alphabets and spaces
    final RegExp alphabetsPattern = RegExp(r'^[A-Za-z\s]+$');
    if (!alphabetsPattern.hasMatch(regionName)) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text(
                'Region name should consist of alphabets. number and special character  are not allowed'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
      return; // Exit the function if the constraint is not met
    }

    try {
      await FirebaseFirestore.instance
          .collection('Product')
          .doc(regionName)
          .set({
        'name': regionName,
        // You can add more fields if needed
      });

      // Add the new region to the UI
      setState(() {
        regionDataList.add(regionName);
      });

      // Clear the text field after adding the region
      regionNameController.clear();
      // Show a success message using AlertDialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Success'),
            content: Text('Region added successfully!'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } catch (e) {
      // Handle errors here.
      print('Error adding region: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catagories"),
      ),
      body: Column(
        children: [
          TextField(
            controller: regionNameController,
            decoration: InputDecoration(
              hintText: 'Enter region name',
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: IconButton(
              icon: Icon(Icons.add, color: Colors.white),
              onPressed: () {
                String regionName = regionNameController.text.trim();
                if (regionName.isNotEmpty) {
                  addRegion(regionName);
                }
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.only(left: 20),
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[100]),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10,
                ),
                AppIcon(
                  icon: Icons.search,
                  background: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                SmallText(
                  text: 'Search Product',
                  color: Colors.grey[400],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: regionDataList.length,
              itemBuilder: (BuildContext context, int index) {
                final regionName = regionDataList[index];
                return Dismissible(
                    key: Key(regionName),
                    direction: DismissDirection.endToStart,
                    background: const Card(
                      color: Colors.red,
                      margin: EdgeInsets.only(
                        left: 200,
                      ),
                      child: Icon(
                        Icons.delete,
                      ),
                    ),
                    onDismissed: (direction) {
                      setState(() {
                        regionDataList.removeAt(index);
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 400,
                        child: ListTile(
                          onTap: () {
                            print(index);
                          },
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.pinkAccent,
                                ),
                                child: Text(
                                  regionDataList[index],
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.edit),
                                onPressed: () {
                                  // Handle edit action here
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ));
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _addItemToFirebase();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

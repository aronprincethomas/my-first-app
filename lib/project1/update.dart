import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UpdateDonor extends StatefulWidget {
  const UpdateDonor({super.key});

  @override
  State<UpdateDonor> createState() => _UpdateDonorState();
}

class _UpdateDonorState extends State<UpdateDonor> {

  final bloodGroups = ['A+','A-','B+','B-','O+','O-','AB+','AB-'];
  String? selectedGroup;
  final CollectionReference donor = FirebaseFirestore.instance.collection('donor');

  TextEditingController donorName = TextEditingController();
  TextEditingController donorPhone = TextEditingController();
  late String docId;

  @override
  void initState() {
    super.initState();
    // Delays getting route arguments until after widget is loaded
    Future.delayed(Duration.zero, () {
      final args = ModalRoute.of(context)!.settings.arguments as Map;
      setState(() {
        donorName.text = args['name'];
        donorPhone.text = args['phone'];
        selectedGroup = args['group'];
        docId = args['id'];
      });
    });
  }

  void updateDonor(docId){
    final data = {
      'name' : donorName.text,
      'phone' : donorPhone.text,
      'group' : selectedGroup,
    };
    donor.doc(docId).update(data);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Update Donors"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: donorName,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Donor Name"),
                  ),
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: donorPhone,
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Phone Number"),
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                value: selectedGroup,
                decoration: InputDecoration(
                  label: Text("Select Blood Group"),
                ),
                items: bloodGroups.map((e) => DropdownMenuItem(child: Text(e),value: e,)).toList(), 
                onChanged: (val){
                setState(() {
                  selectedGroup = val;
                });
                }
              ),
            ),

            ElevatedButton(
              onPressed: (){
                updateDonor(docId);
                Navigator.pop(context);
              }, 
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.all(Size(double.infinity, 50)),
                backgroundColor: WidgetStateProperty.all(Colors.red)
              ),
              child: Text("Update", style: TextStyle(fontSize: 20, color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
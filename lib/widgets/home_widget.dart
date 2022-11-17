import 'package:contactlist/providers/contact_provider.dart';
import 'package:contactlist/screens/contact_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  void initState(){
    // ignore: todo
    //TODO: implement initState
  super.initState();
  getContact();
  }
  getContact() async => await context.read<ContactProvider>().fetchContact();
  @override
  Widget build(BuildContext context) {
    var contactlist = Provider.of<ContactProvider>(context).apiContacts;
    return SafeArea(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(height: 20.0,),
          //this renders the search input
          const Padding(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search contacts ...",
                suffixIcon: Icon(Icons.search_rounded)
              ),
            ),
          ),

      const SizedBox(height: 10.0,),

      Expanded(
        child: ListView(
          children: contactlist.map((eachModel){
            return ListTile(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context){
                  return const ContactScreen();
                }));
                
              },
      //           Navigator.push(context, CupertinoPageRoute(builder: (context){
      //             return const ContactScreen(); ,
              leading: Image.asset("assets/images/add-user.png", height: 45.0,),
              title: Text(eachModel.name),
              subtitle: Text(eachModel.phonenumber),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            );
          }
          ).toList(),
        ))

      //this will render a list of contacts

      // Expanded(
      //   child: ListView.builder(
      //     itemCount: contactlist.length,
      //     itemBuilder: (context, index){
      //       return ListTile(
      //         onTap: () {
      //           Navigator.push(context, CupertinoPageRoute(builder: (context){
      //             return const ContactScreen();
      //           }));
                
      //         },
      //         contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 5.0),
      //         leading: Image.asset("assets/images/add-user.png", height: 45.0,),
      //         title:  Text( contactlist[index].name, style: const TextStyle(fontSize: 20.0),),
      //         subtitle:  Text(contactlist[index].phonenumber),
      //         trailing: const Icon(Icons.arrow_forward_ios),
      //         // trailing: DropdownButton(
      //         //   items: const [DropdownMenuItem(child: Text("View Contact"))
      //         //   ], 
      //         //   onChanged: (value){}),
      
      //       );
      //     }),
      // )


        ],
      )
    );
  }
}